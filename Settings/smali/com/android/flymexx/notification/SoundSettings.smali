.class public Lcom/android/flymexx/notification/SoundSettings;
.super Lcom/android/flymexx/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/flymexx/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/notification/SoundSettings$1;,
        Lcom/android/flymexx/notification/SoundSettings$2;,
        Lcom/android/flymexx/notification/SoundSettings$3;,
        Lcom/android/flymexx/notification/SoundSettings$4;,
        Lcom/android/flymexx/notification/SoundSettings$H;,
        Lcom/android/flymexx/notification/SoundSettings$Receiver;,
        Lcom/android/flymexx/notification/SoundSettings$SettingsObserver;,
        Lcom/android/flymexx/notification/SoundSettings$SummaryProvider;,
        Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field private static final RESTRICTED_KEYS:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/BaseSearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mAlarmRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/flymexx/notification/SoundSettings$H;

.field private mIncreasingRing:Landroid/support/v7/preference/TwoStatePreference;

.field private mIncreasingRingVolume:Lcom/android/flymexx/notification/IncreasingRingVolumePreference;

.field private final mIncreasingRingVolumeCallback:Lcom/android/flymexx/notification/IncreasingRingVolumePreference$Callback;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mNotificationRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mReceiver:Lcom/android/flymexx/notification/SoundSettings$Receiver;

.field private mRequestPreference:Lcom/android/flymexx/RingtonePreference;

.field private mRingOrNotificationPreference:Lcom/android/flymexx/notification/VolumeSeekBarPreference;

.field private mRingerMode:I

.field private final mSettingsObserver:Lcom/android/flymexx/notification/SoundSettings$SettingsObserver;

.field private mSuppressor:Landroid/content/ComponentName;

.field private mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;

.field private final mVolumePrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexx/notification/VolumeSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/notification/SoundSettings;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mAlarmRingtonePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/notification/SoundSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/notification/SoundSettings;)Lcom/android/flymexx/notification/SoundSettings$H;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mHandler:Lcom/android/flymexx/notification/SoundSettings$H;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/flymexx/notification/SoundSettings;)Lcom/android/flymexx/notification/IncreasingRingVolumePreference;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/flymexx/notification/IncreasingRingVolumePreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/flymexx/notification/SoundSettings;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mNotificationRingtonePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/flymexx/notification/SoundSettings;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/flymexx/notification/SoundSettings;)Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mVolumeCallback:Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/notification/SoundSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/flymexx/notification/SoundSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/flymexx/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/notification/SoundSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/flymexx/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/notification/SoundSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/flymexx/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/notification/SoundSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "media_volume"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "alarm_volume"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "ring_volume"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "notification_volume"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/flymexx/notification/SoundSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    new-instance v0, Lcom/android/flymexx/notification/SoundSettings$3;

    invoke-direct {v0}, Lcom/android/flymexx/notification/SoundSettings$3;-><init>()V

    sput-object v0, Lcom/android/flymexx/notification/SoundSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/flymexx/notification/SoundSettings$4;

    invoke-direct {v0}, Lcom/android/flymexx/notification/SoundSettings$4;-><init>()V

    sput-object v0, Lcom/android/flymexx/notification/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/android/flymexx/notification/SoundSettings;Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;)V

    iput-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mVolumeCallback:Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;

    new-instance v0, Lcom/android/flymexx/notification/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/notification/SoundSettings$1;-><init>(Lcom/android/flymexx/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mIncreasingRingVolumeCallback:Lcom/android/flymexx/notification/IncreasingRingVolumePreference$Callback;

    new-instance v0, Lcom/android/flymexx/notification/SoundSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/flymexx/notification/SoundSettings$H;-><init>(Lcom/android/flymexx/notification/SoundSettings;Lcom/android/flymexx/notification/SoundSettings$H;)V

    iput-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mHandler:Lcom/android/flymexx/notification/SoundSettings$H;

    new-instance v0, Lcom/android/flymexx/notification/SoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/flymexx/notification/SoundSettings$SettingsObserver;-><init>(Lcom/android/flymexx/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mSettingsObserver:Lcom/android/flymexx/notification/SoundSettings$SettingsObserver;

    new-instance v0, Lcom/android/flymexx/notification/SoundSettings$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/android/flymexx/notification/SoundSettings$Receiver;-><init>(Lcom/android/flymexx/notification/SoundSettings;Lcom/android/flymexx/notification/SoundSettings$Receiver;)V

    iput-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mReceiver:Lcom/android/flymexx/notification/SoundSettings$Receiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mRingerMode:I

    new-instance v0, Lcom/android/flymexx/notification/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/flymexx/notification/SoundSettings$2;-><init>(Lcom/android/flymexx/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    return-void
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7

    iget-object v5, p0, Lcom/android/flymexx/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    return-object v4

    :catch_0
    move-exception v0

    const-string/jumbo v5, "SoundSettings"

    const-string/jumbo v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private initIncreasingRing()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "increasing_ring"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/TwoStatePreference;

    iput-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mIncreasingRing:Landroid/support/v7/preference/TwoStatePreference;

    const-string/jumbo v1, "increasing_ring_volume"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;

    iput-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/flymexx/notification/IncreasingRingVolumePreference;

    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mIncreasingRing:Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/flymexx/notification/IncreasingRingVolumePreference;

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mIncreasingRing:Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mIncreasingRing:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v2, p0, Lcom/android/flymexx/notification/SoundSettings;->mIncreasingRing:Landroid/support/v7/preference/TwoStatePreference;

    :cond_1
    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/flymexx/notification/IncreasingRingVolumePreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/flymexx/notification/IncreasingRingVolumePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v2, p0, Lcom/android/flymexx/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/flymexx/notification/IncreasingRingVolumePreference;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mVoiceCapable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/flymexx/notification/IncreasingRingVolumePreference;

    iget-object v2, p0, Lcom/android/flymexx/notification/SoundSettings;->mIncreasingRingVolumeCallback:Lcom/android/flymexx/notification/IncreasingRingVolumePreference$Callback;

    invoke-virtual {v1, v2}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->setCallback(Lcom/android/flymexx/notification/IncreasingRingVolumePreference$Callback;)V

    goto :goto_0
.end method

.method private initRingtones()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "ringtone"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mVoiceCapable:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/flymexx/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "notification_ringtone"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mNotificationRingtonePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "alarm_ringtone"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mAlarmRingtonePreference:Landroid/support/v7/preference/Preference;

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/flymexx/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v2, p0, Lcom/android/flymexx/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    goto :goto_0
.end method

.method private initVibrateWhenRinging()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "vibrate_when_ringing"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SoundSettings"

    const-string/jumbo v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v2, p0, Lcom/android/flymexx/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setPersistent(Z)V

    invoke-direct {p0}, Lcom/android/flymexx/notification/SoundSettings;->updateVibrateWhenRinging()V

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    new-instance v1, Lcom/android/flymexx/notification/SoundSettings$5;

    invoke-direct {v1, p0}, Lcom/android/flymexx/notification/SoundSettings$5;-><init>(Lcom/android/flymexx/notification/SoundSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/android/flymexx/notification/VolumeSeekBarPreference;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/flymexx/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mVolumeCallback:Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/flymexx/notification/VolumeSeekBarPreference$Callback;)V

    invoke-virtual {v0, p2}, Lcom/android/flymexx/notification/VolumeSeekBarPreference;->setStream(I)V

    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p3}, Lcom/android/flymexx/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    return-object v0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateEffectsSuppressor()V
    .locals 6

    iget-object v2, p0, Lcom/android/flymexx/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v2, p0, Lcom/android/flymexx/notification/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/flymexx/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/flymexx/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/flymexx/notification/SoundSettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/flymexx/notification/SoundSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x1040644

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/flymexx/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/flymexx/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/flymexx/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/flymexx/notification/SoundSettings;->updateRingOrNotificationPreference()V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateRingOrNotificationPreference()V
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/flymexx/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const v0, 0x10802f3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/flymexx/notification/VolumeSeekBarPreference;->showIcon(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mRingerMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-direct {p0}, Lcom/android/flymexx/notification/SoundSettings;->wasRingerModeVibrate()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const v0, 0x10802f4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/flymexx/notification/VolumeSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/flymexx/notification/VolumeSeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ring_volume"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0200a5

    goto :goto_0

    :cond_3
    const v0, 0x10802f2

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    iget v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mRingerMode:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mRingerMode:I

    invoke-direct {p0}, Lcom/android/flymexx/notification/SoundSettings;->updateRingOrNotificationPreference()V

    return-void
.end method

.method private static updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 10

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string/jumbo v0, "SoundSettings"

    const-string/jumbo v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    const v0, 0x1040453

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v1, :cond_2

    const v0, 0x1040451

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_1
    :goto_0
    return-object v9

    :cond_2
    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "title"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :cond_4
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_5
    :try_start_1
    const-string/jumbo v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_display_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v7

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_1
    move-exception v8

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/flymexx/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private wasRingerModeVibrate()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mRingerMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x150

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mRequestPreference:Lcom/android/flymexx/RingtonePreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mRequestPreference:Lcom/android/flymexx/RingtonePreference;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/flymexx/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    iput-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mRequestPreference:Lcom/android/flymexx/RingtonePreference;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x10802f3

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/flymexx/notification/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/flymexx/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mVoiceCapable:Z

    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/android/flymexx/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    const v1, 0x7f080063

    invoke-virtual {p0, v1}, Lcom/android/flymexx/notification/SoundSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v1, "media_volume"

    const/4 v2, 0x3

    const v3, 0x10802ed

    invoke-direct {p0, v1, v2, v3}, Lcom/android/flymexx/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/flymexx/notification/VolumeSeekBarPreference;

    const-string/jumbo v1, "alarm_volume"

    const/4 v2, 0x4

    const v3, 0x10802eb

    invoke-direct {p0, v1, v2, v3}, Lcom/android/flymexx/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/flymexx/notification/VolumeSeekBarPreference;

    const-string/jumbo v1, "notification_volume"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2, v5}, Lcom/android/flymexx/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/flymexx/notification/VolumeSeekBarPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/flymexx/notification/VolumeSeekBarPreference;

    iget-boolean v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mVoiceCapable:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "ring_volume"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v5}, Lcom/android/flymexx/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/flymexx/notification/VolumeSeekBarPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/flymexx/notification/VolumeSeekBarPreference;

    :goto_1
    invoke-direct {p0}, Lcom/android/flymexx/notification/SoundSettings;->initRingtones()V

    invoke-direct {p0}, Lcom/android/flymexx/notification/SoundSettings;->initVibrateWhenRinging()V

    invoke-direct {p0}, Lcom/android/flymexx/notification/SoundSettings;->initIncreasingRing()V

    invoke-direct {p0}, Lcom/android/flymexx/notification/SoundSettings;->updateRingerMode()V

    invoke-direct {p0}, Lcom/android/flymexx/notification/SoundSettings;->updateEffectsSuppressor()V

    if-eqz p1, :cond_1

    const-string/jumbo v1, "selected_preference"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/RingtonePreference;

    iput-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mRequestPreference:Lcom/android/flymexx/RingtonePreference;

    :cond_1
    return-void

    :cond_2
    iput-object v4, p0, Lcom/android/flymexx/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "ring_volume"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "volume_link_notification"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onPause()V

    iget-object v2, p0, Lcom/android/flymexx/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/notification/VolumeSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/flymexx/notification/VolumeSeekBarPreference;->onActivityPause()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/flymexx/notification/SoundSettings;->mVolumeCallback:Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v2}, Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;->stopSample()V

    iget-object v2, p0, Lcom/android/flymexx/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/flymexx/notification/IncreasingRingVolumePreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/flymexx/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/flymexx/notification/IncreasingRingVolumePreference;

    invoke-virtual {v2}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->stopSample()V

    :cond_1
    iget-object v2, p0, Lcom/android/flymexx/notification/SoundSettings;->mSettingsObserver:Lcom/android/flymexx/notification/SoundSettings$SettingsObserver;

    invoke-virtual {v2, v3}, Lcom/android/flymexx/notification/SoundSettings$SettingsObserver;->register(Z)V

    iget-object v2, p0, Lcom/android/flymexx/notification/SoundSettings;->mReceiver:Lcom/android/flymexx/notification/SoundSettings$Receiver;

    invoke-virtual {v2, v3}, Lcom/android/flymexx/notification/SoundSettings$Receiver;->register(Z)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/flymexx/RingtonePreference;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/flymexx/RingtonePreference;

    iput-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mRequestPreference:Lcom/android/flymexx/RingtonePreference;

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mRequestPreference:Lcom/android/flymexx/RingtonePreference;

    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mRequestPreference:Lcom/android/flymexx/RingtonePreference;

    invoke-virtual {v1}, Lcom/android/flymexx/RingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/flymexx/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/android/flymexx/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 12

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/flymexx/notification/SoundSettings;->lookupRingtoneNames()V

    iget-object v6, p0, Lcom/android/flymexx/notification/SoundSettings;->mSettingsObserver:Lcom/android/flymexx/notification/SoundSettings$SettingsObserver;

    invoke-virtual {v6, v8}, Lcom/android/flymexx/notification/SoundSettings$SettingsObserver;->register(Z)V

    iget-object v6, p0, Lcom/android/flymexx/notification/SoundSettings;->mReceiver:Lcom/android/flymexx/notification/SoundSettings$Receiver;

    invoke-virtual {v6, v8}, Lcom/android/flymexx/notification/SoundSettings$Receiver;->register(Z)V

    invoke-direct {p0}, Lcom/android/flymexx/notification/SoundSettings;->updateRingOrNotificationPreference()V

    invoke-direct {p0}, Lcom/android/flymexx/notification/SoundSettings;->updateEffectsSuppressor()V

    invoke-direct {p0}, Lcom/android/flymexx/notification/SoundSettings;->updateVibrateWhenRinging()V

    iget-object v6, p0, Lcom/android/flymexx/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/flymexx/notification/VolumeSeekBarPreference;

    invoke-virtual {v4}, Lcom/android/flymexx/notification/VolumeSeekBarPreference;->onActivityResume()V

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/flymexx/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/flymexx/notification/IncreasingRingVolumePreference;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/flymexx/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/flymexx/notification/IncreasingRingVolumePreference;

    invoke-virtual {v6}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->onActivityResume()V

    :cond_1
    iget-object v6, p0, Lcom/android/flymexx/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "no_adjust_volume"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-static {v6, v9, v10}, Lcom/android/flymexxlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v6, p0, Lcom/android/flymexx/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "no_adjust_volume"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-static {v6, v9, v10}, Lcom/android/flymexxlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    sget-object v10, Lcom/android/flymexx/notification/SoundSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    array-length v11, v10

    move v9, v7

    :goto_1
    if-ge v9, v11, :cond_6

    aget-object v2, v10, v9

    invoke-virtual {p0, v2}, Lcom/android/flymexx/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_4

    move v6, v7

    :goto_2
    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_2
    instance-of v6, v3, Lcom/android/flymexxlib/RestrictedPreference;

    if-eqz v6, :cond_3

    if-eqz v1, :cond_5

    :cond_3
    :goto_3
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_1

    :cond_4
    move v6, v8

    goto :goto_2

    :cond_5
    check-cast v3, Lcom/android/flymexxlib/RestrictedPreference;

    invoke-virtual {v3, v0}, Lcom/android/flymexxlib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_3

    :cond_6
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mRequestPreference:Lcom/android/flymexx/RingtonePreference;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "selected_preference"

    iget-object v1, p0, Lcom/android/flymexx/notification/SoundSettings;->mRequestPreference:Lcom/android/flymexx/RingtonePreference;

    invoke-virtual {v1}, Lcom/android/flymexx/RingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/flymexx/notification/IncreasingRingVolumePreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/flymexx/notification/IncreasingRingVolumePreference;

    invoke-virtual {v0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->onActivityStop()V

    :cond_0
    return-void
.end method
