.class public Lorg/cyanogenmod/cmparts/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private hasRestoredTunable(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p1}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "hardware_tunable_restored"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private setRestoredTunable(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "hardware_tunable_restored"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/BootReceiver;->hasRestoredTunable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->restoreKeyDisabler(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/BootReceiver;->setRestoredTunable(Landroid/content/Context;)V

    :cond_0
    invoke-static {p1}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->restoreTouchscreenGestureStates(Landroid/content/Context;)V

    invoke-static {p1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->extractContributorsCloudDatabase(Landroid/content/Context;)V

    return-void
.end method
