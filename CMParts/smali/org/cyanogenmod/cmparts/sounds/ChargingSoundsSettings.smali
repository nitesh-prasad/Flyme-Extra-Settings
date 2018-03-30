.class public Lorg/cyanogenmod/cmparts/sounds/ChargingSoundsSettings;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "ChargingSoundsSettings.java"


# instance fields
.field private mChargingSoundsRingtone:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private launchNotificationSoundPicker(ILjava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.extra.ringtone.TITLE"

    const v3, 0x7f08033e

    invoke-virtual {p0, v3}, Lorg/cyanogenmod/cmparts/sounds/ChargingSoundsSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.ringtone.TYPE"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.ringtone.DEFAULT_URI"

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string/jumbo v2, "silent"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/cyanogenmod/cmparts/sounds/ChargingSoundsSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateChargingRingtone(Ljava/lang/String;Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string/jumbo v2, "silent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const v2, 0x7f08033f

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/sounds/ChargingSoundsSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo p1, "silent"

    :goto_0
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/sounds/ChargingSoundsSettings;->mChargingSoundsRingtone:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/sounds/ChargingSoundsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "power_notifications_ringtone"

    invoke-static {v2, v3, p1}, Lcyanogenmod/providers/CMSettings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/sounds/ChargingSoundsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/sounds/ChargingSoundsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string/jumbo v1, ""

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1, p2, p3}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-ne p1, v3, :cond_1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    const-string/jumbo v2, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-direct {p0, v1, v3}, Lorg/cyanogenmod/cmparts/sounds/ChargingSoundsSettings;->updateChargingRingtone(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f050005

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/sounds/ChargingSoundsSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v2, "vibrator"

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/sounds/ChargingSoundsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    const-string/jumbo v2, "charging_sounds_ringtone"

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/sounds/ChargingSoundsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/sounds/ChargingSoundsSettings;->mChargingSoundsRingtone:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/sounds/ChargingSoundsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "power_notifications_ringtone"

    invoke-static {v2, v3}, Lcyanogenmod/providers/CMSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lorg/cyanogenmod/cmparts/sounds/ChargingSoundsSettings;->updateChargingRingtone(Ljava/lang/String;Z)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v2, "power_notifications_vibrate"

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/sounds/ChargingSoundsSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/cyanogenmod/cmparts/sounds/ChargingSoundsSettings;->updateChargingRingtone(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/sounds/ChargingSoundsSettings;->mChargingSoundsRingtone:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/sounds/ChargingSoundsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "power_notifications_ringtone"

    invoke-static {v0, v1}, Lcyanogenmod/providers/CMSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lorg/cyanogenmod/cmparts/sounds/ChargingSoundsSettings;->launchNotificationSoundPicker(ILjava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method
