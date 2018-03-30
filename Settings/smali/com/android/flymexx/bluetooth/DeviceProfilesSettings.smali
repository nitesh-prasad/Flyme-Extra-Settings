.class public final Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;
.super Landroid/app/DialogFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice$Callback;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mAutoConnectPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;",
            "Landroid/support/v7/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

.field private mProfileContainer:Landroid/view/ViewGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileLabel:Landroid/widget/TextView;

.field private mProfileManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

.field private mRootView:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Landroid/widget/CheckBox;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;Landroid/widget/CheckBox;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mAutoConnectPrefs:Ljava/util/HashMap;

    return-void
.end method

.method private addPreferencesForProfiles()V
    .locals 12

    iget-object v9, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v9, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;

    instance-of v9, v6, Lcom/android/flymexxlib/bluetooth/PbapServerProfile;

    if-nez v9, :cond_1

    instance-of v9, v6, Lcom/android/flymexxlib/bluetooth/MapProfile;

    :goto_1
    if-nez v9, :cond_0

    invoke-direct {p0, v6}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v5

    iget-object v9, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v3

    const-string/jumbo v9, "DeviceProfilesSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "addPreferencesForProfiles: pbapPermission = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3

    iget-object v9, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v9}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/flymexxlib/bluetooth/PbapServerProfile;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v4

    iget-object v9, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v9, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v9}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->getMapProfile()Lcom/android/flymexxlib/bluetooth/MapProfile;

    move-result-object v2

    iget-object v9, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v0

    const-string/jumbo v9, "DeviceProfilesSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "addPreferencesForProfiles: mapPermission = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    invoke-direct {p0, v2}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v9, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    invoke-direct {p0}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    return-void
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)V
    .locals 8

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const v6, 0x7f0c033d

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f0c033a

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const v7, 0x7f0c033b

    invoke-virtual {p1, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)V

    iget-object v6, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {p1, v6, v1, v5, v7}, Lcom/android/flymexx/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private createProfilePreference(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;
    .locals 2

    new-instance v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0, p1}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)V

    return-object v0
.end method

.method private findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method private getProfileOf(Landroid/view/View;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;
    .locals 4

    const/4 v3, 0x0

    instance-of v2, p1, Landroid/widget/CheckBox;

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v3

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2, v1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    return-object v3
.end method

.method private onProfileClicked(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;Landroid/widget/CheckBox;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)V

    :goto_0
    return-void

    :cond_0
    instance-of v1, p1, Lcom/android/flymexxlib/bluetooth/MapProfile;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    :cond_1
    instance-of v1, p1, Lcom/android/flymexxlib/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    invoke-direct {p0, p2, p1}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)V

    return-void

    :cond_2
    invoke-interface {p1, v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, p1, Lcom/android/flymexxlib/bluetooth/PanProfile;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)V

    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_1

    :cond_4
    invoke-interface {p1, v0, v2}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1
.end method

.method private refresh()V
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v2, 0x7f11011b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    return-void
.end method

.method private refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    instance-of v1, p2, Lcom/android/flymexxlib/bluetooth/MapProfile;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v1

    if-ne v1, v3, :cond_1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    instance-of v1, p2, Lcom/android/flymexxlib/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v1

    if-ne v1, v3, :cond_3

    :goto_3
    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_3

    :cond_4
    instance-of v1, p2, Lcom/android/flymexxlib/bluetooth/PanProfile;

    if-eqz v1, :cond_6

    invoke-interface {p2, v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    :goto_4
    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_5
    move v3, v2

    goto :goto_4

    :cond_6
    invoke-interface {p2, v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method private refreshProfiles()V
    .locals 8

    iget-object v5, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-direct {p0, v2}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v4

    iget-object v5, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4, v2}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v4

    if-eqz v4, :cond_2

    instance-of v5, v2, Lcom/android/flymexxlib/bluetooth/PbapServerProfile;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v1

    const-string/jumbo v5, "DeviceProfilesSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "refreshProfiles: pbapPermission = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_2

    :cond_3
    instance-of v5, v2, Lcom/android/flymexxlib/bluetooth/MapProfile;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v0

    const-string/jumbo v5, "DeviceProfilesSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "refreshProfiles: mapPermission = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    :cond_4
    const-string/jumbo v5, "DeviceProfilesSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Removing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " from profile list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mProfileLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mProfileLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f11011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->unpair()V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/flymexx/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c04ac

    invoke-virtual {p0, v3}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020104

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/flymexx/bluetooth/Utils;->updateSearchIndex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    instance-of v1, p1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroid/view/View;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-direct {p0, v0, p1}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;Landroid/widget/CheckBox;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "DeviceProfilesSettings"

    const-string/jumbo v2, "Error: Can\'t get the profile for the preference"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/flymexx/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    iget-object v3, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "device_address"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    iget-object v3, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    :cond_0
    iget-object v3, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04006e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v2, 0x7f11011e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v2, 0x7f11011d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mProfileLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v2, 0x7f11011b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c03bd

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c03bc

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c04ca

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice$Callback;)V

    :cond_1
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->refresh()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice$Callback;)V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->dismiss()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    invoke-direct {p0}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->refresh()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
