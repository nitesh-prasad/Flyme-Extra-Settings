.class public Lcom/android/flymexx/notification/OtherSoundSettings;
.super Lcom/android/flymexx/SettingsPreferenceFragment;
.source "OtherSoundSettings.java"

# interfaces
.implements Lcom/android/flymexx/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/notification/OtherSoundSettings$1;,
        Lcom/android/flymexx/notification/OtherSoundSettings$2;,
        Lcom/android/flymexx/notification/OtherSoundSettings$3;,
        Lcom/android/flymexx/notification/OtherSoundSettings$4;,
        Lcom/android/flymexx/notification/OtherSoundSettings$5;,
        Lcom/android/flymexx/notification/OtherSoundSettings$6;,
        Lcom/android/flymexx/notification/OtherSoundSettings$7;,
        Lcom/android/flymexx/notification/OtherSoundSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final PREFS:[Lcom/android/flymexx/notification/SettingPref;

.field private static final PREF_CHARGING_SOUNDS:Lcom/android/flymexx/notification/SettingPref;

.field private static final PREF_DIAL_PAD_TONES:Lcom/android/flymexx/notification/SettingPref;

.field private static final PREF_DOCKING_SOUNDS:Lcom/android/flymexx/notification/SettingPref;

.field private static final PREF_DOCK_AUDIO_MEDIA:Lcom/android/flymexx/notification/SettingPref;

.field private static final PREF_EMERGENCY_TONE:Lcom/android/flymexx/notification/SettingPref;

.field private static final PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/flymexx/notification/SettingPref;

.field private static final PREF_TOUCH_SOUNDS:Lcom/android/flymexx/notification/SettingPref;

.field private static final PREF_VIBRATE_ON_TOUCH:Lcom/android/flymexx/notification/SettingPref;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/BaseSearchIndexProvider;


# instance fields
.field private mBootSounds:Landroid/support/v14/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private final mSettingsObserver:Lcom/android/flymexx/notification/OtherSoundSettings$SettingsObserver;


# direct methods
.method static synthetic -get0()[Lcom/android/flymexx/notification/SettingPref;
    .locals 1

    sget-object v0, Lcom/android/flymexx/notification/OtherSoundSettings;->PREFS:[Lcom/android/flymexx/notification/SettingPref;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/notification/OtherSoundSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/notification/OtherSoundSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/flymexx/notification/OtherSoundSettings;->hasDockSettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/flymexx/notification/OtherSoundSettings;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 10

    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    new-instance v0, Lcom/android/flymexx/notification/OtherSoundSettings$1;

    const-string/jumbo v2, "dial_pad_tones"

    const-string/jumbo v3, "dtmf_tone"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/flymexx/notification/OtherSoundSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/flymexx/notification/OtherSoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/flymexx/notification/SettingPref;

    new-instance v0, Lcom/android/flymexx/notification/SettingPref;

    const-string/jumbo v2, "screen_locking_sounds"

    const-string/jumbo v3, "lockscreen_sounds_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/flymexx/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/flymexx/notification/OtherSoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/flymexx/notification/SettingPref;

    new-instance v3, Lcom/android/flymexx/notification/SettingPref;

    const-string/jumbo v5, "charging_sounds"

    const-string/jumbo v6, "charging_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/android/flymexx/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/flymexx/notification/OtherSoundSettings;->PREF_CHARGING_SOUNDS:Lcom/android/flymexx/notification/SettingPref;

    new-instance v3, Lcom/android/flymexx/notification/OtherSoundSettings$2;

    const-string/jumbo v5, "docking_sounds"

    const-string/jumbo v6, "dock_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/android/flymexx/notification/OtherSoundSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/flymexx/notification/OtherSoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/flymexx/notification/SettingPref;

    new-instance v0, Lcom/android/flymexx/notification/OtherSoundSettings$3;

    const-string/jumbo v2, "touch_sounds"

    const-string/jumbo v3, "sound_effects_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/flymexx/notification/OtherSoundSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/flymexx/notification/OtherSoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/flymexx/notification/SettingPref;

    new-instance v0, Lcom/android/flymexx/notification/OtherSoundSettings$4;

    const-string/jumbo v2, "vibrate_on_touch"

    const-string/jumbo v3, "haptic_feedback_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/flymexx/notification/OtherSoundSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/flymexx/notification/OtherSoundSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/flymexx/notification/SettingPref;

    new-instance v3, Lcom/android/flymexx/notification/OtherSoundSettings$5;

    const-string/jumbo v5, "dock_audio_media"

    const-string/jumbo v6, "dock_audio_media_enabled"

    filled-new-array {v9, v4}, [I

    move-result-object v8

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/flymexx/notification/OtherSoundSettings$5;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/flymexx/notification/OtherSoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/flymexx/notification/SettingPref;

    new-instance v3, Lcom/android/flymexx/notification/OtherSoundSettings$6;

    const-string/jumbo v5, "emergency_tone"

    const-string/jumbo v6, "emergency_tone"

    filled-new-array {v4, v1, v9}, [I

    move-result-object v8

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/flymexx/notification/OtherSoundSettings$6;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/flymexx/notification/OtherSoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/flymexx/notification/SettingPref;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/flymexx/notification/SettingPref;

    sget-object v2, Lcom/android/flymexx/notification/OtherSoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/flymexx/notification/SettingPref;

    aput-object v2, v0, v9

    sget-object v2, Lcom/android/flymexx/notification/OtherSoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/flymexx/notification/SettingPref;

    aput-object v2, v0, v4

    sget-object v2, Lcom/android/flymexx/notification/OtherSoundSettings;->PREF_CHARGING_SOUNDS:Lcom/android/flymexx/notification/SettingPref;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/flymexx/notification/OtherSoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/flymexx/notification/SettingPref;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/notification/OtherSoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/flymexx/notification/SettingPref;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/notification/OtherSoundSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/flymexx/notification/SettingPref;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/notification/OtherSoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/flymexx/notification/SettingPref;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/notification/OtherSoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/flymexx/notification/SettingPref;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/flymexx/notification/OtherSoundSettings;->PREFS:[Lcom/android/flymexx/notification/SettingPref;

    new-instance v0, Lcom/android/flymexx/notification/OtherSoundSettings$7;

    invoke-direct {v0}, Lcom/android/flymexx/notification/OtherSoundSettings$7;-><init>()V

    sput-object v0, Lcom/android/flymexx/notification/OtherSoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/flymexx/notification/OtherSoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/flymexx/notification/OtherSoundSettings$SettingsObserver;-><init>(Lcom/android/flymexx/notification/OtherSoundSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/flymexx/notification/OtherSoundSettings$SettingsObserver;

    return-void
.end method

.method private static hasDockSettings(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static hasHaptic(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0c0b98

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x49

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f08003d

    invoke-virtual {p0, v2}, Lcom/android/flymexx/notification/OtherSoundSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/flymexx/notification/OtherSoundSettings;->PREFS:[Lcom/android/flymexx/notification/SettingPref;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    invoke-virtual {v1, p0}, Lcom/android/flymexx/notification/SettingPref;->init(Lcom/android/flymexx/SettingsPreferenceFragment;)Landroid/support/v7/preference/Preference;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/flymexx/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "boot_sounds"

    invoke-virtual {p0, v2}, Lcom/android/flymexx/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/flymexx/notification/OtherSoundSettings;->mBootSounds:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/flymexx/notification/OtherSoundSettings;->mBootSounds:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v3, "persist.sys.bootanim.play_sound"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_1
    iget-object v2, p0, Lcom/android/flymexx/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "vibrator_intensity"

    invoke-virtual {p0, v2}, Lcom/android/flymexx/notification/OtherSoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v2, "boot_sounds"

    invoke-virtual {p0, v2}, Lcom/android/flymexx/notification/OtherSoundSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/flymexx/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/flymexx/notification/OtherSoundSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/flymexx/notification/OtherSoundSettings$SettingsObserver;->register(Z)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/notification/OtherSoundSettings;->mBootSounds:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/notification/OtherSoundSettings;->mBootSounds:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    const-string/jumbo v1, "persist.sys.bootanim.play_sound"

    iget-object v0, p0, Lcom/android/flymexx/notification/OtherSoundSettings;->mBootSounds:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/flymexx/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/flymexx/notification/OtherSoundSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/flymexx/notification/OtherSoundSettings$SettingsObserver;->register(Z)V

    return-void
.end method
