.class public Lorg/cyanogenmod/cmparts/input/ButtonSettings;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "ButtonSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;
    }
.end annotation


# instance fields
.field private mAppSwitchLongPressAction:Landroid/support/v7/preference/ListPreference;

.field private mAppSwitchPressAction:Landroid/support/v7/preference/ListPreference;

.field private mAssistLongPressAction:Landroid/support/v7/preference/ListPreference;

.field private mAssistPressAction:Landroid/support/v7/preference/ListPreference;

.field private mCameraLaunch:Landroid/support/v14/preference/SwitchPreference;

.field private mCameraSleepOnRelease:Landroid/support/v14/preference/SwitchPreference;

.field private mCameraWakeScreen:Landroid/support/v14/preference/SwitchPreference;

.field private mDisableNavigationKeys:Landroid/support/v14/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHomeAnswerCall:Landroid/support/v14/preference/SwitchPreference;

.field private mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

.field private mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

.field private mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

.field private mMenuPressAction:Landroid/support/v7/preference/ListPreference;

.field private mNavigationBarLeftPref:Landroid/support/v14/preference/SwitchPreference;

.field private mNavigationHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

.field private mNavigationHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

.field private mNavigationPreferencesCat:Landroid/support/v7/preference/PreferenceCategory;

.field private mNavigationRecentsLongPressAction:Landroid/support/v7/preference/ListPreference;

.field private mPowerEndCall:Landroid/support/v14/preference/SwitchPreference;

.field private mSwapVolumeButtons:Landroid/support/v14/preference/SwitchPreference;

.field private mTorchLongPressPowerGesture:Landroid/support/v14/preference/SwitchPreference;

.field private mTorchLongPressPowerTimeout:Landroid/support/v7/preference/ListPreference;

.field private mVolumeKeyCursorControl:Landroid/support/v7/preference/ListPreference;

.field private mVolumeMusicControls:Landroid/support/v14/preference/SwitchPreference;

.field private mVolumeWakeScreen:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/input/ButtonSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mDisableNavigationKeys:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/cmparts/input/ButtonSettings;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationPreferencesCat:Landroid/support/v7/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/cmparts/input/ButtonSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->updateDisableNavkeysCategories(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private handleListChange(Landroid/support/v7/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p3, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private handleSystemListChange(Landroid/support/v7/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p3, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private handleToggleHomeButtonAnswersCallPreferenceClick()V
    .locals 3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ring_home_button_behavior"

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mHomeAnswerCall:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "incall_power_button_behavior"

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mPowerEndCall:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-object v0
.end method

.method private initList(Ljava/lang/String;Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;)Landroid/support/v7/preference/ListPreference;
    .locals 1

    invoke-virtual {p2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->initList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v0

    return-object v0
.end method

.method private initRecentsLongPressAction(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "recents_long_press_activity"

    invoke-static {v14, v15}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    if-nez v1, :cond_0

    const v14, 0x7f08020d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v14, "cyanogenmod.intent.action.RECENTS_LONG_PRESS"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v14, 0x10000

    invoke-virtual {v10, v8, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_1

    const v14, 0x7f08020d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "recents_long_press_activity"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcyanogenmod/providers/CMSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    return-object v9

    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    goto :goto_0

    :cond_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    new-array v3, v14, [Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    new-array v13, v14, [Ljava/lang/CharSequence;

    const v14, 0x7f08020d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v3, v15

    const-string/jumbo v14, ""

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const/4 v14, 0x0

    aget-object v14, v13, v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    :try_start_0
    iget-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v3, v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v4, Landroid/content/ComponentName;

    iget-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    if-eqz v12, :cond_2

    invoke-virtual {v4, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    aget-object v14, v3, v5

    invoke-virtual {v9, v14}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    aget-object v14, v13, v5

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v14, "SystemSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error package not found: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v14, v3, v5

    goto :goto_2

    :cond_3
    invoke-virtual {v9, v3}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v13}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-object v9
.end method

.method public static restoreKeyDisabler(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "dev_force_show_navbar"

    invoke-static {v2, v3, v1}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {p0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->writeDisableNavkeysOption(Landroid/content/Context;Z)V

    return-void
.end method

.method private updateDisableNavkeysCategories(Z)V
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "home_key"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v7, "back_key"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v7, "menu_key"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v7, "assist_key"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v7, "app_switch_key"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v7, "button_backlight"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_9

    move v7, v8

    :goto_0
    invoke-virtual {v3, v7}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->setEnabled(Z)V

    invoke-virtual {v3}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->updateSummary()V

    :cond_0
    iget-object v7, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationPreferencesCat:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v7, :cond_1

    if-eqz p1, :cond_a

    iget-object v7, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationPreferencesCat:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v7, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationPreferencesCat:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    :goto_1
    if-eqz v4, :cond_4

    iget-object v7, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mHomeAnswerCall:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v7, :cond_2

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mHomeAnswerCall:Landroid/support/v14/preference/SwitchPreference;

    if-eqz p1, :cond_b

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    iget-object v7, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v7, :cond_3

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-eqz p1, :cond_c

    move v7, v8

    :goto_3
    invoke-virtual {v10, v7}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    :cond_3
    iget-object v7, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v7, :cond_4

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-eqz p1, :cond_d

    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    :cond_4
    if-eqz v2, :cond_5

    if-eqz p1, :cond_e

    move v7, v8

    :goto_5
    invoke-virtual {v2, v7}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    :cond_5
    if-eqz v5, :cond_6

    if-eqz p1, :cond_f

    move v7, v8

    :goto_6
    invoke-virtual {v5, v7}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    :cond_6
    if-eqz v1, :cond_7

    if-eqz p1, :cond_10

    move v7, v8

    :goto_7
    invoke-virtual {v1, v7}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    :cond_7
    if-eqz v0, :cond_8

    if-eqz p1, :cond_11

    :goto_8
    invoke-virtual {v0, v8}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    :cond_8
    return-void

    :cond_9
    move v7, v9

    goto :goto_0

    :cond_a
    iget-object v7, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationPreferencesCat:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v7, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationPreferencesCat:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_b
    move v7, v9

    goto :goto_2

    :cond_c
    move v7, v9

    goto :goto_3

    :cond_d
    move v7, v9

    goto :goto_4

    :cond_e
    move v7, v9

    goto :goto_5

    :cond_f
    move v7, v9

    goto :goto_6

    :cond_10
    move v7, v9

    goto :goto_7

    :cond_11
    move v8, v9

    goto :goto_8
.end method

.method private updateDisableNavkeysOption()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "dev_force_show_navbar"

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mDisableNavigationKeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static writeDisableNavkeysOption(Landroid/content/Context;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "dev_force_show_navbar"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcyanogenmod/providers/CMSettings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 51

    invoke-super/range {p0 .. p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v48, 0x7f050004

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x10e0068

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x10e0069

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    const/16 v48, 0x1a

    invoke-static/range {v48 .. v48}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v24

    and-int/lit8 v48, v11, 0x1

    if-eqz v48, :cond_13

    const/16 v21, 0x1

    :goto_0
    and-int/lit8 v48, v11, 0x2

    if-eqz v48, :cond_14

    const/16 v19, 0x1

    :goto_1
    and-int/lit8 v48, v11, 0x4

    if-eqz v48, :cond_15

    const/16 v22, 0x1

    :goto_2
    and-int/lit8 v48, v11, 0x8

    if-eqz v48, :cond_16

    const/16 v18, 0x1

    :goto_3
    and-int/lit8 v48, v11, 0x10

    if-eqz v48, :cond_17

    const/16 v17, 0x1

    :goto_4
    and-int/lit8 v48, v11, 0x20

    if-eqz v48, :cond_18

    const/16 v20, 0x1

    :goto_5
    and-int/lit8 v48, v11, 0x40

    if-eqz v48, :cond_19

    const/16 v25, 0x1

    :goto_6
    and-int/lit8 v48, v12, 0x1

    if-eqz v48, :cond_1a

    const/16 v41, 0x1

    :goto_7
    and-int/lit8 v48, v12, 0x2

    if-eqz v48, :cond_1b

    const/16 v39, 0x1

    :goto_8
    and-int/lit8 v48, v12, 0x4

    if-eqz v48, :cond_1c

    const/16 v42, 0x1

    :goto_9
    and-int/lit8 v48, v12, 0x8

    if-eqz v48, :cond_1d

    const/16 v38, 0x1

    :goto_a
    and-int/lit8 v48, v12, 0x10

    if-eqz v48, :cond_1e

    const/16 v37, 0x1

    :goto_b
    and-int/lit8 v48, v12, 0x20

    if-eqz v48, :cond_1f

    const/16 v40, 0x1

    :goto_c
    and-int/lit8 v48, v12, 0x40

    if-eqz v48, :cond_20

    const/16 v43, 0x1

    :goto_d
    const/16 v16, 0x0

    const-string/jumbo v48, "power_key"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v48, "home_key"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v48, "back_key"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v48, "menu_key"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v30

    check-cast v30, Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v48, "assist_key"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v48, "app_switch_key"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v48, "volume_keys"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v46

    check-cast v46, Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v48, "camera_key"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v48, "power_end_call"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v48

    check-cast v48, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mPowerEndCall:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v48, "torch_long_press_power_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v48

    check-cast v48, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mTorchLongPressPowerGesture:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v48, "torch_long_press_power_timeout"

    const/16 v49, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v45

    const-string/jumbo v48, "torch_long_press_power_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->initList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mTorchLongPressPowerTimeout:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v48, "home_answer_call"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v48

    check-cast v48, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mHomeAnswerCall:Landroid/support/v14/preference/SwitchPreference;

    new-instance v48, Landroid/os/Handler;

    invoke-direct/range {v48 .. v48}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mHandler:Landroid/os/Handler;

    const-string/jumbo v48, "disable_nav_keys"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v48

    check-cast v48, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mDisableNavigationKeys:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v48, "navigation_bar_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v48

    check-cast v48, Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationPreferencesCat:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v48, "navigation_bar_left"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v48

    check-cast v48, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationBarLeftPref:Landroid/support/v14/preference/SwitchPreference;

    const v48, 0x10e0064

    move-object/from16 v0, v35

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v48

    invoke-static/range {v48 .. v48}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->fromIntSafe(I)Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    move-result-object v10

    const v48, 0x10e0065

    move-object/from16 v0, v35

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v48

    invoke-static/range {v48 .. v48}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->fromIntSafe(I)Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    move-result-object v9

    const-string/jumbo v48, "key_home_long_press_action"

    move-object/from16 v0, v36

    move-object/from16 v1, v48

    invoke-static {v0, v1, v10}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;)Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    move-result-object v28

    const-string/jumbo v48, "key_home_double_tap_action"

    move-object/from16 v0, v36

    move-object/from16 v1, v48

    invoke-static {v0, v1, v9}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;)Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    move-result-object v27

    const-string/jumbo v48, "navigation_home_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->initList(Ljava/lang/String;Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;)Landroid/support/v7/preference/ListPreference;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v48, "navigation_home_double_tap"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->initList(Ljava/lang/String;Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;)Landroid/support/v7/preference/ListPreference;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v48, "navigation_recents_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->initRecentsLongPressAction(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v15

    const/16 v31, 0x0

    const/16 v48, 0x20

    move/from16 v0, v48

    invoke-virtual {v15, v0}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v48

    if-eqz v48, :cond_22

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v47

    invoke-interface/range {v47 .. v47}, Landroid/view/IWindowManager;->needsNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v31

    :goto_e
    if-eqz v31, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mDisableNavigationKeys:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v48, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_f
    if-eqz v24, :cond_23

    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lorg/cyanogenmod/cmparts/utils/TelephonyUtils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v48

    if-nez v48, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mPowerEndCall:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v48, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/16 v48, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mPowerEndCall:Landroid/support/v14/preference/SwitchPreference;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lorg/cyanogenmod/internal/util/QSUtils;->deviceSupportsFlashLight(Landroid/content/Context;)Z

    move-result v48

    if-nez v48, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mTorchLongPressPowerGesture:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v48, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mTorchLongPressPowerTimeout:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v48, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    :goto_10
    if-eqz v21, :cond_24

    if-nez v41, :cond_2

    const-string/jumbo v48, "home_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v48

    move-object/from16 v0, v26

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lorg/cyanogenmod/cmparts/utils/TelephonyUtils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v48

    if-nez v48, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mHomeAnswerCall:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v48, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/16 v48, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mHomeAnswerCall:Landroid/support/v14/preference/SwitchPreference;

    :cond_3
    const-string/jumbo v48, "hardware_keys_home_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->initList(Ljava/lang/String;Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;)Landroid/support/v7/preference/ListPreference;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v48, "hardware_keys_home_double_tap"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->initList(Ljava/lang/String;Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;)Landroid/support/v7/preference/ListPreference;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mDisableNavigationKeys:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v48

    if-eqz v48, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    :cond_4
    const/16 v16, 0x1

    :goto_11
    if-eqz v19, :cond_25

    if-nez v39, :cond_5

    const-string/jumbo v48, "back_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v5, v0}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    :goto_12
    if-eqz v22, :cond_27

    if-nez v42, :cond_6

    const-string/jumbo v48, "menu_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v48

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_6
    const-string/jumbo v48, "key_menu_action"

    sget-object v49, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->MENU:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    move-object/from16 v0, v36

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-static {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;)Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    move-result-object v34

    const-string/jumbo v48, "hardware_keys_menu_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->initList(Ljava/lang/String;Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;)Landroid/support/v7/preference/ListPreference;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mMenuPressAction:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v49, "key_menu_long_press_action"

    if-eqz v18, :cond_26

    sget-object v48, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->NOTHING:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    :goto_13
    move-object/from16 v0, v36

    move-object/from16 v1, v49

    move-object/from16 v2, v48

    invoke-static {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;)Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    move-result-object v29

    const-string/jumbo v48, "hardware_keys_menu_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->initList(Ljava/lang/String;Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;)Landroid/support/v7/preference/ListPreference;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    const/16 v16, 0x1

    :goto_14
    if-eqz v18, :cond_28

    if-nez v38, :cond_7

    const-string/jumbo v48, "assist_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_7
    const-string/jumbo v48, "key_assist_action"

    sget-object v49, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->SEARCH:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    move-object/from16 v0, v36

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-static {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;)Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    move-result-object v34

    const-string/jumbo v48, "hardware_keys_assist_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->initList(Ljava/lang/String;Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;)Landroid/support/v7/preference/ListPreference;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mAssistPressAction:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v48, "key_assist_long_press_action"

    sget-object v49, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->VOICE_SEARCH:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    move-object/from16 v0, v36

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-static {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;)Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    move-result-object v29

    const-string/jumbo v48, "hardware_keys_assist_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->initList(Ljava/lang/String;Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;)Landroid/support/v7/preference/ListPreference;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mAssistLongPressAction:Landroid/support/v7/preference/ListPreference;

    const/16 v16, 0x1

    :goto_15
    if-eqz v17, :cond_29

    if-nez v37, :cond_8

    const-string/jumbo v48, "app_switch_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_8
    const-string/jumbo v48, "key_app_switch_action"

    sget-object v49, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->APP_SWITCH:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    move-object/from16 v0, v36

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-static {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;)Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    move-result-object v34

    const-string/jumbo v48, "hardware_keys_app_switch_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->initList(Ljava/lang/String;Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;)Landroid/support/v7/preference/ListPreference;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mAppSwitchPressAction:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v48, "key_app_switch_long_press_action"

    sget-object v49, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->SPLIT_SCREEN:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    move-object/from16 v0, v36

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-static {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;)Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    move-result-object v29

    const-string/jumbo v48, "hardware_keys_app_switch_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->initList(Ljava/lang/String;Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;)Landroid/support/v7/preference/ListPreference;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mAppSwitchLongPressAction:Landroid/support/v7/preference/ListPreference;

    const/16 v16, 0x1

    :goto_16
    if-eqz v20, :cond_2a

    const-string/jumbo v48, "camera_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v48

    check-cast v48, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mCameraWakeScreen:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v48, "camera_sleep_on_release"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v48

    check-cast v48, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mCameraSleepOnRelease:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v48, "camera_launch"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v48

    check-cast v48, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mCameraLaunch:Landroid/support/v14/preference/SwitchPreference;

    if-nez v40, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mCameraWakeScreen:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v48, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_9
    const v48, 0x1120052

    move-object/from16 v0, v35

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v48

    if-eqz v48, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mCameraSleepOnRelease:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v48, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_a
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lorg/cyanogenmod/cmparts/utils/DeviceUtils;->hasVolumeRocker(Landroid/content/Context;)Z

    move-result v48

    if-eqz v48, :cond_2c

    if-nez v43, :cond_b

    const-string/jumbo v48, "volume_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v48

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lorg/cyanogenmod/cmparts/utils/TelephonyUtils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v48

    if-nez v48, :cond_c

    const-string/jumbo v48, "volume_answer_call"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v48

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_c
    const-string/jumbo v48, "volume_key_cursor_control"

    const/16 v49, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v48, "volume_key_cursor_control"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v8}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->initList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mVolumeKeyCursorControl:Landroid/support/v7/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v48

    const-string/jumbo v49, "swap_volume_keys_on_rotation"

    const/16 v50, 0x0

    invoke-static/range {v48 .. v50}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v44

    const-string/jumbo v48, "swap_volume_buttons"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v48

    check-cast v48, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mSwapVolumeButtons:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mSwapVolumeButtons:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v48, v0

    if-eqz v48, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mSwapVolumeButtons:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v49, v0

    if-lez v44, :cond_2b

    const/16 v48, 0x1

    :goto_18
    move-object/from16 v0, v49

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_d
    :goto_19
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v48

    const-string/jumbo v49, "dev_force_show_navbar"

    const/16 v50, 0x0

    invoke-static/range {v48 .. v50}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_2d

    const/4 v14, 0x1

    :goto_1a
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v48

    invoke-interface/range {v48 .. v48}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v48

    if-nez v48, :cond_2e

    move/from16 v23, v14

    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lorg/cyanogenmod/internal/util/ScreenType;->isPhone(Landroid/content/Context;)Z

    move-result v48

    if-nez v48, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationPreferencesCat:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationBarLeftPref:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_e
    if-nez v23, :cond_f

    if-nez v31, :cond_2f

    const/16 v48, 0x20

    move/from16 v0, v48

    invoke-virtual {v15, v0}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v48

    if-eqz v48, :cond_2f

    :cond_f
    :goto_1c
    const-string/jumbo v48, "button_backlight"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;

    invoke-virtual {v6}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->isButtonSupported()Z

    move-result v48

    if-nez v48, :cond_10

    invoke-virtual {v6}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->isKeyboardSupported()Z

    move-result v48

    if-eqz v48, :cond_30

    :cond_10
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mCameraWakeScreen:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v48, v0

    if-eqz v48, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mCameraSleepOnRelease:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v48, v0

    if-eqz v48, :cond_11

    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x1120052

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v48

    if-eqz v48, :cond_31

    :cond_11
    :goto_1e
    const-string/jumbo v48, "volume_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v48

    check-cast v48, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mVolumeWakeScreen:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v48, "volbtn_music_controls"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v48

    check-cast v48, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mVolumeMusicControls:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mVolumeWakeScreen:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v48, v0

    if-eqz v48, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mVolumeMusicControls:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v48, v0

    if-eqz v48, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mVolumeMusicControls:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v48, v0

    const-string/jumbo v49, "volume_wake_screen"

    invoke-virtual/range {v48 .. v49}, Landroid/support/v14/preference/SwitchPreference;->setDependency(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mVolumeWakeScreen:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v48, v0

    const/16 v49, 0x1

    invoke-virtual/range {v48 .. v49}, Landroid/support/v14/preference/SwitchPreference;->setDisableDependentsState(Z)V

    :cond_12
    return-void

    :cond_13
    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_1

    :cond_15
    const/16 v22, 0x0

    goto/16 :goto_2

    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_3

    :cond_17
    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_18
    const/16 v20, 0x0

    goto/16 :goto_5

    :cond_19
    const/16 v25, 0x0

    goto/16 :goto_6

    :cond_1a
    const/16 v41, 0x0

    goto/16 :goto_7

    :cond_1b
    const/16 v39, 0x0

    goto/16 :goto_8

    :cond_1c
    const/16 v42, 0x0

    goto/16 :goto_9

    :cond_1d
    const/16 v38, 0x0

    goto/16 :goto_a

    :cond_1e
    const/16 v37, 0x0

    goto/16 :goto_b

    :cond_1f
    const/16 v40, 0x0

    goto/16 :goto_c

    :cond_20
    const/16 v43, 0x0

    goto/16 :goto_d

    :cond_21
    invoke-direct/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->updateDisableNavkeysOption()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationPreferencesCat:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mDisableNavigationKeys:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mDisableNavigationKeys:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->updateDisableNavkeysCategories(Z)V

    goto/16 :goto_f

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mDisableNavigationKeys:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v48, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_f

    :cond_23
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_10

    :cond_24
    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_11

    :cond_25
    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_12

    :cond_26
    sget-object v48, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->SEARCH:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    goto/16 :goto_13

    :cond_27
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_14

    :cond_28
    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_15

    :cond_29
    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_16

    :cond_2a
    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_17

    :cond_2b
    const/16 v48, 0x0

    goto/16 :goto_18

    :cond_2c
    move-object/from16 v0, v33

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_19

    :cond_2d
    const/4 v14, 0x0

    goto/16 :goto_1a

    :cond_2e
    const/16 v23, 0x1

    goto/16 :goto_1b

    :cond_2f
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationPreferencesCat:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v48, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1c

    :catch_0
    move-exception v13

    const-string/jumbo v48, "SystemSettings"

    const-string/jumbo v49, "Error getting navigation bar status"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    :cond_30
    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1d

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mCameraSleepOnRelease:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v48, v0

    const-string/jumbo v49, "camera_wake_screen"

    invoke-virtual/range {v48 .. v49}, Landroid/support/v14/preference/SwitchPreference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_1e

    :catch_1
    move-exception v13

    goto/16 :goto_e
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-eq p1, v3, :cond_0

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_1

    :cond_0
    check-cast p1, Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v3, "key_home_long_press_action"

    invoke-direct {p0, p1, p2, v3}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->handleListChange(Landroid/support/v7/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    return v5

    :cond_1
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-eq p1, v3, :cond_2

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_3

    :cond_2
    check-cast p1, Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v3, "key_home_double_tap_action"

    invoke-direct {p0, p1, p2, v3}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->handleListChange(Landroid/support/v7/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    return v5

    :cond_3
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mMenuPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_4

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mMenuPressAction:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v4, "key_menu_action"

    invoke-direct {p0, v3, p2, v4}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->handleListChange(Landroid/support/v7/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    return v5

    :cond_4
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_5

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v4, "key_menu_long_press_action"

    invoke-direct {p0, v3, p2, v4}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->handleListChange(Landroid/support/v7/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    return v5

    :cond_5
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mAssistPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_6

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mAssistPressAction:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v4, "key_assist_action"

    invoke-direct {p0, v3, p2, v4}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->handleListChange(Landroid/support/v7/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    return v5

    :cond_6
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mAssistLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_7

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mAssistLongPressAction:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v4, "key_assist_long_press_action"

    invoke-direct {p0, v3, p2, v4}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->handleListChange(Landroid/support/v7/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    return v5

    :cond_7
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mAppSwitchPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_8

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mAppSwitchPressAction:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v4, "key_app_switch_action"

    invoke-direct {p0, v3, p2, v4}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->handleListChange(Landroid/support/v7/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    return v5

    :cond_8
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mAppSwitchLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_9

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mAppSwitchLongPressAction:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v4, "key_app_switch_long_press_action"

    invoke-direct {p0, v3, p2, v4}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->handleListChange(Landroid/support/v7/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    return v5

    :cond_9
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mVolumeKeyCursorControl:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_a

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mVolumeKeyCursorControl:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v4, "volume_key_cursor_control"

    invoke-direct {p0, v3, p2, v4}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->handleSystemListChange(Landroid/support/v7/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    return v5

    :cond_a
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_c

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v2, v3, v0

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    const/4 v1, 0x0

    :cond_b
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "recents_long_press_activity"

    invoke-static {v3, v4, v1}, Lcyanogenmod/providers/CMSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return v5

    :cond_c
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mTorchLongPressPowerTimeout:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_d

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mTorchLongPressPowerTimeout:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v4, "torch_long_press_power_timeout"

    invoke-direct {p0, v3, p2, v4}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->handleListChange(Landroid/support/v7/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    return v5

    :cond_d
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mSwapVolumeButtons:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v5, :cond_4

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mSwapVolumeButtons:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lorg/cyanogenmod/internal/util/ScreenType;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    :goto_0
    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "swap_volume_keys_on_rotation"

    invoke-static {v3, v4, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v3

    return v3

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mDisableNavigationKeys:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_5

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mDisableNavigationKeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mNavigationPreferencesCat:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mDisableNavigationKeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-static {v3, v4}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->writeDisableNavkeysOption(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->updateDisableNavkeysOption()V

    invoke-direct {p0, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->updateDisableNavkeysCategories(Z)V

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mHandler:Landroid/os/Handler;

    new-instance v4, Lorg/cyanogenmod/cmparts/input/ButtonSettings$1;

    invoke-direct {v4, p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$1;-><init>(Lorg/cyanogenmod/cmparts/input/ButtonSettings;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mPowerEndCall:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_6

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    return v2

    :cond_6
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mHomeAnswerCall:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->handleToggleHomeButtonAnswersCallPreferenceClick()V

    return v2
.end method

.method public onResume()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onResume()V

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mPowerEndCall:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "incall_power_button_behavior"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_2

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mPowerEndCall:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v4, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mHomeAnswerCall:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "ring_home_button_behavior"

    invoke-static {v4, v5, v6}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v4, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->mHomeAnswerCall:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
