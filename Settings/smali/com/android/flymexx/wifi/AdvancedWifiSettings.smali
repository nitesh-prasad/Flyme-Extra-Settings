.class public Lcom/android/flymexx/wifi/AdvancedWifiSettings;
.super Lcom/android/flymexx/RestrictedSettingsFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/wifi/AdvancedWifiSettings$WpsFragment;
    }
.end annotation


# instance fields
.field private mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

.field private mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

.field private mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

.field private mUnavailable:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/flymexx/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/flymexx/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private getCellularToWlanValue()I
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->isAutoConnectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "cellular_to_wlan_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private ifNotifyConnect()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "notify_user_when_connect_cmcc"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initPreferences()V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v17, "android.credentials.INSTALL_AS_USER"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v17, "com.android.certinstaller"

    const-string/jumbo v18, "com.android.certinstaller.CertInstallerMain"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v17, "install_as_uid"

    const/16 v18, 0x3f2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v17, "install_credentials"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const-string/jumbo v17, "enable_hs2"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x11200cc

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-eqz v17, :cond_9

    new-instance v17, Lcom/android/flymexx/wifi/AdvancedWifiSettings$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings$1;-><init>(Lcom/android/flymexx/wifi/AdvancedWifiSettings;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "wifi_hotspot2_enabled"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    :goto_1
    new-instance v12, Landroid/content/Intent;

    const-class v17, Lcom/android/flymexx/Settings$WifiP2pSettingsActivity;

    move-object/from16 v0, v17

    invoke-direct {v12, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v17, "wifi_direct"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const-string/jumbo v17, "wps_push_button"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v16

    new-instance v17, Lcom/android/flymexx/wifi/AdvancedWifiSettings$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings$2;-><init>(Lcom/android/flymexx/wifi/AdvancedWifiSettings;)V

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v17, "wps_pin_entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v15

    new-instance v17, Lcom/android/flymexx/wifi/AdvancedWifiSettings$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings$3;-><init>(Lcom/android/flymexx/wifi/AdvancedWifiSettings;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v17, "wifi_priority_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0e0015

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    :goto_2
    const-string/jumbo v17, "wifi_countrycode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/ListPreference;

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0e003f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string/jumbo v17, "wifi_countrycode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->removePreference(Ljava/lang/String;)V

    :cond_2
    :goto_3
    const-string/jumbo v17, "auto_connect_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0e0016

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->isAutoConnectEnabled()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    :goto_4
    const-string/jumbo v17, "cellular_to_wlan"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v7/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0e0017

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getCellularToWlanValue()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v10}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->updateCellToWlanSummary(Landroid/support/v7/preference/Preference;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    :goto_5
    const-string/jumbo v17, "wlan_to_cellular_hint"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0e001a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->isWlanToCellHintEnable()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    :goto_6
    const-string/jumbo v17, "notify_ap_connected"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0e0018

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->ifNotifyConnect()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_6
    :goto_7
    const-string/jumbo v17, "cellular_to_wlan_hint"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0e0019

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->isCellularToWlanHintEnable()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_7
    :goto_8
    return-void

    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_9
    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v17, "AdvancedWifiSettings"

    const-string/jumbo v18, "Fail to get priority pref..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v2, v11}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v17, "AdvancedWifiSettings"

    const-string/jumbo v18, "Failed to fetch country code"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_4

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_5

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_6

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_7

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_8
.end method

.method private isAutoConnectEnabled()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_auto_connect_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCellularToWlanHintEnable()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "cellular_to_wlan_hint"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isWlanToCellHintEnable()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wlan_to_cellular_hint"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setApConnectedNotify(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "notify_user_when_connect_cmcc"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private setAutoConnectTypeEnabled(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_auto_connect_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setCellToWlanType(I)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "cellular_to_wlan_type"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0e93

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setCellularToWlanHintEnable(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "cellular_to_wlan_hint"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private setWlanToCellularHintEnable(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wlan_to_cellular_hint"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private updateAutoConnectPref(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->setAutoConnectTypeEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method private updateCellToWlanSummary(Landroid/support/v7/preference/Preference;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateCellularToWifiPrefs(Z)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->updateCellularToWlanHintPref(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "cellular_to_wlan_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->updateCellToWlanSummary(Landroid/support/v7/preference/Preference;I)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateCellularToWlanHintPref(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0, p1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->setCellularToWlanHintEnable(Z)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x68

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c0597

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v0, p0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/flymexx/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mUnavailable:Z

    new-instance v0, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f08007a

    invoke-virtual {p0, v0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "wifi_countrycode"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    iget-object v9, p0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v6, v10}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string/jumbo v6, "wlan_to_cellular_hint"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, p2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->setWlanToCellularHintEnable(Z)V

    :cond_1
    const-string/jumbo v6, "auto_connect_type"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, p2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->setAutoConnectTypeEnabled(Z)V

    invoke-direct {p0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->updateCellularToWifiPrefs(Z)V

    if-nez v1, :cond_2

    invoke-direct {p0, v7}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->updateCellularToWlanHintPref(Z)V

    :cond_2
    const-string/jumbo v6, "cellular_to_wlan"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->setCellToWlanType(I)V

    iget-object v6, p0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v6, v5}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->updateCellToWlanSummary(Landroid/support/v7/preference/Preference;I)V

    if-nez v5, :cond_6

    move v6, v7

    :goto_0
    invoke-direct {p0, v6}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->updateAutoConnectPref(Z)V

    if-eqz v5, :cond_3

    invoke-direct {p0, v7}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->updateCellularToWlanHintPref(Z)V

    :cond_3
    const-string/jumbo v6, "notify_ap_connected"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, p2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->setApConnectedNotify(Z)V

    :cond_4
    const-string/jumbo v6, "cellular_to_wlan_hint"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->setCellularToWlanHintEnable(Z)V

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0e8f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :cond_5
    return v7

    :catch_0
    move-exception v3

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0c0295

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    return v8

    :cond_6
    move v6, v8

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/RestrictedSettingsFragment;->onResume()V

    iget-boolean v0, p0, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->mUnavailable:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->initPreferences()V

    :cond_0
    return-void
.end method
