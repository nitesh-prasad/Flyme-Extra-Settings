.class public Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/hardware/DisplayRotation$1;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER:Lorg/cyanogenmod/cmparts/PartsUpdater$Refreshable$SummaryProvider;


# instance fields
.field private mAccelerometer:Landroid/support/v14/preference/SwitchPreference;

.field private mRotation0Pref:Landroid/support/v7/preference/CheckBoxPreference;

.field private mRotation180Pref:Landroid/support/v7/preference/CheckBoxPreference;

.field private mRotation270Pref:Landroid/support/v7/preference/CheckBoxPreference;

.field private mRotation90Pref:Landroid/support/v7/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation$1;

    invoke-direct {v0}, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation$1;-><init>()V

    sput-object v0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->SUMMARY_PROVIDER:Lorg/cyanogenmod/cmparts/PartsUpdater$Refreshable$SummaryProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getRotationBitmask()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mRotation0Pref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mRotation90Pref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mRotation180Pref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mRotation270Pref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    return v0
.end method

.method private updateAccelerometerRotationSwitch()V
    .locals 2

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mAccelerometer:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateState()V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->updateAccelerometerRotationSwitch()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const v2, 0x7f050006

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "accelerometer"

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mAccelerometer:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mAccelerometer:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setPersistent(Z)V

    const-string/jumbo v2, "display_rotation_0"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mRotation0Pref:Landroid/support/v7/preference/CheckBoxPreference;

    const-string/jumbo v2, "display_rotation_90"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mRotation90Pref:Landroid/support/v7/preference/CheckBoxPreference;

    const-string/jumbo v2, "display_rotation_180"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mRotation180Pref:Landroid/support/v7/preference/CheckBoxPreference;

    const-string/jumbo v2, "display_rotation_270"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mRotation270Pref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "accelerometer_rotation_angles"

    const/16 v6, 0xb

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mRotation0Pref:Landroid/support/v7/preference/CheckBoxPreference;

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mRotation90Pref:Landroid/support/v7/preference/CheckBoxPreference;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mRotation180Pref:Landroid/support/v7/preference/CheckBoxPreference;

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mRotation270Pref:Landroid/support/v7/preference/CheckBoxPreference;

    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    new-array v2, v3, [Landroid/net/Uri;

    const-string/jumbo v3, "accelerometer_rotation"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->watch([Landroid/net/Uri;)V

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mAccelerometer:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mAccelerometer:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v3, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    :cond_0
    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mRotation0Pref:Landroid/support/v7/preference/CheckBoxPreference;

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mRotation90Pref:Landroid/support/v7/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_5

    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->getRotationBitmask()I

    move-result v0

    if-nez v0, :cond_4

    or-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mRotation0Pref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_4
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "accelerometer_rotation_angles"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_5
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mRotation180Pref:Landroid/support/v7/preference/CheckBoxPreference;

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->mRotation270Pref:Landroid/support/v7/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->updateState()V

    return-void
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onSettingsChanged(Landroid/net/Uri;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/hardware/DisplayRotation;->updateAccelerometerRotationSwitch()V

    return-void
.end method
