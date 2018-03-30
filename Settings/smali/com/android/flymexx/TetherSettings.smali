.class public Lcom/android/flymexx/TetherSettings;
.super Lcom/android/flymexx/RestrictedSettingsFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/flymexx/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/TetherSettings$1;,
        Lcom/android/flymexx/TetherSettings$OnStartTetheringCallback;,
        Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# instance fields
.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConfigureReceiver:Landroid/content/BroadcastReceiver;

.field private mCreateNetwork:Landroid/support/v7/preference/Preference;

.field private mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

.field private mDataSaverEnabled:Z

.field private mDataSaverFooter:Landroid/support/v7/preference/Preference;

.field private mDialog:Lcom/android/flymexx/wifi/WifiApDialog;

.field private mEnableWifiAp:Landroid/support/v7/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mHotspotInactivityTimeout:Landroid/support/v7/preference/ListPreference;

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRestartWifiApAfterConfigChange:Z

.field private mSecurityType:[Ljava/lang/String;

.field private mStartTetheringCallback:Lcom/android/flymexx/TetherSettings$OnStartTetheringCallback;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetherHelp:Landroid/support/v7/preference/PreferenceScreen;

.field private mUnavailable:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiApEnabler:Lcom/android/flymexx/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexx/TetherSettings;->mRestartWifiApAfterConfigChange:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/flymexx/TetherSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/flymexx/TetherSettings;->mTetherChoice:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/flymexx/TetherSettings;)Lcom/android/flymexx/wifi/WifiApEnabler;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/TetherSettings;->mWifiApEnabler:Lcom/android/flymexx/wifi/WifiApEnabler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/flymexx/TetherSettings;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/flymexx/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/flymexx/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/flymexx/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/flymexx/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/flymexx/TetherSettings;->mRestartWifiApAfterConfigChange:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/flymexx/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/flymexx/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/TetherSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/TetherSettings;->startTethering(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/TetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/flymexx/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/flymexx/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "no_config_tethering"

    invoke-direct {p0, v0}, Lcom/android/flymexx/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/TetherSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/flymexx/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/flymexx/TetherSettings;->mTetherChoice:I

    new-instance v0, Lcom/android/flymexx/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/TetherSettings$1;-><init>(Lcom/android/flymexx/TetherSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method private checkDefaultValue(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e002d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v5, "MY_PERFS"

    invoke-virtual {p1, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "def_wifiap_set"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/flymexx/TetherSettings;->setDefaultValue(Landroid/content/Context;ZZ)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v5, "def_wifiap_set"

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method private initWifiTethering()V
    .locals 9

    const v6, 0x7f0c05bc

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/flymexx/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/TetherSettings;->mSecurityType:[Ljava/lang/String;

    iput-boolean v7, p0, Lcom/android/flymexx/TetherSettings;->mRestartWifiApAfterConfigChange:Z

    iget-object v3, p0, Lcom/android/flymexx/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/flymexx/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_1

    const v3, 0x104045f

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/android/flymexx/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v7

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v3, p0, Lcom/android/flymexx/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3}, Lcom/android/flymexx/TetherSettings;->updateHotspotTimeoutSummary(Landroid/net/wifi/WifiConfiguration;)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/flymexx/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/flymexx/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    iget-object v3, p0, Lcom/android/flymexx/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/flymexx/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/flymexx/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static isIntentAvailable(Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aget-object v5, v2, v4

    aget-object v6, v2, v3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10000

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method public static isProvisioningNeededButUnavailable(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/flymexxlib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/flymexx/TetherSettings;->isIntentAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private registerConfigureReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "Hotspot_PreConfigure_Response"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/flymexx/TetherSettings$2;

    invoke-direct {v1, p0}, Lcom/android/flymexx/TetherSettings$2;-><init>(Lcom/android/flymexx/TetherSettings;)V

    iput-object v1, p0, Lcom/android/flymexx/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setDefaultValue(Landroid/content/Context;ZZ)Z
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    if-nez v4, :cond_0

    return v6

    :cond_0
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-nez v3, :cond_1

    return v6

    :cond_1
    if-eqz p2, :cond_3

    const-string/jumbo v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :cond_3
    if-eqz p3, :cond_4

    const-string/jumbo v5, ""

    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_4
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    const/4 v5, 0x1

    return v5
.end method

.method private startTethering(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iput-boolean v4, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothEnableForTether:Z

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v2, 0x7f0c034e

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/flymexx/TetherSettings;->mStartTetheringCallback:Lcom/android/flymexx/TetherSettings$OnStartTetheringCallback;

    iget-object v3, p0, Lcom/android/flymexx/TetherSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v4, v2, v3}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private unRegisterConfigureReceiver()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/flymexx/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/flymexx/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15

    const/4 v2, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p3

    array-length v11, v0

    move v10, v9

    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v7, p3, v10

    iget-object v12, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    const/4 v9, 0x0

    array-length v13, v12

    :goto_1
    if-ge v9, v13, :cond_1

    aget-object v6, v12, v9

    invoke-virtual {v7, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    const/16 v9, 0xd

    if-ne v5, v9, :cond_4

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f0c034f

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :goto_2
    return-void

    :cond_4
    const/16 v9, 0xb

    if-ne v5, v9, :cond_5

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f0c034e

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    :cond_5
    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothPan;

    const/16 v9, 0xc

    if-ne v5, v9, :cond_a

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v9, p0, Lcom/android/flymexx/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    const/4 v9, 0x1

    if-le v4, v9, :cond_7

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0c0761

    invoke-virtual {p0, v10, v9}, Lcom/android/flymexx/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v8}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    const/4 v9, 0x1

    goto :goto_3

    :cond_7
    const/4 v9, 0x1

    if-ne v4, v9, :cond_8

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f0c0760

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_9

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f0c0764

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    :cond_9
    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f0c075f

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    :cond_a
    iget-object v10, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v9, p0, Lcom/android/flymexx/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v9, :cond_b

    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f0c0763

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    :cond_b
    const/4 v9, 0x1

    goto :goto_4
.end method

.method private updateHotspotTimeoutSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 6

    const v5, 0x7f0c02a0

    const/4 v4, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/TetherSettings;->mHotspotInactivityTimeout:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/flymexx/TetherSettings;->mHotspotInactivityTimeout:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0, v5}, Lcom/android/flymexx/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/TetherSettings;->mHotspotInactivityTimeout:Landroid/support/v7/preference/ListPreference;

    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->wifiApInactivityTimeout:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->wifiApInactivityTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/TetherSettings;->mHotspotInactivityTimeout:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/flymexx/TetherSettings;->mHotspotInactivityTimeout:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0c02a1

    invoke-virtual {p0, v2, v1}, Lcom/android/flymexx/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/TetherSettings;->mHotspotInactivityTimeout:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0, v5}, Lcom/android/flymexx/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateState()V
    .locals 4

    iget-object v3, p0, Lcom/android/flymexx/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/flymexx/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/flymexx/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/flymexx/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/flymexx/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12

    iget-boolean v6, p0, Lcom/android/flymexx/TetherSettings;->mUsbConnected:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/flymexx/TetherSettings;->mMassStorageActive:Z

    if-eqz v6, :cond_2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v6, 0x0

    array-length v8, p1

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_4

    aget-object v1, p1, v7

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_2
    if-ge v6, v10, :cond_3

    aget-object v0, v9, v6

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    if-nez v3, :cond_1

    iget-object v11, p0, Lcom/android/flymexx/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v11, v1}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v8, p2

    move v7, v6

    :goto_3
    if-ge v7, v8, :cond_7

    aget-object v1, p2, v7

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_4
    if-ge v6, v10, :cond_6

    aget-object v0, v9, v6

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v5, 0x1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    const/4 v6, 0x0

    array-length v8, p3

    move v7, v6

    :goto_5
    if-ge v7, v8, :cond_a

    aget-object v1, p3, v7

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_6
    if-ge v6, v10, :cond_9

    aget-object v0, v9, v6

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v4, 0x1

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_5

    :cond_a
    if-eqz v5, :cond_c

    iget-object v6, p0, Lcom/android/flymexx/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0c0759

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    iget-object v7, p0, Lcom/android/flymexx/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v6, p0, Lcom/android/flymexx/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v7, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/flymexx/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_8
    return-void

    :cond_b
    const/4 v6, 0x1

    goto :goto_7

    :cond_c
    if-eqz v2, :cond_f

    if-nez v3, :cond_d

    iget-object v6, p0, Lcom/android/flymexx/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0c0758

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :goto_9
    iget-object v7, p0, Lcom/android/flymexx/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v6, p0, Lcom/android/flymexx/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    :goto_a
    invoke-virtual {v7, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/flymexx/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_8

    :cond_d
    iget-object v6, p0, Lcom/android/flymexx/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0c075d

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_9

    :cond_e
    const/4 v6, 0x1

    goto :goto_a

    :cond_f
    if-eqz v4, :cond_10

    iget-object v6, p0, Lcom/android/flymexx/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0c075d

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/flymexx/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/flymexx/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_8

    :cond_10
    iget-boolean v6, p0, Lcom/android/flymexx/TetherSettings;->mMassStorageActive:Z

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/flymexx/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0c075a

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/flymexx/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/flymexx/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_8

    :cond_11
    iget-object v6, p0, Lcom/android/flymexx/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0c075b

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/flymexx/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/flymexx/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_8
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f0c0bab

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5a

    return v0
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mDialog:Lcom/android/flymexx/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/flymexx/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "Wifi AP config changed while enabled, stop and restart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/flymexx/TetherSettings;->mRestartWifiApAfterConfigChange:Z

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/flymexx/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/flymexx/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c05bc

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/flymexx/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/flymexx/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-super {p0, p1}, Lcom/android/flymexx/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v9, "TETHER_TYPE"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/flymexx/TetherSettings;->mTetherChoice:I

    :cond_0
    const v9, 0x7f08006a

    invoke-virtual {p0, v9}, Lcom/android/flymexx/TetherSettings;->addPreferencesFromResource(I)V

    new-instance v9, Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/flymexx/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/flymexx/TetherSettings;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-virtual {v9}, Lcom/android/flymexx/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/flymexx/TetherSettings;->mDataSaverEnabled:Z

    const-string/jumbo v9, "disabled_on_data_saver"

    invoke-virtual {p0, v9}, Lcom/android/flymexx/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/flymexx/TetherSettings;->mDataSaverFooter:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v13}, Lcom/android/flymexx/TetherSettings;->setIfOnlyAvailableForAdmins(Z)V

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->isUiRestricted()Z

    move-result v9

    if-eqz v9, :cond_1

    iput-boolean v13, p0, Lcom/android/flymexx/TetherSettings;->mUnavailable:Z

    new-instance v9, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v11}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v9}, Lcom/android/flymexx/TetherSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/flymexx/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v11, 0x5

    invoke-virtual {v1, v9, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_2
    const-string/jumbo v9, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v9}, Lcom/android/flymexx/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/flymexx/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e001c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e001d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/flymexx/TetherSettings;->checkDefaultValue(Landroid/content/Context;)V

    if-eqz v3, :cond_7

    const-string/jumbo v9, "enable_wifi_ap_ext"

    invoke-virtual {p0, v9}, Lcom/android/flymexx/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/flymexx/HotspotPreference;

    iput-object v9, p0, Lcom/android/flymexx/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "enable_wifi_ap"

    invoke-virtual {p0, v10}, Lcom/android/flymexx/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/flymexx/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v9, "com.qti.ap.settings"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "com.qualcomm.qti.extsettings"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v4}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_0
    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/flymexx/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/flymexx/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0035

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string/jumbo v9, "tethering_help"

    invoke-virtual {p0, v9}, Lcom/android/flymexx/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/flymexx/TetherSettings;->mTetherHelp:Landroid/support/v7/preference/PreferenceScreen;

    :goto_1
    const-string/jumbo v9, "usb_tether_settings"

    invoke-virtual {p0, v9}, Lcom/android/flymexx/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SwitchPreference;

    iput-object v9, p0, Lcom/android/flymexx/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "enable_bluetooth_tethering"

    invoke-virtual {p0, v9}, Lcom/android/flymexx/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SwitchPreference;

    iput-object v9, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "hotstpot_inactivity_timeout"

    invoke-virtual {p0, v9}, Lcom/android/flymexx/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/ListPreference;

    iput-object v9, p0, Lcom/android/flymexx/TetherSettings;->mHotspotInactivityTimeout:Landroid/support/v7/preference/ListPreference;

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-virtual {v9, p0}, Lcom/android/flymexx/datausage/DataSaverBackend;->addListener(Lcom/android/flymexx/datausage/DataSaverBackend$Listener;)V

    const-string/jumbo v9, "connectivity"

    invoke-virtual {p0, v9}, Lcom/android/flymexx/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    iput-object v9, p0, Lcom/android/flymexx/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    const-string/jumbo v9, "wifi"

    invoke-virtual {p0, v9}, Lcom/android/flymexx/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    iput-object v9, p0, Lcom/android/flymexx/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/flymexx/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/flymexx/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v9, v9

    if-eqz v9, :cond_9

    const/4 v7, 0x1

    :goto_2
    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v9, v9

    if-eqz v9, :cond_a

    const/4 v8, 0x1

    :goto_3
    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v9, v9

    if-eqz v9, :cond_b

    const/4 v2, 0x1

    :goto_4
    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/flymexx/Utils;->isMonkeyRunning()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/flymexx/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    if-eqz v8, :cond_6

    invoke-static {}, Lcom/android/flymexx/Utils;->isMonkeyRunning()Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_6
    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/flymexx/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/flymexx/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_5
    if-nez v2, :cond_d

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_6
    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mHotspotInactivityTimeout:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v9, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-virtual {v9}, Lcom/android/flymexx/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/flymexx/TetherSettings;->onDataSaverChanged(Z)V

    return-void

    :cond_7
    const-string/jumbo v9, "enable_wifi_ap"

    invoke-virtual {p0, v9}, Lcom/android/flymexx/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SwitchPreference;

    iput-object v9, p0, Lcom/android/flymexx/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "enable_wifi_ap_ext"

    invoke-virtual {p0, v10}, Lcom/android/flymexx/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "tethering_help"

    invoke-virtual {p0, v10}, Lcom/android/flymexx/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1

    :cond_9
    const/4 v7, 0x0

    goto :goto_2

    :cond_a
    const/4 v8, 0x0

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    goto :goto_4

    :cond_c
    new-instance v9, Lcom/android/flymexx/wifi/WifiApEnabler;

    iget-object v10, p0, Lcom/android/flymexx/TetherSettings;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    iget-object v11, p0, Lcom/android/flymexx/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    invoke-direct {v9, v0, v10, v11}, Lcom/android/flymexx/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Lcom/android/flymexx/datausage/DataSaverBackend;Landroid/support/v7/preference/Preference;)V

    iput-object v9, p0, Lcom/android/flymexx/TetherSettings;->mWifiApEnabler:Lcom/android/flymexx/wifi/WifiApEnabler;

    invoke-direct {p0}, Lcom/android/flymexx/TetherSettings;->initWifiTethering()V

    goto :goto_5

    :cond_d
    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothPan;

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v13}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_6

    :cond_e
    iget-object v9, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v12}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_6
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/flymexx/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/flymexx/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/flymexx/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/flymexx/TetherSettings;->mDialog:Lcom/android/flymexx/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mDialog:Lcom/android/flymexx/wifi/WifiApDialog;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onDataSaverChanged(Z)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/android/flymexx/TetherSettings;->mDataSaverEnabled:Z

    iget-object v3, p0, Lcom/android/flymexx/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    iget-boolean v0, p0, Lcom/android/flymexx/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/flymexx/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v0, p0, Lcom/android/flymexx/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/flymexx/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/TetherSettings;->mDataSaverFooter:Landroid/support/v7/preference/Preference;

    iget-boolean v1, p0, Lcom/android/flymexx/TetherSettings;->mDataSaverEnabled:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/TetherSettings;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/datausage/DataSaverBackend;->remListener(Lcom/android/flymexx/datausage/DataSaverBackend$Listener;)V

    invoke-super {p0}, Lcom/android/flymexx/RestrictedSettingsFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v4}, Lcom/android/flymexx/TetherSettings;->startTethering(I)V

    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mHotspotInactivityTimeout:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/net/wifi/WifiConfiguration;->wifiApInactivityTimeout:J

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v1}, Lcom/android/flymexx/TetherSettings;->updateHotspotTimeoutSummary(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v6, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/flymexx/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :goto_1
    return v5

    :cond_2
    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/flymexx/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_1

    :cond_3
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/flymexx/TetherSettings;->startTethering(I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/flymexx/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v3}, Lcom/android/flymexx/TetherSettings;->startTethering(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    invoke-direct {p0}, Lcom/android/flymexx/TetherSettings;->updateState()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/flymexx/TetherSettings;->showDialog(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mTetherHelp:Landroid/support/v7/preference/PreferenceScreen;

    if-ne p1, v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0e9c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c0e9d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c03bc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onStart()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/flymexx/RestrictedSettingsFragment;->onStart()V

    iget-boolean v3, p0, Lcom/android/flymexx/TetherSettings;->mUnavailable:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0c0093

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/android/flymexx/TetherSettings$OnStartTetheringCallback;

    invoke-direct {v3, p0}, Lcom/android/flymexx/TetherSettings$OnStartTetheringCallback;-><init>(Lcom/android/flymexx/TetherSettings;)V

    iput-object v3, p0, Lcom/android/flymexx/TetherSettings;->mStartTetheringCallback:Lcom/android/flymexx/TetherSettings$OnStartTetheringCallback;

    const-string/jumbo v3, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/flymexx/TetherSettings;->mMassStorageActive:Z

    new-instance v3, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/flymexx/TetherSettings;Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;)V

    iput-object v3, p0, Lcom/android/flymexx/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/flymexx/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/flymexx/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/flymexx/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/flymexx/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/flymexx/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    iget-object v3, p0, Lcom/android/flymexx/TetherSettings;->mWifiApEnabler:Lcom/android/flymexx/wifi/WifiApEnabler;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/flymexx/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/flymexx/TetherSettings;->mWifiApEnabler:Lcom/android/flymexx/wifi/WifiApEnabler;

    invoke-virtual {v3}, Lcom/android/flymexx/wifi/WifiApEnabler;->resume()V

    :cond_3
    invoke-direct {p0}, Lcom/android/flymexx/TetherSettings;->updateState()V

    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/flymexx/TetherSettings;->registerConfigureReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/flymexx/RestrictedSettingsFragment;->onStop()V

    iget-boolean v0, p0, Lcom/android/flymexx/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/flymexx/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/android/flymexx/TetherSettings;->mStartTetheringCallback:Lcom/android/flymexx/TetherSettings$OnStartTetheringCallback;

    iget-object v0, p0, Lcom/android/flymexx/TetherSettings;->mWifiApEnabler:Lcom/android/flymexx/wifi/WifiApEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/flymexx/TetherSettings;->mWifiApEnabler:Lcom/android/flymexx/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/flymexx/wifi/WifiApEnabler;->pause()V

    :cond_1
    invoke-direct {p0}, Lcom/android/flymexx/TetherSettings;->unRegisterConfigureReceiver()V

    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0

    return-void
.end method
