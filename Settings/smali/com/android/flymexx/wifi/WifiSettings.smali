.class public Lcom/android/flymexx/wifi/WifiSettings;
.super Lcom/android/flymexx/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/flymexx/search/Indexable;
.implements Lcom/android/flymexxlib/wifi/WifiTracker$WifiListener;
.implements Lcom/android/flymexxlib/wifi/AccessPoint$AccessPointListener;
.implements Lcom/android/flymexx/wifi/WifiDialog$WifiDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/wifi/WifiSettings$1;,
        Lcom/android/flymexx/wifi/WifiSettings$2;,
        Lcom/android/flymexx/wifi/WifiSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAddPreference:Landroid/support/v7/preference/Preference;

.field private mBgThread:Landroid/os/HandlerThread;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mDialog:Lcom/android/flymexx/wifi/WifiDialog;

.field private mDialogMode:I

.field private mDlgAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

.field private mEnableNextOnConnection:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mOpenSsid:Ljava/lang/String;

.field private mProgressHeader:Landroid/widget/ProgressBar;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mScanMenuItem:Landroid/view/MenuItem;

.field private mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

.field private mUserBadgeCache:Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;

.field private mWifiEnabler:Lcom/android/flymexx/wifi/WifiEnabler;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNfcDialogSavedState:Landroid/os/Bundle;

.field private mWifiToNfcDialog:Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog;

.field private mWifiTracker:Lcom/android/flymexxlib/wifi/WifiTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/flymexx/wifi/WifiSettings$1;

    invoke-direct {v0}, Lcom/android/flymexx/wifi/WifiSettings$1;-><init>()V

    sput-object v0, Lcom/android/flymexx/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/android/flymexx/wifi/WifiSettings$2;

    invoke-direct {v0}, Lcom/android/flymexx/wifi/WifiSettings$2;-><init>()V

    sput-object v0, Lcom/android/flymexx/wifi/WifiSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/flymexx/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    return-void
.end method

.method static canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 12

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-nez p1, :cond_0

    return v10

    :cond_0
    const-string/jumbo v11, "device_policy"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v11, "android.software.device_admin"

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    if-nez v3, :cond_1

    return v9

    :cond_1
    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v2

    :try_start_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v11, :cond_3

    const/4 v5, 0x1

    :cond_2
    :goto_0
    if-nez v5, :cond_4

    return v10

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v11, "wifi_device_owner_configs_lockdown"

    invoke-static {v8, v11, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_5

    move v6, v10

    :goto_1
    if-eqz v6, :cond_6

    :goto_2
    return v9

    :cond_5
    move v6, v9

    goto :goto_1

    :cond_6
    move v9, v10

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private changeNextButtonState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method static isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/flymexx/wifi/WifiSettings;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPasspointWifi(Lcom/android/flymexxlib/wifi/AccessPoint;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/flymexxlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/flymexxlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private setOffMessage()V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->isAdded()Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v5, "WifiSettings"

    const-string/jumbo v6, "Fragment has not yet been added to Activity."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->isUiRestricted()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v5

    if-nez v5, :cond_1

    const v5, 0x7f0c0540

    invoke-direct {p0, v5}, Lcom/android/flymexx/wifi/WifiSettings;->addMessagePreference(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    const v6, 0x7f0c053e

    invoke-virtual {p0, v6}, Lcom/android/flymexx/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "wifi_scan_always_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_4

    :goto_0
    if-nez v4, :cond_5

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    return-void

    :cond_4
    move v4, v5

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\n\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f0c0522

    invoke-virtual {p0, v5}, Lcom/android/flymexx/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/android/flymexx/wifi/WifiSettings$7;

    invoke-direct {v5, p0}, Lcom/android/flymexx/wifi/WifiSettings$7;-><init>(Lcom/android/flymexx/wifi/WifiSettings;)V

    invoke-static {v2, v1, v5}, Lcom/android/flymexx/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/flymexx/LinkifyUtils$OnClickListener;)Z

    goto :goto_1
.end method

.method private showDialog(Lcom/android/flymexxlib/wifi/AccessPoint;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/flymexxlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/flymexx/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/flymexxlib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/flymexxlib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/flymexxlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mDialog:Lcom/android/flymexx/wifi/WifiDialog;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/flymexx/wifi/WifiSettings;->removeDialog(I)V

    iput-object v2, p0, Lcom/android/flymexx/wifi/WifiSettings;->mDialog:Lcom/android/flymexx/wifi/WifiDialog;

    :cond_1
    iput-object p1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    iput p2, p0, Lcom/android/flymexx/wifi/WifiSettings;->mDialogMode:I

    invoke-virtual {p0, v3}, Lcom/android/flymexx/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiTracker:Lcom/android/flymexxlib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/flymexxlib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x6

    const v2, 0x7f0c09b1

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v1, 0x5

    const v2, 0x7f0c0537

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v1, 0xb

    const v2, 0x7f0c0538

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200fd

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x87

    invoke-static {v0, v1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method createWifiEnabler()Lcom/android/flymexx/wifi/WifiEnabler;
    .locals 3

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    new-instance v1, Lcom/android/flymexx/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/flymexx/SettingsActivity;->getSwitchBar()Lcom/android/flymexx/widget/SwitchBar;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/flymexx/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/flymexx/widget/SwitchBar;)V

    return-object v1
.end method

.method forget()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x89

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/flymexxlib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/flymexxlib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/flymexxlib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/flymexxlib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/flymexxlib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiTracker:Lcom/android/flymexxlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/flymexxlib/wifi/WifiTracker;->resumeScanning()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/flymexx/wifi/WifiSettings;->changeNextButtonState(Z)V

    return-void

    :cond_0
    const-string/jumbo v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/flymexxlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/flymexxlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v2, p0, Lcom/android/flymexx/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0c0b9f

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x67

    return v0
.end method

.method public onAccessPointChanged(Lcom/android/flymexxlib/wifi/AccessPoint;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/flymexx/wifi/WifiSettings$8;

    invoke-direct {v1, p0, p1}, Lcom/android/flymexx/wifi/WifiSettings$8;-><init>(Lcom/android/flymexx/wifi/WifiSettings;Lcom/android/flymexxlib/wifi/AccessPoint;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized onAccessPointsChanged()V
    .locals 17

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/WifiSettings;->isUiRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/WifiSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v3

    if-nez v3, :cond_1

    const v3, 0x7f0c0540

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/flymexx/wifi/WifiSettings;->addMessagePreference(I)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v16

    packed-switch v16, :pswitch_data_0

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiTracker:Lcom/android/flymexxlib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/flymexxlib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/flymexx/wifi/WifiSettings;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v12, v11

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/flymexxlib/wifi/AccessPoint;->getLevel()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_a

    invoke-virtual {v2}, Lcom/android/flymexxlib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/android/flymexxlib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v13

    :cond_4
    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/flymexx/wifi/WifiSettings;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;

    if-eqz v15, :cond_5

    add-int/lit8 v11, v12, 0x1

    invoke-virtual {v15, v12}, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;->setOrder(I)V

    :goto_2
    move v12, v11

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v5, 0x0

    const v6, 0x7f020141

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/flymexxlib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;ZILandroid/app/Fragment;)V

    invoke-virtual {v1, v13}, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    add-int/lit8 v11, v12, 0x1

    invoke-virtual {v1, v12}, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/flymexxlib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/android/flymexxlib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/flymexxlib/wifi/AccessPoint;->setListener(Lcom/android/flymexxlib/wifi/AccessPoint$AccessPointListener;)V

    invoke-virtual {v1}, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;->refresh()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_7
    :try_start_4
    invoke-virtual {v2}, Lcom/android/flymexxlib/wifi/AccessPoint;->getSecurity()I

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/flymexx/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/flymexx/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    goto :goto_3

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/flymexx/wifi/WifiSettings;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    if-nez v10, :cond_9

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/flymexx/wifi/WifiSettings;->setProgressBarVisible(Z)V

    new-instance v14, Lcom/android/flymexx/wifi/WifiSettings$6;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Lcom/android/flymexx/wifi/WifiSettings$6;-><init>(Lcom/android/flymexx/wifi/WifiSettings;Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    const v3, 0x7f0c053f

    invoke-virtual {v14, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    const-string/jumbo v3, "wifi_empty_list"

    invoke-virtual {v14, v3}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move v11, v12

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    add-int/lit8 v11, v12, 0x1

    invoke-virtual {v3, v12}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/flymexx/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_4

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/flymexx/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto/16 :goto_0

    :pswitch_2
    const v3, 0x7f0c0514

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/flymexx/wifi/WifiSettings;->addMessagePreference(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/flymexx/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/wifi/WifiSettings;->setOffMessage()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/flymexx/wifi/WifiSettings;->setProgressBarVisible(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_a
    move v11, v12

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/flymexx/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/flymexxlib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/flymexxlib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/flymexxlib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiTracker:Lcom/android/flymexxlib/wifi/WifiTracker;

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiTracker:Lcom/android/flymexxlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/flymexxlib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/android/flymexx/wifi/WifiSettings$3;

    invoke-direct {v0, p0}, Lcom/android/flymexx/wifi/WifiSettings$3;-><init>(Lcom/android/flymexx/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v0, Lcom/android/flymexx/wifi/WifiSettings$4;

    invoke-direct {v0, p0}, Lcom/android/flymexx/wifi/WifiSettings$4;-><init>(Lcom/android/flymexx/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v0, Lcom/android/flymexx/wifi/WifiSettings$5;

    invoke-direct {v0, p0}, Lcom/android/flymexx/wifi/WifiSettings$5;-><init>(Lcom/android/flymexx/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    if-eqz p1, :cond_1

    const-string/jumbo v0, "dialog_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mDialogMode:I

    const-string/jumbo v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    :cond_0
    const-string/jumbo v0, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    :cond_1
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v0, "wifi_enable_next_on_connect"

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mEnableNextOnConnection:Z

    iget-boolean v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    if-eqz v7, :cond_2

    invoke-virtual {v7, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/flymexx/wifi/WifiSettings;->changeNextButtonState(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0, v4}, Lcom/android/flymexx/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    const-string/jumbo v0, "wifi_start_connect_ssid"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "wifi_start_connect_ssid"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->onAccessPointsChanged()V

    :cond_3
    return-void
.end method

.method onAddNetworkPressed()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x86

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/flymexx/wifi/WifiSettings;->showDialog(Lcom/android/flymexxlib/wifi/AccessPoint;I)V

    return-void
.end method

.method public onConnectedChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiTracker:Lcom/android/flymexxlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/flymexxlib/wifi/WifiTracker;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/flymexx/wifi/WifiSettings;->changeNextButtonState(Z)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/flymexx/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/flymexx/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/flymexxlib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/flymexxlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/flymexx/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    :goto_0
    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/flymexxlib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/flymexxlib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/flymexxlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/flymexx/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-direct {p0, v1, v3}, Lcom/android/flymexx/wifi/WifiSettings;->showDialog(Lcom/android/flymexxlib/wifi/AccessPoint;I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->forget()V

    return v3

    :pswitch_3
    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/flymexx/wifi/WifiSettings;->showDialog(Lcom/android/flymexxlib/wifi/AccessPoint;I)V

    return v3

    :pswitch_4
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/flymexx/wifi/WifiSettings;->showDialog(I)V

    return v3

    :pswitch_5
    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/flymexx/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/android/flymexx/wifi/WifiSettings;->addPreferencesFromResource(I)V

    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f0c0530

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    new-instance v0, Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "WifiSettings"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    instance-of v3, v2, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;

    if-eqz v3, :cond_5

    check-cast v2, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;

    invoke-virtual {v2}, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/flymexxlib/wifi/AccessPoint;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/flymexxlib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/flymexxlib/wifi/AccessPoint;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    const v4, 0x7f0c0539

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/flymexxlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/flymexx/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/flymexxlib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/flymexxlib/wifi/AccessPoint;->isEphemeral()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/16 v3, 0x8

    const v4, 0x7f0c053b

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_3
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/flymexxlib/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xc

    const v4, 0x7f0c0e8c

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_4
    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/flymexxlib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x9

    const v4, 0x7f0c053c

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/flymexxlib/wifi/AccessPoint;->getSecurity()I

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xa

    const v4, 0x7f0c053d

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_5
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/flymexx/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v3, Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/flymexxlib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/android/flymexx/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    iput-object v2, p0, Lcom/android/flymexx/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    :cond_0
    iput-object v3, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/flymexxlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    :cond_1
    if-nez v6, :cond_3

    invoke-direct {p0, v3}, Lcom/android/flymexx/wifi/WifiSettings;->isPasspointWifi(Lcom/android/flymexxlib/wifi/AccessPoint;)Z

    move-result v6

    :goto_0
    const-string/jumbo v1, "WifiSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Passpoint hotspot ? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/android/flymexx/wifi/WifiSettings;->isPasspointWifi(Lcom/android/flymexxlib/wifi/AccessPoint;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "yes"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/flymexx/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v6, :cond_2

    move-object v3, v2

    :cond_2
    iget v4, p0, Lcom/android/flymexx/wifi/WifiSettings;->mDialogMode:I

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/flymexx/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/flymexx/wifi/WifiDialog$WifiDialogListener;Lcom/android/flymexxlib/wifi/AccessPoint;IZ)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mDialog:Lcom/android/flymexx/wifi/WifiDialog;

    :goto_2
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mDialog:Lcom/android/flymexx/wifi/WifiDialog;

    return-object v0

    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "no"

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/android/flymexx/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v4, p0, Lcom/android/flymexx/wifi/WifiSettings;->mDialogMode:I

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/flymexx/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/flymexx/wifi/WifiDialog$WifiDialogListener;Lcom/android/flymexxlib/wifi/AccessPoint;IZ)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mDialog:Lcom/android/flymexx/wifi/WifiDialog;

    goto :goto_2

    :pswitch_2
    new-instance v0, Lcom/android/flymexx/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/flymexx/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/android/flymexx/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/android/flymexx/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/flymexxlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v4, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/flymexxlib/wifi/AccessPoint;->getSecurity()I

    move-result v4

    iget-object v5, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;IILandroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog;

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1, v2, v4}, Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/flymexx/wifi/WifiSettings;->addOptionsMenuItems(Landroid/view/Menu;)V

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-super {p0}, Lcom/android/flymexx/RestrictedSettingsFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/RestrictedSettingsFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiEnabler:Lcom/android/flymexx/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiEnabler:Lcom/android/flymexx/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/flymexx/wifi/WifiEnabler;->teardownSwitchBar()V

    :cond_0
    return-void
.end method

.method public onForget(Lcom/android/flymexx/wifi/WifiDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->forget()V

    return-void
.end method

.method public onLevelChanged(Lcom/android/flymexxlib/wifi/AccessPoint;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/flymexxlib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;

    invoke-virtual {v0}, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;->onLevelChanged()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11

    const v3, 0x7f0c0591

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return v6

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/flymexx/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/flymexx/wifi/WifiSettings;->showDialog(I)V

    return v10

    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/flymexx/wifi/WifiSettings;->showDialog(I)V

    return v10

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x88

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiTracker:Lcom/android/flymexxlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/flymexxlib/wifi/WifiTracker;->forceScan()V

    return v10

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/flymexx/SettingsActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    const-class v1, Lcom/android/flymexx/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/flymexx/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    return v10

    :cond_1
    const-class v0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/flymexx/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/flymexx/SettingsActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    const-class v1, Lcom/android/flymexx/wifi/ConfigureWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0592

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/flymexx/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    return v10

    :cond_2
    const-class v0, Lcom/android/flymexx/wifi/ConfigureWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0c0592

    move-object v4, p0

    move-object v5, p0

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/flymexx/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/RestrictedSettingsFragment;->onPause()V

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiEnabler:Lcom/android/flymexx/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiEnabler:Lcom/android/flymexx/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/flymexx/wifi/WifiEnabler;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiTracker:Lcom/android/flymexxlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/flymexxlib/wifi/WifiTracker;->stopTracking()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;

    invoke-virtual {p1}, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/flymexxlib/wifi/AccessPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/flymexxlib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/flymexxlib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/flymexxlib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-direct {p0, v0, v1}, Lcom/android/flymexx/wifi/WifiSettings;->showDialog(Lcom/android/flymexxlib/wifi/AccessPoint;I)V

    :goto_0
    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/flymexxlib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/flymexxlib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/flymexxlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/flymexx/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-direct {p0, v0, v2}, Lcom/android/flymexx/wifi/WifiSettings;->showDialog(Lcom/android/flymexxlib/wifi/AccessPoint;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->onAddNetworkPressed()V

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Lcom/android/flymexx/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-super {p0}, Lcom/android/flymexx/RestrictedSettingsFragment;->onResume()V

    const-string/jumbo v1, "dummy"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/wifi/WifiSettings;->removePreference(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiEnabler:Lcom/android/flymexx/wifi/WifiEnabler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiEnabler:Lcom/android/flymexx/wifi/WifiEnabler;

    invoke-virtual {v1, v0}, Lcom/android/flymexx/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiTracker:Lcom/android/flymexxlib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/flymexxlib/wifi/WifiTracker;->startTracking()V

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/flymexx/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mDialog:Lcom/android/flymexx/wifi/WifiDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mDialog:Lcom/android/flymexx/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/flymexx/wifi/WifiDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "dialog_mode"

    iget v2, p0, Lcom/android/flymexx/wifi/WifiSettings;->mDialogMode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/flymexx/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/flymexxlib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    const-string/jumbo v1, "wifi_ap_state"

    iget-object v2, p0, Lcom/android/flymexx/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1}, Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1, v0}, Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog;->saveState(Landroid/os/Bundle;)V

    const-string/jumbo v1, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/RestrictedSettingsFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->createWifiEnabler()Lcom/android/flymexx/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiEnabler:Lcom/android/flymexx/wifi/WifiEnabler;

    return-void
.end method

.method public onSubmit(Lcom/android/flymexx/wifi/WifiDialog;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mDialog:Lcom/android/flymexx/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mDialog:Lcom/android/flymexx/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/flymexx/wifi/WifiDialog;->getController()Lcom/android/flymexx/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/wifi/WifiSettings;->submit(Lcom/android/flymexx/wifi/WifiConfigController;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/RestrictedSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f04019b

    invoke-virtual {p0, v1}, Lcom/android/flymexx/wifi/WifiSettings;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    :cond_0
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f0c0513

    invoke-direct {p0, v0}, Lcom/android/flymexx/wifi/WifiSettings;->addMessagePreference(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/flymexx/wifi/WifiSettings;->setOffMessage()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setProgressBarVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method submit(Lcom/android/flymexx/wifi/WifiConfigController;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/flymexx/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/flymexxlib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/flymexxlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/flymexx/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiTracker:Lcom/android/flymexxlib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/flymexxlib/wifi/WifiTracker;->resumeScanning()V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/flymexx/wifi/WifiConfigController;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/flymexx/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0
.end method
