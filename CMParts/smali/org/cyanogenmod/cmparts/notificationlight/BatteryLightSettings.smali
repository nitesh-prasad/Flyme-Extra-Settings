.class public Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "BatteryLightSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings$1;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER:Lorg/cyanogenmod/cmparts/PartsUpdater$Refreshable$SummaryProvider;


# instance fields
.field private mFullColorPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

.field private mLightEnabledPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

.field private mLowColorPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

.field private mMediumColorPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

.field private mPulseEnabledPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings$1;

    invoke-direct {v0}, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings$1;-><init>()V

    sput-object v0, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->SUMMARY_PROVIDER:Lorg/cyanogenmod/cmparts/PartsUpdater$Refreshable$SummaryProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private refreshDefault()V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->mLowColorPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    if-eqz v5, :cond_0

    const-string/jumbo v5, "battery_light_low_color"

    const v6, 0x10e005e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->mLowColorPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, v1, v7, v7, v7}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->setAllValues(IIIZ)V

    :cond_0
    iget-object v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->mMediumColorPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    if-eqz v5, :cond_1

    const-string/jumbo v5, "battery_light_medium_color"

    const v6, 0x10e005f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->mMediumColorPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, v2, v7, v7, v7}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->setAllValues(IIIZ)V

    :cond_1
    iget-object v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->mFullColorPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    if-eqz v5, :cond_2

    const-string/jumbo v5, "battery_light_full_color"

    const v6, 0x10e0060

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->mFullColorPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, v0, v7, v7, v7}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->setAllValues(IIIZ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const v3, 0x7f050003

    invoke-virtual {p0, v3}, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0801b0

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "general_section"

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    const-string/jumbo v3, "battery_light_enabled"

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->mLightEnabledPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    const-string/jumbo v3, "battery_light_pulse"

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->mPulseEnabledPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->doLightsSupport(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->doLightsSupport(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->mPulseEnabledPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->doLightsSupport(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v5}, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->setHasOptionsMenu(Z)V

    const-string/jumbo v3, "low_color"

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->mLowColorPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->mLowColorPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    invoke-virtual {v3, p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v3, "medium_color"

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->mMediumColorPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->mMediumColorPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    invoke-virtual {v3, p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v3, "full_color"

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->mFullColorPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->mFullColorPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    invoke-virtual {v3, p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    new-array v3, v5, [Landroid/net/Uri;

    const-string/jumbo v4, "battery_light_enabled"

    invoke-static {v4}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v3}, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->watch([Landroid/net/Uri;)V

    return-void

    :cond_2
    const-string/jumbo v3, "colors_list"

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->resetColors()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->doLightsSupport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const v2, 0x7f08017e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020082

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x72

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->resetToDefaults()V

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p1

    check-cast v0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->updateValues(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->refreshDefault()V

    return-void
.end method

.method protected resetColors()V
    .locals 4

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v2, "battery_light_low_color"

    const v3, 0x10e005e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "battery_light_medium_color"

    const v3, 0x10e005f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "battery_light_full_color"

    const v3, 0x10e0060

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->refreshDefault()V

    return-void
.end method

.method protected resetToDefaults()V
    .locals 4

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const v3, 0x7f0a0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->mLightEnabledPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->mLightEnabledPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    invoke-virtual {v3, v0}, Lcyanogenmod/preference/CMSystemSettingSwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->mPulseEnabledPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->mPulseEnabledPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    invoke-virtual {v3, v1}, Lcyanogenmod/preference/CMSystemSettingSwitchPreference;->setChecked(Z)V

    :cond_1
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->resetColors()V

    return-void
.end method

.method protected updateValues(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/BatteryLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "battery_light_low_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "medium_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "battery_light_medium_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "full_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "battery_light_full_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
