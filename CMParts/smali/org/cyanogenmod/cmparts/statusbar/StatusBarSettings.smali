.class public Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "StatusBarSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mQuickPulldown:Lcyanogenmod/preference/CMSystemSettingListPreference;

.field private mStatusBarAmPm:Lcyanogenmod/preference/CMSystemSettingListPreference;

.field private mStatusBarBattery:Lcyanogenmod/preference/CMSystemSettingListPreference;

.field private mStatusBarBatteryShowPercent:Lcyanogenmod/preference/CMSystemSettingListPreference;

.field private mStatusBarClock:Lcyanogenmod/preference/CMSystemSettingListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private enableStatusBarBatteryDependents(I)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->mStatusBarBatteryShowPercent:Lcyanogenmod/preference/CMSystemSettingListPreference;

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcyanogenmod/preference/CMSystemSettingListPreference;->setEnabled(Z)V

    return-void
.end method

.method private updateQuickPulldownSummary(I)V
    .locals 5

    const-string/jumbo v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->mQuickPulldown:Lcyanogenmod/preference/CMSystemSettingListPreference;

    invoke-virtual {v1, v0}, Lcyanogenmod/preference/CMSystemSettingListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const v1, 0x7f0802c6

    :goto_1
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const v1, 0x7f0802c5

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v1, 0x7f0802c7

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050012

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "status_bar_clock"

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcyanogenmod/preference/CMSystemSettingListPreference;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->mStatusBarClock:Lcyanogenmod/preference/CMSystemSettingListPreference;

    const-string/jumbo v0, "status_bar_show_battery_percent"

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcyanogenmod/preference/CMSystemSettingListPreference;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->mStatusBarBatteryShowPercent:Lcyanogenmod/preference/CMSystemSettingListPreference;

    const-string/jumbo v0, "status_bar_am_pm"

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcyanogenmod/preference/CMSystemSettingListPreference;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->mStatusBarAmPm:Lcyanogenmod/preference/CMSystemSettingListPreference;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->mStatusBarAmPm:Lcyanogenmod/preference/CMSystemSettingListPreference;

    invoke-virtual {v0, v2}, Lcyanogenmod/preference/CMSystemSettingListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->mStatusBarAmPm:Lcyanogenmod/preference/CMSystemSettingListPreference;

    const v1, 0x7f0802d8

    invoke-virtual {v0, v1}, Lcyanogenmod/preference/CMSystemSettingListPreference;->setSummary(I)V

    :cond_0
    const-string/jumbo v0, "status_bar_battery_style"

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcyanogenmod/preference/CMSystemSettingListPreference;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->mStatusBarBattery:Lcyanogenmod/preference/CMSystemSettingListPreference;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->mStatusBarBattery:Lcyanogenmod/preference/CMSystemSettingListPreference;

    invoke-virtual {v0, p0}, Lcyanogenmod/preference/CMSystemSettingListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->mStatusBarBattery:Lcyanogenmod/preference/CMSystemSettingListPreference;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcyanogenmod/preference/CMSystemSettingListPreference;->getIntValue(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->enableStatusBarBatteryDependents(I)V

    const-string/jumbo v0, "qs_quick_pulldown"

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcyanogenmod/preference/CMSystemSettingListPreference;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->mQuickPulldown:Lcyanogenmod/preference/CMSystemSettingListPreference;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->mQuickPulldown:Lcyanogenmod/preference/CMSystemSettingListPreference;

    invoke-virtual {v0, p0}, Lcyanogenmod/preference/CMSystemSettingListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->mQuickPulldown:Lcyanogenmod/preference/CMSystemSettingListPreference;

    invoke-virtual {v0, v2}, Lcyanogenmod/preference/CMSystemSettingListPreference;->getIntValue(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->updateQuickPulldownSummary(I)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->mQuickPulldown:Lcyanogenmod/preference/CMSystemSettingListPreference;

    if-ne p1, v1, :cond_1

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->updateQuickPulldownSummary(I)V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->mStatusBarBattery:Lcyanogenmod/preference/CMSystemSettingListPreference;

    if-ne p1, v1, :cond_0

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->enableStatusBarBatteryDependents(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->mStatusBarClock:Lcyanogenmod/preference/CMSystemSettingListPreference;

    const v1, 0x7f06003e

    invoke-virtual {v0, v1}, Lcyanogenmod/preference/CMSystemSettingListPreference;->setEntries(I)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/statusbar/StatusBarSettings;->mQuickPulldown:Lcyanogenmod/preference/CMSystemSettingListPreference;

    const v1, 0x7f060047

    invoke-virtual {v0, v1}, Lcyanogenmod/preference/CMSystemSettingListPreference;->setEntries(I)V

    :cond_0
    return-void
.end method
