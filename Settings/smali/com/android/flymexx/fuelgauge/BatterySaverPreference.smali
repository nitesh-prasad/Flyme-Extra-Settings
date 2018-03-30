.class public Lcom/android/flymexx/fuelgauge/BatterySaverPreference;
.super Landroid/support/v7/preference/Preference;
.source "BatterySaverPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/fuelgauge/BatterySaverPreference$1;
    }
.end annotation


# instance fields
.field private final mObserver:Landroid/database/ContentObserver;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/flymexx/fuelgauge/BatterySaverPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/fuelgauge/BatterySaverPreference;->updateSwitch()V

    return-void
.end method

.method private updateSwitch()V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Lcom/android/flymexx/fuelgauge/BatterySaverPreference;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f0c0e2f

    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "low_power_trigger_level"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    const v4, 0x7f0c0e32

    :goto_1
    new-array v5, v7, [Ljava/lang/Object;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/android/flymexx/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/flymexx/fuelgauge/BatterySaverPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v1, 0x7f0c0e30

    goto :goto_0

    :cond_1
    const v4, 0x7f0c0e31

    goto :goto_1
.end method


# virtual methods
.method public onAttached()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onAttached()V

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/flymexx/fuelgauge/BatterySaverPreference;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/flymexx/fuelgauge/BatterySaverPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power_trigger_level"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/fuelgauge/BatterySaverPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/fuelgauge/BatterySaverPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDetached()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onDetached()V

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/fuelgauge/BatterySaverPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/BatterySaverPreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/BatterySaverPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    move-object v3, v2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/android/flymexx/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    return-void
.end method
