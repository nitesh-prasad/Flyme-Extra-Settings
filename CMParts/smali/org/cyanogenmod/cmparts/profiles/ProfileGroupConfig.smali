.class public Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "ProfileGroupConfig.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_LIGHTSMODE:Ljava/lang/CharSequence;

.field private static final KEY_RINGERMODE:Ljava/lang/CharSequence;

.field private static final KEY_RINGTONE:Ljava/lang/CharSequence;

.field private static final KEY_SOUNDMODE:Ljava/lang/CharSequence;

.field private static final KEY_SOUNDTONE:Ljava/lang/CharSequence;

.field private static final KEY_VIBRATEMODE:Ljava/lang/CharSequence;


# instance fields
.field private mLightsMode:Landroid/support/v7/preference/ListPreference;

.field mProfile:Lcyanogenmod/app/Profile;

.field mProfileGroup:Lcyanogenmod/app/ProfileGroup;

.field private mProfileManager:Lcyanogenmod/app/ProfileManager;

.field private mRingTone:Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;

.field private mRingerMode:Landroid/support/v7/preference/ListPreference;

.field private mSoundMode:Landroid/support/v7/preference/ListPreference;

.field private mSoundTone:Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;

.field private mVibrateMode:Landroid/support/v7/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "sound_mode"

    sput-object v0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->KEY_SOUNDMODE:Ljava/lang/CharSequence;

    const-string/jumbo v0, "vibrate_mode"

    sput-object v0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->KEY_VIBRATEMODE:Ljava/lang/CharSequence;

    const-string/jumbo v0, "lights_mode"

    sput-object v0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->KEY_LIGHTSMODE:Ljava/lang/CharSequence;

    const-string/jumbo v0, "ringer_mode"

    sput-object v0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->KEY_RINGERMODE:Ljava/lang/CharSequence;

    const-string/jumbo v0, "soundtone"

    sput-object v0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->KEY_SOUNDTONE:Ljava/lang/CharSequence;

    const-string/jumbo v0, "ringtone"

    sput-object v0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->KEY_RINGTONE:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateState()V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/support/v7/preference/ListPreference;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->getVibrateMode()Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mSoundMode:Landroid/support/v7/preference/ListPreference;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->getSoundMode()Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mRingerMode:Landroid/support/v7/preference/ListPreference;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->getRingerMode()Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mLightsMode:Landroid/support/v7/preference/ListPreference;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->getLightsMode()Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/support/v7/preference/ListPreference;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mSoundMode:Landroid/support/v7/preference/ListPreference;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mSoundMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mRingerMode:Landroid/support/v7/preference/ListPreference;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mRingerMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mLightsMode:Landroid/support/v7/preference/ListPreference;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mLightsMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v0}, Lcyanogenmod/app/ProfileGroup;->getSoundOverride()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mSoundTone:Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->getSoundOverride()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;->setRingtone(Landroid/net/Uri;)V

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v0}, Lcyanogenmod/app/ProfileGroup;->getRingerOverride()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mRingTone:Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->getRingerOverride()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;->setRingtone(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f050010

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "Profile"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcyanogenmod/app/Profile;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mProfile:Lcyanogenmod/app/Profile;

    const-string/jumbo v2, "ProfileGroup"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v2

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v2, v1}, Lcyanogenmod/app/Profile;->getProfileGroup(Ljava/util/UUID;)Lcyanogenmod/app/ProfileGroup;

    move-result-object v2

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    sget-object v2, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->KEY_RINGERMODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/ListPreference;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mRingerMode:Landroid/support/v7/preference/ListPreference;

    sget-object v2, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->KEY_SOUNDMODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/ListPreference;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mSoundMode:Landroid/support/v7/preference/ListPreference;

    sget-object v2, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->KEY_VIBRATEMODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/ListPreference;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/support/v7/preference/ListPreference;

    sget-object v2, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->KEY_LIGHTSMODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/ListPreference;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mLightsMode:Landroid/support/v7/preference/ListPreference;

    sget-object v2, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->KEY_RINGTONE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mRingTone:Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;

    sget-object v2, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->KEY_SOUNDTONE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mSoundTone:Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mRingTone:Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;

    invoke-virtual {v2, v3}, Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;->setShowSilent(Z)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mSoundTone:Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;

    invoke-virtual {v2, v3}, Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;->setShowSilent(Z)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mSoundMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mRingerMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mLightsMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mSoundTone:Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;

    invoke-virtual {v2, p0}, Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mRingTone:Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;

    invoke-virtual {v2, p0}, Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->updateState()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcyanogenmod/app/ProfileGroup;->setVibrateMode(Lcyanogenmod/app/ProfileGroup$Mode;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v1, v2}, Lcyanogenmod/app/ProfileManager;->updateProfile(Lcyanogenmod/app/Profile;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->updateState()V

    const/4 v1, 0x1

    return v1

    :cond_1
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mSoundMode:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcyanogenmod/app/ProfileGroup;->setSoundMode(Lcyanogenmod/app/ProfileGroup$Mode;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mRingerMode:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcyanogenmod/app/ProfileGroup;->setRingerMode(Lcyanogenmod/app/ProfileGroup$Mode;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mLightsMode:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcyanogenmod/app/ProfileGroup;->setLightsMode(Lcyanogenmod/app/ProfileGroup$Mode;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mRingTone:Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;

    if-ne p1, v1, :cond_5

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1, v0}, Lcyanogenmod/app/ProfileGroup;->setRingerOverride(Landroid/net/Uri;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mSoundTone:Lorg/cyanogenmod/cmparts/profiles/ProfileRingtonePreference;

    if-ne p1, v1, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1, v0}, Lcyanogenmod/app/ProfileGroup;->setSoundOverride(Landroid/net/Uri;)V

    goto :goto_0
.end method
