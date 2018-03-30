.class public Lcom/android/flymexx/location/LocationMode;
.super Lcom/android/flymexx/location/LocationSettingsBase;
.source "LocationMode.java"

# interfaces
.implements Lcom/android/flymexx/location/RadioButtonPreference$OnClickListener;


# instance fields
.field private mBatterySaving:Lcom/android/flymexx/location/RadioButtonPreference;

.field private mHighAccuracy:Lcom/android/flymexx/location/RadioButtonPreference;

.field private mSensorsOnly:Lcom/android/flymexx/location/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/location/LocationSettingsBase;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 2

    invoke-virtual {p0}, Lcom/android/flymexx/location/LocationMode;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v1, 0x7f080035

    invoke-virtual {p0, v1}, Lcom/android/flymexx/location/LocationMode;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/location/LocationMode;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "high_accuracy"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/location/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/flymexx/location/LocationMode;->mHighAccuracy:Lcom/android/flymexx/location/RadioButtonPreference;

    const-string/jumbo v1, "battery_saving"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/location/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/flymexx/location/LocationMode;->mBatterySaving:Lcom/android/flymexx/location/RadioButtonPreference;

    const-string/jumbo v1, "sensors_only"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/location/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/flymexx/location/LocationMode;->mSensorsOnly:Lcom/android/flymexx/location/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/flymexx/location/LocationMode;->mHighAccuracy:Lcom/android/flymexx/location/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/flymexx/location/RadioButtonPreference;->setOnClickListener(Lcom/android/flymexx/location/RadioButtonPreference$OnClickListener;)V

    iget-object v1, p0, Lcom/android/flymexx/location/LocationMode;->mBatterySaving:Lcom/android/flymexx/location/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/flymexx/location/RadioButtonPreference;->setOnClickListener(Lcom/android/flymexx/location/RadioButtonPreference$OnClickListener;)V

    iget-object v1, p0, Lcom/android/flymexx/location/LocationMode;->mSensorsOnly:Lcom/android/flymexx/location/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/flymexx/location/RadioButtonPreference;->setOnClickListener(Lcom/android/flymexx/location/RadioButtonPreference$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/flymexx/location/LocationMode;->refreshLocationMode()V

    return-object v0
.end method

.method private updateRadioButtons(Lcom/android/flymexx/location/RadioButtonPreference;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/location/LocationMode;->mHighAccuracy:Lcom/android/flymexx/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/location/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/flymexx/location/LocationMode;->mBatterySaving:Lcom/android/flymexx/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/location/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/flymexx/location/LocationMode;->mSensorsOnly:Lcom/android/flymexx/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/location/RadioButtonPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/location/LocationMode;->mHighAccuracy:Lcom/android/flymexx/location/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/location/LocationMode;->mHighAccuracy:Lcom/android/flymexx/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/flymexx/location/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/flymexx/location/LocationMode;->mBatterySaving:Lcom/android/flymexx/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/location/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/flymexx/location/LocationMode;->mSensorsOnly:Lcom/android/flymexx/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/flymexx/location/LocationMode;->mBatterySaving:Lcom/android/flymexx/location/RadioButtonPreference;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/flymexx/location/LocationMode;->mHighAccuracy:Lcom/android/flymexx/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/location/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/flymexx/location/LocationMode;->mBatterySaving:Lcom/android/flymexx/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/flymexx/location/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/flymexx/location/LocationMode;->mSensorsOnly:Lcom/android/flymexx/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/flymexx/location/LocationMode;->mSensorsOnly:Lcom/android/flymexx/location/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/location/LocationMode;->mHighAccuracy:Lcom/android/flymexx/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/location/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/flymexx/location/LocationMode;->mBatterySaving:Lcom/android/flymexx/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/location/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/flymexx/location/LocationMode;->mSensorsOnly:Lcom/android/flymexx/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/flymexx/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f0c0bae

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public onModeChanged(IZ)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/flymexx/location/LocationMode;->mHighAccuracy:Lcom/android/flymexx/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/flymexx/location/RadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/flymexx/location/LocationMode;->mBatterySaving:Lcom/android/flymexx/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/flymexx/location/RadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/flymexx/location/LocationMode;->mSensorsOnly:Lcom/android/flymexx/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/flymexx/location/RadioButtonPreference;->setEnabled(Z)V

    return-void

    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/flymexx/location/LocationMode;->updateRadioButtons(Lcom/android/flymexx/location/RadioButtonPreference;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/flymexx/location/LocationMode;->mSensorsOnly:Lcom/android/flymexx/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/flymexx/location/LocationMode;->updateRadioButtons(Lcom/android/flymexx/location/RadioButtonPreference;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/flymexx/location/LocationMode;->mBatterySaving:Lcom/android/flymexx/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/flymexx/location/LocationMode;->updateRadioButtons(Lcom/android/flymexx/location/RadioButtonPreference;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/flymexx/location/LocationMode;->mHighAccuracy:Lcom/android/flymexx/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/flymexx/location/LocationMode;->updateRadioButtons(Lcom/android/flymexx/location/RadioButtonPreference;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/flymexx/location/LocationSettingsBase;->onPause()V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/flymexx/location/RadioButtonPreference;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/flymexx/location/LocationMode;->mHighAccuracy:Lcom/android/flymexx/location/RadioButtonPreference;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x3

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/flymexx/location/LocationMode;->setLocationMode(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/flymexx/location/LocationMode;->mBatterySaving:Lcom/android/flymexx/location/RadioButtonPreference;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/flymexx/location/LocationMode;->mSensorsOnly:Lcom/android/flymexx/location/RadioButtonPreference;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/flymexx/location/LocationSettingsBase;->onResume()V

    invoke-direct {p0}, Lcom/android/flymexx/location/LocationMode;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method
