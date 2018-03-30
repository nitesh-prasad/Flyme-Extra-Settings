.class public Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "NotificationLightSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference$ItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$1;,
        Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$Package;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER:Lorg/cyanogenmod/cmparts/PartsUpdater$Refreshable$SummaryProvider;


# instance fields
.field private mApplicationPrefList:Landroid/support/v7/preference/PreferenceGroup;

.field private mAutoGenerateColors:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

.field private mCallPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

.field private mCustomEnabledPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

.field private mDefaultColor:I

.field private mDefaultLedOff:I

.field private mDefaultLedOn:I

.field private mDefaultPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

.field private mEnabledPref:Lcyanogenmod/preference/SystemSettingSwitchPreference;

.field private mLedCanPulse:Z

.field private mMenu:Landroid/view/Menu;

.field private mMultiColorLed:Z

.field private mMultipleLedsEnabledPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

.field private mNotificationLedBrightnessPref:Landroid/support/v7/preference/PreferenceScreen;

.field private mPackageAdapter:Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;

.field private mPackageList:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$Package;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOnLightsPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

.field private mVoicemailPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;


# direct methods
.method static synthetic -wrap0(Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->addCustomApplicationPref(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->removeCustomApplicationPref(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$1;

    invoke-direct {v0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$1;-><init>()V

    sput-object v0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->SUMMARY_PROVIDER:Lorg/cyanogenmod/cmparts/PartsUpdater$Refreshable$SummaryProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private addCustomApplicationPref(Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$Package;

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getInitialColorForPackage(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$Package;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$Package;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    :cond_0
    return-void
.end method

.method private getInitialColorForPackage(Ljava/lang/String;)I
    .locals 8

    const/4 v5, 0x1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "notification_light_color_auto"

    iget-boolean v4, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mMultiColorLed:Z

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v6, v7, v4}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultColor:I

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v4, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcyanogenmod/util/ColorUtils;->generateAlertColorFromDrawable(Landroid/graphics/drawable/Drawable;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_2
    return v1

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private parsePackageList()Z
    .locals 8

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "notification_light_pulse_custom_values"

    invoke-static {v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    iput-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    if-eqz v1, :cond_3

    const-string/jumbo v5, "\\|"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$Package;->fromString(Ljava/lang/String;)Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$Package;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    iget-object v7, v3, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    return v4
.end method

.method private refreshCustomApplicationPrefs()V
    .locals 14

    const/4 v13, 0x0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->parsePackageList()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$Package;

    :try_start_0
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, v8, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    new-instance v0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    iget-object v2, v8, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$Package;->color:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v8, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$Package;->timeon:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v8, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$Package;->timeoff:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    iget-object v2, v8, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->setKey(Ljava/lang/String;)V

    iget-object v2, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->setPersistent(Z)V

    invoke-virtual {v0, p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v0, p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->setOnLongClickListener(Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference$ItemLongClickListener;)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v10, Landroid/support/v7/preference/Preference;

    invoke-direct {v10, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v12, v2, v13

    invoke-static {v11, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v13}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v10}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method private refreshDefault()V
    .locals 12

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v10, "notification_light_pulse_default_color"

    iget v11, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v10, "notification_light_pulse_default_led_on"

    iget v11, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v10, "notification_light_pulse_default_led_off"

    iget v11, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    invoke-virtual {v10, v3, v6, v5}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mCallPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    if-eqz v10, :cond_0

    const-string/jumbo v10, "notification_light_pulse_call_color"

    iget v11, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v10, "notification_light_pulse_call_led_on"

    iget v11, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v10, "notification_light_pulse_call_led_off"

    iget v11, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mCallPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    invoke-virtual {v10, v0, v2, v1}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    :cond_0
    iget-object v10, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mVoicemailPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    if-eqz v10, :cond_1

    const-string/jumbo v10, "notification_light_pulse_vmail_color"

    iget v11, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v10, "notification_light_pulse_vmail_led_on"

    iget v11, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v10, "notification_light_pulse_vmail_led_off"

    iget v11, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mVoicemailPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    invoke-virtual {v10, v7, v9, v8}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    :cond_1
    iget-boolean v10, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mLedCanPulse:Z

    if-nez v10, :cond_2

    iget-boolean v10, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mMultiColorLed:Z

    if-eqz v10, :cond_3

    :cond_2
    const-string/jumbo v10, "applications_list"

    invoke-virtual {p0, v10}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v10, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    :cond_3
    return-void
.end method

.method private removeCustomApplicationPref(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    :cond_0
    return-void
.end method

.method private savePackageList(Z)V
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$Package;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$Package;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "|"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_1

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_light_pulse_custom_values"

    invoke-static {v4, v5, v3}, Lcyanogenmod/providers/CMSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private setChildrenStarted(Landroid/support/v7/preference/PreferenceGroup;Z)V
    .locals 5

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    instance-of v4, v3, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    if-eqz v4, :cond_2

    move-object v0, v3

    check-cast v0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->onStart()V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->onStop()V

    goto :goto_1

    :cond_2
    instance-of v4, v3, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v3, p2}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->setChildrenStarted(Landroid/support/v7/preference/PreferenceGroup;Z)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const v6, 0x7f050009

    invoke-virtual {p0, v6}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    const v7, 0x7f0801b6

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v6, "advanced_section"

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    const-string/jumbo v6, "general_section"

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    const v6, 0x1060110

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    iput v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultColor:I

    const v6, 0x10e005c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    const v6, 0x10e005d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/app/NotificationManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->doLightsSupport(I)Z

    move-result v6

    iput-boolean v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mLedCanPulse:Z

    invoke-virtual {v2, v9}, Landroid/app/NotificationManager;->doLightsSupport(I)Z

    move-result v6

    iput-boolean v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mMultiColorLed:Z

    const-string/jumbo v6, "notification_light_pulse"

    invoke-virtual {p0, v6}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcyanogenmod/preference/SystemSettingSwitchPreference;

    iput-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mEnabledPref:Lcyanogenmod/preference/SystemSettingSwitchPreference;

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mEnabledPref:Lcyanogenmod/preference/SystemSettingSwitchPreference;

    invoke-virtual {v6, p0}, Lcyanogenmod/preference/SystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v6, "default"

    invoke-virtual {p0, v6}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    iput-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    const-string/jumbo v6, "notification_light_color_auto"

    invoke-virtual {p0, v6}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    iput-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mAutoGenerateColors:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    const-string/jumbo v6, "notification_light_brightness_level"

    invoke-virtual {p0, v6}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v6, "notification_light_multiple_leds_enable"

    invoke-virtual {p0, v6}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    iput-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    const-string/jumbo v6, "notification_light_screen_on_enable"

    invoke-virtual {p0, v6}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    iput-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mScreenOnLightsPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mScreenOnLightsPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    invoke-virtual {v6, p0}, Lcyanogenmod/preference/CMSystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v6, "notification_light_pulse_custom_enable"

    invoke-virtual {p0, v6}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    iput-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->doLightsSupport(I)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_0
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->doLightsSupport(I)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_1
    iget-boolean v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mLedCanPulse:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mMultiColorLed:Z

    if-eqz v6, :cond_5

    :cond_0
    iget-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    invoke-virtual {v6, p0}, Lcyanogenmod/preference/CMSystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    invoke-virtual {v6, p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_2
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mLedCanPulse:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mMultiColorLed:Z

    if-eqz v6, :cond_6

    :cond_1
    const-string/jumbo v6, "missed_call"

    invoke-virtual {p0, v6}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    iput-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mCallPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mCallPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    invoke-virtual {v6, p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v6, "voicemail"

    invoke-virtual {p0, v6}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    iput-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mVoicemailPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mVoicemailPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    invoke-virtual {v6, p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_3
    iget-boolean v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mLedCanPulse:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mMultiColorLed:Z

    if-eqz v6, :cond_7

    :cond_2
    const-string/jumbo v6, "applications_list"

    invoke-virtual {p0, v6}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6, v8}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    :goto_4
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v6, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mPackageAdapter:Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-virtual {p0, v9}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->setHasOptionsMenu(Z)V

    iget-boolean v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mMultiColorLed:Z

    if-nez v6, :cond_8

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->resetColors()V

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mAutoGenerateColors:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_5
    new-array v6, v9, [Landroid/net/Uri;

    const-string/jumbo v7, "notification_light_pulse"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v6}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->watch([Landroid/net/Uri;)V

    return-void

    :cond_3
    iget-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/support/v7/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    invoke-virtual {v6, p0}, Lcyanogenmod/preference/CMSystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    :cond_5
    iget-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultPref:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v6, "phone_list"

    invoke-virtual {p0, v6}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string/jumbo v6, "applications_list"

    invoke-virtual {p0, v6}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iget-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mAutoGenerateColors:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    invoke-virtual {v6, p0}, Lcyanogenmod/preference/CMSystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    new-array v6, v9, [Landroid/net/Uri;

    const-string/jumbo v7, "notification_light_color_auto"

    invoke-static {v7}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v6}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->watch([Landroid/net/Uri;)V

    goto :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mPackageAdapter:Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v3, 0x7f08017d

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v3, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$3;

    invoke-direct {v3, p0, v1}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$3;-><init>(Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mMenu:Landroid/view/Menu;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mMenu:Landroid/view/Menu;

    const v1, 0x7f08017c

    invoke-interface {v0, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020076

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    return-void
.end method

.method public onItemLongClick(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0801a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801a3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$2;

    invoke-direct {v2, p0, p1}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$2;-><init>(Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;Ljava/lang/String;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->showDialog(I)V

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mEnabledPref:Lcyanogenmod/preference/SystemSettingSwitchPreference;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/support/v7/preference/PreferenceScreen;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mScreenOnLightsPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mAutoGenerateColors:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    if-eq p1, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getOnValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getOffValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->updateValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mEnabledPref:Lcyanogenmod/preference/SystemSettingSwitchPreference;

    invoke-virtual {v1}, Lcyanogenmod/preference/SystemSettingSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcyanogenmod/preference/CMSystemSettingSwitchPreference;

    invoke-virtual {v1}, Lcyanogenmod/preference/CMSystemSettingSwitchPreference;->isChecked()Z

    move-result v0

    :goto_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->refreshDefault()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->setChildrenStarted(Landroid/support/v7/preference/PreferenceGroup;Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onStop()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->setChildrenStarted(Landroid/support/v7/preference/PreferenceGroup;Z)V

    return-void
.end method

.method protected resetColors()V
    .locals 3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_light_pulse_default_color"

    iget v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "notification_light_pulse_call_color"

    iget v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "notification_light_pulse_vmail_color"

    iget v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->refreshDefault()V

    return-void
.end method

.method protected updateValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "notification_light_pulse_default_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "notification_light_pulse_default_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "notification_light_pulse_default_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->refreshDefault()V

    return-void

    :cond_0
    const-string/jumbo v2, "missed_call"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "notification_light_pulse_call_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "notification_light_pulse_call_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "notification_light_pulse_call_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->refreshDefault()V

    return-void

    :cond_1
    const-string/jumbo v2, "voicemail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "notification_light_pulse_vmail_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "notification_light_pulse_vmail_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "notification_light_pulse_vmail_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->refreshDefault()V

    return-void

    :cond_2
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$Package;

    if-eqz v0, :cond_3

    iput-object p2, v0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$Package;->color:Ljava/lang/Integer;

    iput-object p3, v0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$Package;->timeon:Ljava/lang/Integer;

    iput-object p4, v0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$Package;->timeoff:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    :cond_3
    return-void
.end method
