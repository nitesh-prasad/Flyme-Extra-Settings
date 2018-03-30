.class public Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "PerfProfileSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$1;,
        Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$2;,
        Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER:Lorg/cyanogenmod/cmparts/PartsUpdater$Refreshable$SummaryProvider;


# instance fields
.field private mAnimator:Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;

.field private mAutoPowerSavePref:Landroid/support/v7/preference/ListPreference;

.field private mLastSliderValue:I

.field private mPerAppProfilesPref:Landroid/support/v14/preference/SwitchPreference;

.field private mPerf:Lcyanogenmod/power/PerformanceManager;

.field private mPerfDrawable:Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;

.field private mPerfSeekBar:Lorg/cyanogenmod/cmparts/widget/SeekBarPreference;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSavePref:Landroid/support/v14/preference/SwitchPreference;

.field private final mPowerSaveReceiver:Landroid/content/BroadcastReceiver;

.field private mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/power/PerformanceProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->updatePowerSaveValue()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$2;

    invoke-direct {v0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$2;-><init>()V

    sput-object v0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->SUMMARY_PROVIDER:Lorg/cyanogenmod/cmparts/PartsUpdater$Refreshable$SummaryProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mLastSliderValue:I

    new-instance v0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$1;-><init>(Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPowerSaveReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private updateAutoPowerSaveSummary(I)V
    .locals 2

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mAutoPowerSavePref:Landroid/support/v7/preference/ListPreference;

    if-nez p1, :cond_0

    const v0, 0x7f08032d

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->setSummary(I)V

    return-void

    :cond_0
    const v0, 0x7f08032c

    goto :goto_0
.end method

.method private updateAutoPowerSaveValue()V
    .locals 4

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power_trigger_level"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mAutoPowerSavePref:Landroid/support/v7/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->updateAutoPowerSaveSummary(I)V

    return-void
.end method

.method private updatePerfSettings()V
    .locals 8

    const/4 v7, 0x0

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerfSeekBar:Lorg/cyanogenmod/cmparts/widget/SeekBarPreference;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerf:Lcyanogenmod/power/PerformanceManager;

    invoke-virtual {v3, v7}, Lcyanogenmod/power/PerformanceManager;->getPowerProfile(I)Lcyanogenmod/power/PerformanceProfile;

    move-result-object v1

    :goto_0
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerfSeekBar:Lorg/cyanogenmod/cmparts/widget/SeekBarPreference;

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mProfiles:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/cyanogenmod/cmparts/widget/SeekBarPreference;->setProgress(I)V

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerfSeekBar:Lorg/cyanogenmod/cmparts/widget/SeekBarPreference;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcyanogenmod/power/PerformanceProfile;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f080326

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cyanogenmod/cmparts/widget/SeekBarPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerfSeekBar:Lorg/cyanogenmod/cmparts/widget/SeekBarPreference;

    invoke-virtual {v1}, Lcyanogenmod/power/PerformanceProfile;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cyanogenmod/cmparts/widget/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerfDrawable:Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mProfiles:Ljava/util/List;

    iget v4, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mLastSliderValue:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcyanogenmod/power/PerformanceProfile;

    invoke-virtual {v3}, Lcyanogenmod/power/PerformanceProfile;->getWeight()F

    move-result v2

    invoke-virtual {v1}, Lcyanogenmod/power/PerformanceProfile;->getWeight()F

    move-result v0

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mAnimator:Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;

    invoke-virtual {v3, v2, v0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;->animateRange(FF)V

    :cond_1
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerAppProfilesPref:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerAppProfilesPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Lcyanogenmod/power/PerformanceProfile;->isBoostEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerf:Lcyanogenmod/power/PerformanceManager;

    invoke-virtual {v3}, Lcyanogenmod/power/PerformanceManager;->getActivePowerProfile()Lcyanogenmod/power/PerformanceProfile;

    move-result-object v1

    goto :goto_0
.end method

.method private updatePowerSaveValue()V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPowerSavePref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->updatePerfSettings()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cyanogenmod/cmparts/PartsUpdater;->notifyChanged(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f05000b

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v1, "perf_seekbar"

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lorg/cyanogenmod/cmparts/widget/SeekBarPreference;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerfSeekBar:Lorg/cyanogenmod/cmparts/widget/SeekBarPreference;

    const-string/jumbo v1, "auto_power_save"

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mAutoPowerSavePref:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v1, "power_save"

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPowerSavePref:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "app_perf_profiles_enabled"

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerAppProfilesPref:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcyanogenmod/power/PerformanceManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/power/PerformanceManager;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerf:Lcyanogenmod/power/PerformanceManager;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerf:Lcyanogenmod/power/PerformanceManager;

    invoke-virtual {v2}, Lcyanogenmod/power/PerformanceManager;->getPowerProfiles()Ljava/util/SortedSet;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mProfiles:Ljava/util/List;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "perf_profile_category"

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->removePreference(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerfSeekBar:Lorg/cyanogenmod/cmparts/widget/SeekBarPreference;

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerAppProfilesPref:Landroid/support/v14/preference/SwitchPreference;

    :goto_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mAutoPowerSavePref:Landroid/support/v7/preference/ListPreference;

    const v2, 0x7f06004b

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mAutoPowerSavePref:Landroid/support/v7/preference/ListPreference;

    const v2, 0x7f06004c

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->updateAutoPowerSaveValue()V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mAutoPowerSavePref:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPowerSavePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_0
    new-instance v2, Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f02007d

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {v2, v1}, Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerfDrawable:Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerfSeekBar:Lorg/cyanogenmod/cmparts/widget/SeekBarPreference;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerfDrawable:Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;

    invoke-virtual {v1, v2}, Lorg/cyanogenmod/cmparts/widget/SeekBarPreference;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerfDrawable:Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;

    invoke-direct {v1, v2, v3}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;-><init>(Landroid/content/Context;Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;)V

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mAnimator:Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerfSeekBar:Lorg/cyanogenmod/cmparts/widget/SeekBarPreference;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lorg/cyanogenmod/cmparts/widget/SeekBarPreference;->setMax(I)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerfSeekBar:Lorg/cyanogenmod/cmparts/widget/SeekBarPreference;

    invoke-virtual {v1, p0}, Lorg/cyanogenmod/cmparts/widget/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->updatePerfSettings()V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const-string/jumbo v2, "performance_profile"

    invoke-static {v2}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->watch([Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPowerSavePref:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPowerSaveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const v5, 0x7f080327

    const/4 v4, 0x0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerfSeekBar:Lorg/cyanogenmod/cmparts/widget/SeekBarPreference;

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerfSeekBar:Lorg/cyanogenmod/cmparts/widget/SeekBarPreference;

    invoke-virtual {v2}, Lorg/cyanogenmod/cmparts/widget/SeekBarPreference;->getProgress()I

    move-result v2

    iput v2, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mLastSliderValue:I

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPerf:Lcyanogenmod/power/PerformanceManager;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mProfiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/power/PerformanceProfile;

    invoke-virtual {v2}, Lcyanogenmod/power/PerformanceProfile;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Lcyanogenmod/power/PerformanceManager;->setPowerProfile(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return v4

    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPowerSavePref:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPowerManager:Landroid/os/PowerManager;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return v4

    :cond_1
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->updatePowerSaveValue()V

    :cond_2
    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_3
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mAutoPowerSavePref:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v2, :cond_2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "low_power_trigger_level"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v1}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->updateAutoPowerSaveSummary(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPowerSavePref:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->updatePowerSaveValue()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->mPowerSaveReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onSettingsChanged(Landroid/net/Uri;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->updatePerfSettings()V

    return-void
.end method
