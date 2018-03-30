.class public final Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;
.super Landroid/support/v7/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice$Callback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sDimAlpha:I


# instance fields
.field public final BLUETOOTH:Ljava/lang/String;

.field public final COMPUTER:Ljava/lang/String;

.field public final HEADPHONE:Ljava/lang/String;

.field public final HEADSET:Ljava/lang/String;

.field public final IMAGING:Ljava/lang/String;

.field public final INPUT_PERIPHERAL:Ljava/lang/String;

.field public final PHONE:Ljava/lang/String;

.field private contentDescription:Ljava/lang/String;

.field private final mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;

.field r:Landroid/content/res/Resources;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, -0x80000000

    sput v0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->r:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->r:Landroid/content/res/Resources;

    const v3, 0x7f0c0e80

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->COMPUTER:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->r:Landroid/content/res/Resources;

    const v3, 0x7f0c0e85

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->INPUT_PERIPHERAL:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->r:Landroid/content/res/Resources;

    const v3, 0x7f0c0e81

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->HEADSET:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->r:Landroid/content/res/Resources;

    const v3, 0x7f0c0e82

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->PHONE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->r:Landroid/content/res/Resources;

    const v3, 0x7f0c0e83

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->IMAGING:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->r:Landroid/content/res/Resources;

    const v3, 0x7f0c0e84

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->HEADPHONE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->r:Landroid/content/res/Resources;

    const v3, 0x7f0c0e86

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->BLUETOOTH:Ljava/lang/String;

    sget v2, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    :cond_0
    iput-object p2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    const v2, 0x7f0400c6

    invoke-virtual {p0, v2}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->setLayoutResource(I)V

    invoke-virtual {p2}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "user"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    const-string/jumbo v2, "no_config_bluetooth"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f0400c5

    invoke-virtual {p0, v2}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2, p0}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice$Callback;)V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    return-void
.end method

.method private askDisconnect()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f0c033d

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const v6, 0x7f0c0335

    invoke-virtual {v0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0c0334

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v1, p0}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;)V

    iget-object v5, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-static {v0, v5, v1, v4, v6}, Lcom/android/flymexx/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private getBtClassDrawableWithDescription()Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    iget-object v5, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;

    invoke-interface {v1, v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v5, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :sswitch_0
    new-instance v5, Landroid/util/Pair;

    const v6, 0x7f0200aa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->COMPUTER:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :sswitch_1
    new-instance v5, Landroid/util/Pair;

    const v6, 0x7f0200a6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->PHONE:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :sswitch_2
    new-instance v5, Landroid/util/Pair;

    invoke-static {v0}, Lcom/android/flymexxlib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->INPUT_PERIPHERAL:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :sswitch_3
    new-instance v5, Landroid/util/Pair;

    const v6, 0x7f0200a9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->IMAGING:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_1
    const-string/jumbo v5, "BluetoothDevicePreference"

    const-string/jumbo v6, "mBtClass is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Landroid/util/Pair;

    const v6, 0x7f0200a7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->HEADPHONE:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_3
    invoke-virtual {v0, v8}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Landroid/util/Pair;

    const v6, 0x7f0200a8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->HEADSET:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_4
    new-instance v5, Landroid/util/Pair;

    const v6, 0x7f020104

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->BLUETOOTH:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x500 -> :sswitch_2
        0x600 -> :sswitch_3
    .end sparse-switch
.end method

.method private pair()V
    .locals 5

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->startPairing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c0056

    invoke-static {v2, v3, v4}, Lcom/android/flymexx/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/flymexx/search/SearchIndexableRaw;

    invoke-direct {v1, v0}, Lcom/android/flymexx/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/flymexx/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/flymexx/search/SearchIndexableRaw;->className:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/flymexx/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/flymexx/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const v2, 0x7f020104

    iput v2, v1, Lcom/android/flymexx/search/SearchIndexableRaw;->iconResId:I

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/flymexx/search/SearchIndexableRaw;->enabled:Z

    invoke-static {v0}, Lcom/android/flymexx/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/flymexx/search/Index;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/flymexx/search/Index;->updateFromSearchIndexableData(Landroid/provider/SearchIndexableData;)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/support/v7/preference/Preference;)I
    .locals 2

    instance-of v0, p1, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;

    iget-object v1, p1, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;

    iget-object v1, p1, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getCachedDevice()Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    const-string/jumbo v2, "bt_checkbox"

    invoke-virtual {p0, v2}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "bt_checkbox"

    invoke-virtual {p0, v2}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    const v2, 0x7f1101b1

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_1
    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->contentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method onClicked()V
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->askDisconnect()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->pair()V

    goto :goto_0
.end method

.method public onDeviceAttributesChanged()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->setSummary(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->getBtClassDrawableWithDescription()Landroid/util/Pair;

    move-result-object v0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->setIcon(I)V

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->contentDescription:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected onPrepareForRemoval()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onPrepareForRemoval()V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice$Callback;)V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method rebind()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->notifyChanged()V

    return-void
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
