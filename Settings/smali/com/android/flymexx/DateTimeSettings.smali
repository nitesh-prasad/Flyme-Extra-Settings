.class public Lcom/android/flymexx/DateTimeSettings;
.super Lcom/android/flymexx/SettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/flymexx/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/DateTimeSettings$1;,
        Lcom/android/flymexx/DateTimeSettings$2;,
        Lcom/android/flymexx/DateTimeSettings$DateTimeSearchIndexProvider;,
        Lcom/android/flymexx/DateTimeSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mAutoTimePref:Lcom/android/flymexxlib/RestrictedSwitchPreference;

.field private mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

.field private mDatePref:Landroid/support/v7/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTime24Pref:Landroid/support/v7/preference/Preference;

.field private mTimePref:Landroid/support/v7/preference/Preference;

.field private mTimeZone:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/flymexx/DateTimeSettings$2;

    invoke-direct {v0}, Lcom/android/flymexx/DateTimeSettings$2;-><init>()V

    sput-object v0, Lcom/android/flymexx/DateTimeSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/flymexx/DateTimeSettings$DateTimeSearchIndexProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/flymexx/DateTimeSettings$DateTimeSearchIndexProvider;-><init>(Lcom/android/flymexx/DateTimeSettings$DateTimeSearchIndexProvider;)V

    sput-object v0, Lcom/android/flymexx/DateTimeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/flymexx/DateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/DateTimeSettings$1;-><init>(Lcom/android/flymexx/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static configureDatePicker(Landroid/widget/DatePicker;)V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/16 v1, 0x7b2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/16 v1, 0x7f5

    const/16 v2, 0xb

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    return-void
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    return v1
.end method

.method private initUI()V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v5, "auto_time"

    invoke-direct {p0, v5}, Lcom/android/flymexx/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v5, "auto_time_zone"

    invoke-direct {p0, v5}, Lcom/android/flymexx/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v5, "auto_time"

    invoke-virtual {p0, v5}, Lcom/android/flymexx/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/flymexxlib/RestrictedSwitchPreference;

    iput-object v5, p0, Lcom/android/flymexx/DateTimeSettings;->mAutoTimePref:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    iget-object v5, p0, Lcom/android/flymexx/DateTimeSettings;->mAutoTimePref:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {v5, p0}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/flymexxlib/RestrictedLockUtils;->checkIfAutoTimeRequired(Landroid/content/Context;)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v5, p0, Lcom/android/flymexx/DateTimeSettings;->mAutoTimePref:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {v5, v0}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "firstRun"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/android/flymexx/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/android/flymexx/DateTimeSettings;->mAutoTimePref:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {v5, v1}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setChecked(Z)V

    const-string/jumbo v5, "auto_zone"

    invoke-virtual {p0, v5}, Lcom/android/flymexx/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/flymexx/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/flymexx/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/flymexx/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/flymexx/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v8}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v2, 0x0

    :cond_1
    iget-object v5, p0, Lcom/android/flymexx/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v5, "time"

    invoke-virtual {p0, v5}, Lcom/android/flymexx/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/flymexx/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/Preference;

    const-string/jumbo v5, "24 hour"

    invoke-virtual {p0, v5}, Lcom/android/flymexx/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/flymexx/DateTimeSettings;->mTime24Pref:Landroid/support/v7/preference/Preference;

    const-string/jumbo v5, "timezone"

    invoke-virtual {p0, v5}, Lcom/android/flymexx/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/flymexx/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/Preference;

    const-string/jumbo v5, "date"

    invoke-virtual {p0, v5}, Lcom/android/flymexx/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/flymexx/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/Preference;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/flymexx/DateTimeSettings;->mTime24Pref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    iget-object v8, p0, Lcom/android/flymexx/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_3

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/flymexx/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_4

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/flymexx/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_5

    :goto_2
    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_3
    move v5, v7

    goto :goto_0

    :cond_4
    move v5, v7

    goto :goto_1

    :cond_5
    move v6, v7

    goto :goto_2
.end method

.method private is24Hour()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private set24Hour(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string/jumbo v0, "12"

    goto :goto_0
.end method

.method static setDate(Landroid/content/Context;III)V
    .locals 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide v6, 0x1160d1b4800L

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    const-string/jumbo v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    :cond_0
    return-void
.end method

.method static setTime(Landroid/content/Context;II)V
    .locals 8

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide v6, 0x1160d1b4800L

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    const-string/jumbo v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    :cond_0
    return-void
.end method

.method private timeUpdated(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x26

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/android/flymexx/DateTimeSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/flymexx/DateTimeSettings;->initUI()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v2, 0x5

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-static {v1}, Lcom/android/flymexx/DateTimeSettings;->configureDatePicker(Landroid/widget/DatePicker;)V

    return-object v0

    :pswitch_1
    new-instance v1, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v3, 0xc

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p2, p3, p4}, Lcom/android/flymexx/DateTimeSettings;->setDate(Landroid/content/Context;III)V

    invoke-virtual {p0, v0}, Lcom/android/flymexx/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "auto_time"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "auto_time"

    if-eqz v0, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/flymexx/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_2

    move v2, v4

    :goto_1
    invoke-virtual {v5, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/flymexx/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_0
    :goto_3
    return v3

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    move v4, v3

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "auto_zone"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "auto_time_zone"

    if-eqz v1, :cond_5

    move v2, v3

    :goto_4
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/flymexx/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_6

    :goto_5
    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    :cond_5
    move v2, v4

    goto :goto_4

    :cond_6
    move v4, v3

    goto :goto_5
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/flymexx/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/flymexx/DateTimeSettings;->showDialog(I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/flymexx/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/flymexx/DateTimeSettings;->removeDialog(I)V

    invoke-virtual {p0, v2}, Lcom/android/flymexx/DateTimeSettings;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/flymexx/DateTimeSettings;->mTime24Pref:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/DateTimeSettings;->mTime24Pref:Landroid/support/v7/preference/Preference;

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/flymexx/DateTimeSettings;->set24Hour(Z)V

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/flymexx/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/flymexx/DateTimeSettings;->timeUpdated(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/android/flymexx/DateTimeSettings;->mTime24Pref:Landroid/support/v7/preference/Preference;

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/flymexx/DateTimeSettings;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/flymexx/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p2, p3}, Lcom/android/flymexx/DateTimeSettings;->setTime(Landroid/content/Context;II)V

    invoke-virtual {p0, v0}, Lcom/android/flymexx/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 10

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    iget-object v0, p0, Lcom/android/flymexx/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v0, p0, Lcom/android/flymexx/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    iget-object v0, p0, Lcom/android/flymexx/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/flymexx/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/flymexx/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/flymexx/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/flymexxlib/datetime/ZoneGetter;->getTimeZoneOffsetAndName(Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/flymexx/DateTimeSettings;->mTime24Pref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/Preference;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
