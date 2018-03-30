.class public Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final DOZE_MAPPING:[I

.field private static final EXPANDED_DESKTOP_MAPPING:[I

.field private static final LOCKMODE_MAPPING:[I

.field private static final NOTIFICATION_LIGHT_MAPPING:[I


# instance fields
.field mAdapter:Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/cyanogenmod/cmparts/profiles/actions/item/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSelectedPosition:I

.field mListView:Landroid/widget/ListView;

.field mNewProfileMode:Z

.field mProfile:Lcyanogenmod/app/Profile;

.field mProfileManager:Lcyanogenmod/app/ProfileManager;

.field private mSelectedItem:Lorg/cyanogenmod/cmparts/profiles/actions/item/Item;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->DOZE_MAPPING:[I

    return-object v0
.end method

.method static synthetic -get1()[I
    .locals 1

    sget-object v0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    return-object v0
.end method

.method static synthetic -get2()[I
    .locals 1

    sget-object v0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->NOTIFICATION_LIGHT_MAPPING:[I

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->fillProfileFromCurrentSettings()V

    return-void
.end method

.method static synthetic -wrap2(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->rebuildItemList()V

    return-void
.end method

.method static synthetic -wrap3(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static synthetic -wrap4(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->updateProfile()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    filled-new-array {v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    filled-new-array {v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->EXPANDED_DESKTOP_MAPPING:[I

    filled-new-array {v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->DOZE_MAPPING:[I

    filled-new-array {v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->NOTIFICATION_LIGHT_MAPPING:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    return-void
.end method

.method private fillProfileFromCurrentSettings()V
    .locals 4

    new-instance v1, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$2;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$2;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Void;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static fillProfileWithCurrentSettings(Landroid/content/Context;Lcyanogenmod/app/Profile;)V
    .locals 12

    invoke-static {}, Lorg/cyanogenmod/cmparts/utils/DeviceUtils;->deviceSupportsBluetooth()Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v9, Lcyanogenmod/profiles/ConnectionSettings;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_0
    const/4 v10, 0x7

    const/4 v11, 0x1

    invoke-direct {v9, v10, v8, v11}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(IIZ)V

    invoke-virtual {p1, v9}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    :cond_0
    const-string/jumbo v8, "location"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    const-string/jumbo v8, "gps"

    invoke-virtual {v4, v8}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    new-instance v9, Lcyanogenmod/profiles/ConnectionSettings;

    if-eqz v3, :cond_4

    const/4 v8, 0x1

    :goto_1
    const/4 v10, 0x4

    const/4 v11, 0x1

    invoke-direct {v9, v10, v8, v11}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(IIZ)V

    invoke-virtual {p1, v9}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    const-string/jumbo v8, "wifi"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    new-instance v9, Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    :goto_2
    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct {v9, v10, v8, v11}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(IIZ)V

    invoke-virtual {p1, v9}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    new-instance v9, Lcyanogenmod/profiles/ConnectionSettings;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    :goto_3
    const/4 v10, 0x5

    const/4 v11, 0x1

    invoke-direct {v9, v10, v8, v11}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(IIZ)V

    invoke-virtual {p1, v9}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    invoke-static {p0}, Lorg/cyanogenmod/cmparts/utils/DeviceUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "connectivity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    new-instance v9, Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    :goto_4
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {v9, v10, v8, v11}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(IIZ)V

    invoke-virtual {p1, v9}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    :cond_1
    new-instance v9, Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    :goto_5
    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-direct {v9, v10, v8, v11}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(IIZ)V

    invoke-virtual {p1, v9}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    invoke-static {p0}, Lorg/cyanogenmod/cmparts/utils/DeviceUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "nfc"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/NfcManager;

    new-instance v9, Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v5}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    :goto_6
    const/16 v10, 0x8

    const/4 v11, 0x1

    invoke-direct {v9, v10, v8, v11}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(IIZ)V

    invoke-virtual {p1, v9}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    :cond_2
    const-string/jumbo v8, "audio"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    new-instance v8, Lcyanogenmod/profiles/StreamSettings;

    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    const/4 v10, 0x4

    const/4 v11, 0x1

    invoke-direct {v8, v10, v9, v11}, Lcyanogenmod/profiles/StreamSettings;-><init>(IIZ)V

    invoke-virtual {p1, v8}, Lcyanogenmod/app/Profile;->setStreamSettings(Lcyanogenmod/profiles/StreamSettings;)V

    new-instance v8, Lcyanogenmod/profiles/StreamSettings;

    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    const/4 v10, 0x3

    const/4 v11, 0x1

    invoke-direct {v8, v10, v9, v11}, Lcyanogenmod/profiles/StreamSettings;-><init>(IIZ)V

    invoke-virtual {p1, v8}, Lcyanogenmod/app/Profile;->setStreamSettings(Lcyanogenmod/profiles/StreamSettings;)V

    new-instance v8, Lcyanogenmod/profiles/StreamSettings;

    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-direct {v8, v10, v9, v11}, Lcyanogenmod/profiles/StreamSettings;-><init>(IIZ)V

    invoke-virtual {p1, v8}, Lcyanogenmod/app/Profile;->setStreamSettings(Lcyanogenmod/profiles/StreamSettings;)V

    new-instance v8, Lcyanogenmod/profiles/StreamSettings;

    const/4 v9, 0x5

    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    const/4 v10, 0x5

    const/4 v11, 0x1

    invoke-direct {v8, v10, v9, v11}, Lcyanogenmod/profiles/StreamSettings;-><init>(IIZ)V

    invoke-virtual {p1, v8}, Lcyanogenmod/app/Profile;->setStreamSettings(Lcyanogenmod/profiles/StreamSettings;)V

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v6, "normal"

    :goto_7
    new-instance v8, Lcyanogenmod/profiles/RingModeSettings;

    const/4 v9, 0x1

    invoke-direct {v8, v6, v9}, Lcyanogenmod/profiles/RingModeSettings;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v8}, Lcyanogenmod/app/Profile;->setRingMode(Lcyanogenmod/profiles/RingModeSettings;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_a

    const/4 v0, 0x1

    :goto_8
    new-instance v9, Lcyanogenmod/profiles/AirplaneModeSettings;

    if-eqz v0, :cond_b

    const/4 v8, 0x1

    :goto_9
    const/4 v10, 0x1

    invoke-direct {v9, v8, v10}, Lcyanogenmod/profiles/AirplaneModeSettings;-><init>(IZ)V

    invoke-virtual {p1, v9}, Lcyanogenmod/app/Profile;->setAirplaneMode(Lcyanogenmod/profiles/AirplaneModeSettings;)V

    return-void

    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_6

    :pswitch_1
    const-string/jumbo v6, "mute"

    goto :goto_7

    :pswitch_2
    const-string/jumbo v6, "vibrate"

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :cond_b
    const/4 v8, 0x0

    goto :goto_9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private generateConnectionOverrideItem(I)Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;
    .locals 2

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v1, p1}, Lcyanogenmod/app/Profile;->getSettingsForConnection(I)Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcyanogenmod/profiles/ConnectionSettings;

    invoke-direct {v0, p1}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(I)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v1, v0}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    :cond_0
    new-instance v1, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;

    invoke-direct {v1, p1, v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;-><init>(ILcyanogenmod/profiles/ConnectionSettings;)V

    return-object v1
.end method

.method private generatePreferredNetworkOverrideItem(I)Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;
    .locals 3

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v1, p1}, Lcyanogenmod/app/Profile;->getConnectionSettingWithSubId(I)Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcyanogenmod/profiles/ConnectionSettings;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(I)V

    invoke-virtual {v0, p1}, Lcyanogenmod/profiles/ConnectionSettings;->setSubId(I)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v1, v0}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    :cond_0
    new-instance v1, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;

    invoke-virtual {v0}, Lcyanogenmod/profiles/ConnectionSettings;->getConnectionId()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;-><init>(ILcyanogenmod/profiles/ConnectionSettings;)V

    return-object v1
.end method

.method private generateTriggerItem(I)Lorg/cyanogenmod/cmparts/profiles/actions/item/TriggerItem;
    .locals 2

    new-instance v0, Lorg/cyanogenmod/cmparts/profiles/actions/item/TriggerItem;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-direct {v0, v1, p1}, Lorg/cyanogenmod/cmparts/profiles/actions/item/TriggerItem;-><init>(Lcyanogenmod/app/Profile;I)V

    return-object v0
.end method

.method private generateVolumeStreamItem(I)Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;
    .locals 2

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v1, p1}, Lcyanogenmod/app/Profile;->getSettingsForStream(I)Lcyanogenmod/profiles/StreamSettings;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcyanogenmod/profiles/StreamSettings;

    invoke-direct {v0, p1}, Lcyanogenmod/profiles/StreamSettings;-><init>(I)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v1, v0}, Lcyanogenmod/app/Profile;->setStreamSettings(Lcyanogenmod/profiles/StreamSettings;)V

    :cond_0
    new-instance v1, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;

    invoke-direct {v1, p1, v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;-><init>(ILcyanogenmod/profiles/StreamSettings;)V

    return-object v1
.end method

.method private openTriggersFragment(I)V
    .locals 7

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "Profile"

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "new_profile_mode"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "current_item"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/PartsActivity;

    const-class v1, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f08028f

    const/4 v4, 0x0

    const/16 v6, 0x3e9

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lorg/cyanogenmod/cmparts/PartsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method private rebuildItemList()V
    .locals 15

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lorg/cyanogenmod/cmparts/profiles/actions/item/Header;

    const v10, 0x7f08027d

    invoke-virtual {p0, v10}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/cyanogenmod/cmparts/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lorg/cyanogenmod/cmparts/profiles/actions/item/ProfileNameItem;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-direct {v9, v10}, Lorg/cyanogenmod/cmparts/profiles/actions/item/ProfileNameItem;-><init>(Lcyanogenmod/app/Profile;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lorg/cyanogenmod/cmparts/profiles/actions/item/Header;

    const v10, 0x7f080257

    invoke-virtual {p0, v10}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/cyanogenmod/cmparts/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->generateTriggerItem(I)Lorg/cyanogenmod/cmparts/profiles/actions/item/TriggerItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/cyanogenmod/cmparts/utils/DeviceUtils;->deviceSupportsBluetooth()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->generateTriggerItem(I)Lorg/cyanogenmod/cmparts/profiles/actions/item/TriggerItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lorg/cyanogenmod/cmparts/utils/DeviceUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->generateTriggerItem(I)Lorg/cyanogenmod/cmparts/profiles/actions/item/TriggerItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lorg/cyanogenmod/cmparts/profiles/actions/item/Header;

    const v10, 0x7f08025c

    invoke-virtual {p0, v10}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/cyanogenmod/cmparts/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/cyanogenmod/cmparts/utils/DeviceUtils;->deviceSupportsBluetooth()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Lcyanogenmod/app/Profile;->getSettingsForConnection(I)Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v10

    const/4 v11, 0x7

    invoke-direct {v9, v11, v10}, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;-><init>(ILcyanogenmod/profiles/ConnectionSettings;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x5

    invoke-direct {p0, v9}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lorg/cyanogenmod/cmparts/utils/DeviceUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-direct {p0, v9}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->generatePreferredNetworkOverrideItem(I)Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, -0x1

    invoke-direct {p0, v9}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->generatePreferredNetworkOverrideItem(I)Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lorg/cyanogenmod/cmparts/utils/DeviceUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/16 v9, 0x8

    invoke-direct {p0, v9}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lorg/cyanogenmod/cmparts/profiles/actions/item/Header;

    const v10, 0x7f08028a

    invoke-virtual {p0, v10}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/cyanogenmod/cmparts/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x5

    invoke-direct {p0, v9}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lorg/cyanogenmod/cmparts/profiles/actions/item/Header;

    const v10, 0x7f0802a7

    invoke-virtual {p0, v10}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/cyanogenmod/cmparts/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lorg/cyanogenmod/cmparts/profiles/actions/item/RingModeItem;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v10}, Lcyanogenmod/app/Profile;->getRingMode()Lcyanogenmod/profiles/RingModeSettings;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/cyanogenmod/cmparts/profiles/actions/item/RingModeItem;-><init>(Lcyanogenmod/profiles/RingModeSettings;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lorg/cyanogenmod/cmparts/profiles/actions/item/AirplaneModeItem;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v10}, Lcyanogenmod/app/Profile;->getAirplaneMode()Lcyanogenmod/profiles/AirplaneModeSettings;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/cyanogenmod/cmparts/profiles/actions/item/AirplaneModeItem;-><init>(Lcyanogenmod/profiles/AirplaneModeSettings;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "device_policy"

    invoke-virtual {p0, v8}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->requireSecureKeyguard()Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lorg/cyanogenmod/cmparts/profiles/actions/item/LockModeItem;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-direct {v9, v10}, Lorg/cyanogenmod/cmparts/profiles/actions/item/LockModeItem;-><init>(Lcyanogenmod/app/Profile;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lorg/cyanogenmod/cmparts/profiles/actions/item/BrightnessItem;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v10}, Lcyanogenmod/app/Profile;->getBrightness()Lcyanogenmod/profiles/BrightnessSettings;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/cyanogenmod/cmparts/profiles/actions/item/BrightnessItem;-><init>(Lcyanogenmod/profiles/BrightnessSettings;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/utils/DeviceUtils;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lorg/cyanogenmod/cmparts/profiles/actions/item/DozeModeItem;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-direct {v9, v10}, Lorg/cyanogenmod/cmparts/profiles/actions/item/DozeModeItem;-><init>(Lcyanogenmod/app/Profile;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1120048

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lorg/cyanogenmod/cmparts/profiles/actions/item/NotificationLightModeItem;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-direct {v9, v10}, Lorg/cyanogenmod/cmparts/profiles/actions/item/NotificationLightModeItem;-><init>(Lcyanogenmod/app/Profile;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lorg/cyanogenmod/cmparts/profiles/actions/item/Header;

    const v10, 0x7f080277

    invoke-virtual {p0, v10}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/cyanogenmod/cmparts/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v8}, Lcyanogenmod/app/Profile;->getProfileGroups()[Lcyanogenmod/app/ProfileGroup;

    move-result-object v4

    if-eqz v4, :cond_c

    array-length v8, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_c

    const/4 v8, 0x0

    array-length v9, v4

    :goto_2
    if-ge v8, v9, :cond_b

    aget-object v3, v4, v8

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v3}, Lcyanogenmod/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcyanogenmod/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v10}, Lcyanogenmod/app/Profile;->getDefaultGroup()Lcyanogenmod/app/ProfileGroup;

    move-result-object v10

    invoke-virtual {v10}, Lcyanogenmod/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v3}, Lcyanogenmod/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_8
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_9
    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lorg/cyanogenmod/cmparts/profiles/actions/item/DisabledItem;

    const v10, 0x7f0802a8

    const v11, 0x7f0802a9

    invoke-direct {v9, v10, v11}, Lorg/cyanogenmod/cmparts/profiles/actions/item/DisabledItem;-><init>(II)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    iget-object v10, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v11, Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;

    iget-object v12, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    iget-object v13, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v3}, Lcyanogenmod/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcyanogenmod/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v13

    invoke-direct {v11, v12, v3, v13}, Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;-><init>(Lcyanogenmod/app/Profile;Lcyanogenmod/app/ProfileGroup;Landroid/app/NotificationGroup;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    if-lez v2, :cond_c

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    iget-object v11, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v11}, Lcyanogenmod/app/Profile;->getDefaultGroup()Lcyanogenmod/app/ProfileGroup;

    move-result-object v11

    iget-object v12, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    iget-object v13, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v13}, Lcyanogenmod/app/Profile;->getDefaultGroup()Lcyanogenmod/app/ProfileGroup;

    move-result-object v13

    invoke-virtual {v13}, Lcyanogenmod/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcyanogenmod/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;-><init>(Lcyanogenmod/app/Profile;Lcyanogenmod/app/ProfileGroup;Landroid/app/NotificationGroup;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v8}, Lcyanogenmod/app/ProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_e

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;

    invoke-direct {v9}, Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;-><init>()V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_4
    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mAdapter:Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;

    invoke-virtual {v8}, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_e
    if-nez v2, :cond_d

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private requestActiveAppGroupsDialog()V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v6}, Lcyanogenmod/app/ProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;

    move-result-object v5

    array-length v6, v5

    new-array v3, v6, [Ljava/lang/CharSequence;

    array-length v6, v5

    new-array v1, v6, [Z

    const/4 v2, 0x0

    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_1

    aget-object v6, v5, v2

    invoke-virtual {v6}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    aget-object v7, v5, v2

    invoke-virtual {v7}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcyanogenmod/app/Profile;->getProfileGroup(Ljava/util/UUID;)Lcyanogenmod/app/ProfileGroup;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    aput-boolean v6, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    new-instance v4, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$20;

    invoke-direct {v4, p0, v5}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$20;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;[Landroid/app/NotificationGroup;)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0802a0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private requestAirplaneModeDialog(Lcyanogenmod/profiles/AirplaneModeSettings;)Landroid/app/AlertDialog;
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcyanogenmod/profiles/AirplaneModeSettings;->isOverride()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcyanogenmod/profiles/AirplaneModeSettings;->getValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v2, 0x2

    :cond_0
    :goto_0
    const v3, 0x7f0802ac

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$8;

    invoke-direct {v3, p0, p1}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$8;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;Lcyanogenmod/profiles/AirplaneModeSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private requestConnectionOverrideDialog(Lcyanogenmod/profiles/ConnectionSettings;)Landroid/app/AlertDialog;
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "connection setting cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p1}, Lcyanogenmod/profiles/ConnectionSettings;->getConnectionId()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "dialog must be requested from Telephony"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcyanogenmod/profiles/ConnectionSettings;->isOverride()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcyanogenmod/profiles/ConnectionSettings;->getValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v2, 0x2

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->getConnectionTitle(Landroid/content/Context;Lcyanogenmod/profiles/ConnectionSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$10;

    invoke-direct {v3, p0, p1}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$10;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;Lcyanogenmod/profiles/ConnectionSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private requestDozeModeDialog()Landroid/app/AlertDialog;
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->DOZE_MAPPING:[I

    array-length v4, v4

    if-ge v3, v4, :cond_0

    sget-object v4, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->DOZE_MAPPING:[I

    aget v4, v4, v3

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v5}, Lcyanogenmod/app/Profile;->getDozeMode()I

    move-result v5

    if-ne v4, v5, :cond_1

    move v1, v3

    :cond_0
    const v4, 0x7f0802c2

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$6;

    invoke-direct {v4, p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$6;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private requestFillProfileFromSettingsDialog()Landroid/app/AlertDialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080274

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080188

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$1;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$1;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;)V

    const v2, 0x7f080187

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private requestLockscreenModeDialog()Landroid/app/AlertDialog;
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v4, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    sget-object v4, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    aget v4, v4, v2

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v5}, Lcyanogenmod/app/Profile;->getScreenLockMode()Lcyanogenmod/profiles/LockSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcyanogenmod/profiles/LockSettings;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_1

    move v1, v2

    :cond_0
    const v4, 0x7f0802a8

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$5;

    invoke-direct {v4, p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$5;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private requestNotificationLightModeDialog()Landroid/app/AlertDialog;
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v4, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->NOTIFICATION_LIGHT_MAPPING:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    sget-object v4, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->NOTIFICATION_LIGHT_MAPPING:[I

    aget v4, v4, v2

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v5}, Lcyanogenmod/app/Profile;->getNotificationLightMode()I

    move-result v5

    if-ne v4, v5, :cond_1

    move v1, v2

    :cond_0
    const v4, 0x7f0801b6

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$7;

    invoke-direct {v4, p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$7;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private requestProfileName()Landroid/app/AlertDialog;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03005d

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0c00d0

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v4}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f08027f

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$17;

    invoke-direct {v5, p0, v2}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$17;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;Landroid/widget/EditText;)V

    const v6, 0x104000a

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v4, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$18;

    invoke-direct {v4, p0, v0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$18;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v4, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$19;

    invoke-direct {v4, p0, v2}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$19;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method

.method private requestRemoveProfileDialog()Landroid/app/AlertDialog;
    .locals 5

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v2}, Lcyanogenmod/app/ProfileManager;->getActiveProfile()Lcyanogenmod/app/Profile;

    move-result-object v1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v2}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080276

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$3;

    invoke-direct {v2, p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$3;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;)V

    const v3, 0x7f08017b

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v3}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f080273

    invoke-virtual {p0, v3, v2}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$4;

    invoke-direct {v2, p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$4;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;)V

    const v3, 0x7f080187

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f080188

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method private requestRingModeDialog(Lcyanogenmod/profiles/RingModeSettings;)Landroid/app/AlertDialog;
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcyanogenmod/profiles/RingModeSettings;->isOverride()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcyanogenmod/profiles/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const v4, 0x7f0802b9

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$9;

    invoke-direct {v4, p0, p1, v3}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$9;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;Lcyanogenmod/profiles/RingModeSettings;[Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :cond_1
    invoke-virtual {p1}, Lcyanogenmod/profiles/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcyanogenmod/profiles/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private startProfileGroupActivity(Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;)V
    .locals 6

    const/4 v3, 0x0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "ProfileGroup"

    invoke-virtual {p1}, Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;->getGroupUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Profile"

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private updateProfile()V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v0, v1}, Lcyanogenmod/app/ProfileManager;->updateProfile(Lcyanogenmod/app/Profile;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mAdapter:Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f08025a

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v2}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v4, 0x3e9

    if-ne p1, v4, :cond_1

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v5}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcyanogenmod/app/ProfileManager;->getProfile(Ljava/util/UUID;)Lcyanogenmod/app/Profile;

    move-result-object v4

    iput-object v4, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->rebuildItemList()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v4, 0x3ea

    if-ne p1, v4, :cond_0

    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    const-string/jumbo v4, "network_mode_picker::chosen_value"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v4, "network_mode_picker::sub_id"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mSelectedItem:Lorg/cyanogenmod/cmparts/profiles/actions/item/Item;

    check-cast v0, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->getSettings()Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v2

    packed-switch v1, :pswitch_data_0

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcyanogenmod/profiles/ConnectionSettings;->setOverride(Z)V

    invoke-virtual {v2, v1}, Lcyanogenmod/profiles/ConnectionSettings;->setValue(I)V

    :goto_1
    iget-object v4, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v4, v2}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mAdapter:Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;

    invoke-virtual {v4}, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->updateProfile()V

    goto :goto_0

    :pswitch_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcyanogenmod/profiles/ConnectionSettings;->setOverride(Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "Profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "new_profile_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mNewProfileMode:Z

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    new-instance v0, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mAdapter:Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->rebuildItemList()V

    invoke-virtual {p0, v4}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->setHasOptionsMenu(Z)V

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    invoke-virtual {p0, v4}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->showDialog(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_1

    const-string/jumbo v0, "last_selected_position"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    iget v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mAdapter:Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;

    iget v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/profiles/actions/item/Item;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mSelectedItem:Lorg/cyanogenmod/cmparts/profiles/actions/item/Item;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    return-object v2

    :pswitch_0
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->requestFillProfileFromSettingsDialog()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :pswitch_1
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mSelectedItem:Lorg/cyanogenmod/cmparts/profiles/actions/item/Item;

    check-cast v2, Lorg/cyanogenmod/cmparts/profiles/actions/item/AirplaneModeItem;

    invoke-virtual {v2}, Lorg/cyanogenmod/cmparts/profiles/actions/item/AirplaneModeItem;->getSettings()Lcyanogenmod/profiles/AirplaneModeSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->requestAirplaneModeDialog(Lcyanogenmod/profiles/AirplaneModeSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :pswitch_2
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mSelectedItem:Lorg/cyanogenmod/cmparts/profiles/actions/item/Item;

    check-cast v2, Lorg/cyanogenmod/cmparts/profiles/actions/item/BrightnessItem;

    invoke-virtual {v2}, Lorg/cyanogenmod/cmparts/profiles/actions/item/BrightnessItem;->getSettings()Lcyanogenmod/profiles/BrightnessSettings;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->requestBrightnessDialog(Lcyanogenmod/profiles/BrightnessSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :pswitch_3
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->requestLockscreenModeDialog()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :pswitch_4
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->requestDozeModeDialog()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :pswitch_5
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->requestNotificationLightModeDialog()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :pswitch_6
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mSelectedItem:Lorg/cyanogenmod/cmparts/profiles/actions/item/Item;

    check-cast v2, Lorg/cyanogenmod/cmparts/profiles/actions/item/RingModeItem;

    invoke-virtual {v2}, Lorg/cyanogenmod/cmparts/profiles/actions/item/RingModeItem;->getSettings()Lcyanogenmod/profiles/RingModeSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->requestRingModeDialog(Lcyanogenmod/profiles/RingModeSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :pswitch_7
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mSelectedItem:Lorg/cyanogenmod/cmparts/profiles/actions/item/Item;

    check-cast v0, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->getSettings()Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->requestConnectionOverrideDialog(Lcyanogenmod/profiles/ConnectionSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :pswitch_8
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mSelectedItem:Lorg/cyanogenmod/cmparts/profiles/actions/item/Item;

    check-cast v1, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;

    invoke-virtual {v1}, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;->getStreamType()I

    move-result v2

    invoke-virtual {v1}, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;->getSettings()Lcyanogenmod/profiles/StreamSettings;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->requestVolumeDialog(ILcyanogenmod/profiles/StreamSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :pswitch_9
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->requestProfileName()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :pswitch_a
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->requestRemoveProfileDialog()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-nez v0, :cond_0

    const v0, 0x7f08024d

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020058

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x2

    const v1, 0x7f080275

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x66

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f03002d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-boolean v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->showButtonBar(Z)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getBackButton()Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$21;

    invoke-direct {v2, p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$21;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getNextButton()Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f080183

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getNextButton()Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$22;

    invoke-direct {v2, p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$22;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/16 v6, 0x9

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/cyanogenmod/cmparts/profiles/actions/item/Item;

    iput-object v4, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mSelectedItem:Lorg/cyanogenmod/cmparts/profiles/actions/item/Item;

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mAdapter:Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;

    invoke-virtual {v5, v4}, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v5

    iput v5, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    instance-of v5, v4, Lorg/cyanogenmod/cmparts/profiles/actions/item/AirplaneModeItem;

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->showDialog(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v5, v4, Lorg/cyanogenmod/cmparts/profiles/actions/item/BrightnessItem;

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->showDialog(I)V

    goto :goto_0

    :cond_2
    instance-of v5, v4, Lorg/cyanogenmod/cmparts/profiles/actions/item/LockModeItem;

    if-eqz v5, :cond_3

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->showDialog(I)V

    goto :goto_0

    :cond_3
    instance-of v5, v4, Lorg/cyanogenmod/cmparts/profiles/actions/item/DozeModeItem;

    if-eqz v5, :cond_4

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->showDialog(I)V

    goto :goto_0

    :cond_4
    instance-of v5, v4, Lorg/cyanogenmod/cmparts/profiles/actions/item/NotificationLightModeItem;

    if-eqz v5, :cond_5

    const/16 v5, 0xb

    invoke-virtual {p0, v5}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->showDialog(I)V

    goto :goto_0

    :cond_5
    instance-of v5, v4, Lorg/cyanogenmod/cmparts/profiles/actions/item/RingModeItem;

    if-eqz v5, :cond_6

    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->showDialog(I)V

    goto :goto_0

    :cond_6
    instance-of v5, v4, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;

    if-eqz v5, :cond_9

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mSelectedItem:Lorg/cyanogenmod/cmparts/profiles/actions/item/Item;

    check-cast v0, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->getConnectionType()I

    move-result v5

    if-ne v5, v6, :cond_8

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "cyanogenmod.platform.intent.action.NETWORK_MODE_PICKER"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "network_mode_picker::neutral_text"

    const v6, 0x7f08024e

    invoke-virtual {p0, v6}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "network_mode_picker::show_none"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "network_mode_picker::sub_id"

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->getSettings()Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcyanogenmod/profiles/ConnectionSettings;->getSubId()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "network_mode_picker::selected_mode"

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->getSettings()Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcyanogenmod/profiles/ConnectionSettings;->isOverride()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->getSettings()Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcyanogenmod/profiles/ConnectionSettings;->getValue()I

    move-result v5

    :goto_1
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v5, 0x3ea

    invoke-virtual {p0, v1, v5}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_7
    const/4 v5, -0x1

    goto :goto_1

    :cond_8
    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->showDialog(I)V

    goto/16 :goto_0

    :cond_9
    instance-of v5, v4, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;

    if-eqz v5, :cond_a

    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->showDialog(I)V

    goto/16 :goto_0

    :cond_a
    instance-of v5, v4, Lorg/cyanogenmod/cmparts/profiles/actions/item/ProfileNameItem;

    if-eqz v5, :cond_b

    invoke-virtual {p0, v6}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->showDialog(I)V

    goto/16 :goto_0

    :cond_b
    instance-of v5, v4, Lorg/cyanogenmod/cmparts/profiles/actions/item/TriggerItem;

    if-eqz v5, :cond_c

    move-object v3, v4

    check-cast v3, Lorg/cyanogenmod/cmparts/profiles/actions/item/TriggerItem;

    invoke-virtual {v3}, Lorg/cyanogenmod/cmparts/profiles/actions/item/TriggerItem;->getTriggerType()I

    move-result v5

    invoke-direct {p0, v5}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->openTriggersFragment(I)V

    goto/16 :goto_0

    :cond_c
    instance-of v5, v4, Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;

    if-eqz v5, :cond_0

    move-object v2, v4

    check-cast v2, Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;

    invoke-virtual {v2}, Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;->getGroupUuid()Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_d

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->requestActiveAppGroupsDialog()V

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0, v2}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->startProfileGroupActivity(Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->showDialog(I)V

    return v1

    :pswitch_1
    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->showDialog(I)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "last_selected_position"

    iget v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean v2, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v2, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const v2, 0x7f080262

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->setHeaderView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public requestBrightnessDialog(Lcyanogenmod/profiles/BrightnessSettings;)Landroid/app/AlertDialog;
    .locals 7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0802ad

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x7f030020

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0c005c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    const v5, 0x7f0c003d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcyanogenmod/profiles/BrightnessSettings;->isOverride()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v5, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$14;

    invoke-direct {v5, p0, v3}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$14;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;Landroid/widget/SeekBar;)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p1}, Lcyanogenmod/profiles/BrightnessSettings;->isOverride()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    const/16 v5, 0xff

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {p1}, Lcyanogenmod/profiles/BrightnessSettings;->getValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$15;

    invoke-direct {v5, p0, v3, p1, v2}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$15;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;Landroid/widget/SeekBar;Lcyanogenmod/profiles/BrightnessSettings;Landroid/widget/CheckBox;)V

    const v6, 0x104000a

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$16;

    invoke-direct {v5, p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$16;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public requestVolumeDialog(ILcyanogenmod/profiles/StreamSettings;)Landroid/app/AlertDialog;
    .locals 10

    const/4 v9, 0x0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;->getNameForStream(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "audio"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v7, 0x7f030021

    invoke-virtual {v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v7, 0x7f0c005c

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    const v7, 0x7f0c003d

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lcyanogenmod/profiles/StreamSettings;->isOverride()Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v7, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$11;

    invoke-direct {v7, p0, v4}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$11;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;Landroid/widget/SeekBar;)V

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v6, Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7, p1, v9, v9}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    invoke-virtual {v6}, Landroid/preference/SeekBarVolumizer;->start()V

    invoke-virtual {v6, v4}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    invoke-virtual {p2}, Lcyanogenmod/profiles/StreamSettings;->isOverride()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$12;

    invoke-direct {v7, p0, v4, p2, v3}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$12;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;Landroid/widget/SeekBar;Lcyanogenmod/profiles/StreamSettings;Landroid/widget/CheckBox;)V

    const v8, 0x104000a

    invoke-virtual {v1, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v7, 0x1040000

    invoke-virtual {v1, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$13;

    invoke-direct {v7, p0, v6}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$13;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;Landroid/preference/SeekBarVolumizer;)V

    invoke-virtual {p0, v7}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7
.end method
