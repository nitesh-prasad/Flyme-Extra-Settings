.class public Lcom/android/flymexx/wifi/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/wifi/WifiApEnabler$1;
    }
.end annotation


# instance fields
.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

.field private mEnabling:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSwitch:Landroid/support/v7/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/flymexx/wifi/WifiApEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/wifi/WifiApEnabler;->enableWifiSwitch()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/wifi/WifiApEnabler;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/wifi/WifiApEnabler;->handleWifiApStateChanged(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/flymexx/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/flymexx/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/flymexx/datausage/DataSaverBackend;Landroid/support/v7/preference/Preference;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mEnabling:Z

    new-instance v0, Lcom/android/flymexx/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/wifi/WifiApEnabler$1;-><init>(Lcom/android/flymexx/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    iput-object p3, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    invoke-virtual {p3}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {p3, v1}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private enableWifiSwitch()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    iget-object v4, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-virtual {v4}, Lcom/android/flymexx/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :goto_2
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private handleWifiApStateChanged(II)V
    .locals 10

    const v9, 0x7f0c05b5

    const v8, 0x7f0c0516

    const v7, 0x7f0c0515

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    check-cast v1, Lcom/android/flymexx/HotspotPreference;

    packed-switch p1, :pswitch_data_0

    invoke-virtual {v1, v3}, Lcom/android/flymexx/HotspotPreference;->setChecked(Z)V

    if-ne p2, v4, :cond_1

    invoke-virtual {v1, v8}, Lcom/android/flymexx/HotspotPreference;->setSummary(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/flymexx/wifi/WifiApEnabler;->enableWifiSwitch()V

    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {v1, v9}, Lcom/android/flymexx/HotspotPreference;->setSummary(I)V

    invoke-virtual {v1, v3}, Lcom/android/flymexx/HotspotPreference;->setEnabled(Z)V

    goto :goto_1

    :pswitch_1
    iget-object v5, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v3}, Lcom/android/flymexx/wifi/WifiApEnabler;->postTurnOn(Landroid/content/Context;I)Z

    invoke-virtual {v1, v4}, Lcom/android/flymexx/HotspotPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-virtual {v5}, Lcom/android/flymexx/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_2
    invoke-virtual {v1, v3}, Lcom/android/flymexx/HotspotPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_0
    move v3, v4

    goto :goto_2

    :pswitch_2
    const v4, 0x7f0c05b6

    invoke-virtual {v1, v4}, Lcom/android/flymexx/HotspotPreference;->setSummary(I)V

    invoke-virtual {v1, v3}, Lcom/android/flymexx/HotspotPreference;->setChecked(Z)V

    invoke-virtual {v1, v3}, Lcom/android/flymexx/HotspotPreference;->setEnabled(Z)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v1, v3}, Lcom/android/flymexx/HotspotPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/android/flymexx/HotspotPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/flymexx/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v7}, Lcom/android/flymexx/HotspotPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    packed-switch p1, :pswitch_data_1

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    if-ne p2, v4, :cond_4

    invoke-virtual {v2, v8}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :goto_3
    invoke-direct {p0}, Lcom/android/flymexx/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v2, v9}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-virtual {v5}, Lcom/android/flymexx/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_4
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_4

    :pswitch_6
    const v4, 0x7f0c05b6

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/flymexx/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private postTurnOn(Landroid/content/Context;I)Z
    .locals 3

    iget-boolean v1, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mEnabling:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "Hotspot_PostConfigure"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "choice"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mEnabling:Z

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 12

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    array-length v8, p2

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v0, p2, v7

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_1
    if-ge v6, v10, :cond_1

    aget-object v1, v9, v6

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v5, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    array-length v8, p3

    move v7, v6

    :goto_2
    if-ge v7, v8, :cond_5

    aget-object v0, p3, v7

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_3
    if-ge v6, v10, :cond_4

    aget-object v1, v9, v6

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_7

    iget-object v6, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/flymexx/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    :cond_6
    :goto_4
    return-void

    :cond_7
    if-eqz v4, :cond_6

    iget-object v6, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    const v7, 0x7f0c0515

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/flymexx/wifi/WifiApEnabler;->enableWifiSwitch()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    check-cast v0, Lcom/android/flymexx/HotspotPreference;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/HotspotPreference;->setChecked(Z)V

    return-void
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v2, 0x104045f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mSwitch:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/android/flymexx/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c05b7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    if-nez p1, :cond_0

    :goto_0
    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method
