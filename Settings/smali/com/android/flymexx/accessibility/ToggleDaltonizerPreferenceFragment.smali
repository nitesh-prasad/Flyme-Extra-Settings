.class public Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;
.super Lcom/android/flymexx/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleDaltonizerPreferenceFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mType:Landroid/support/v7/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreferences()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accessibility_display_daltonizer"

    const/16 v4, 0xc

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->mType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->mType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->mType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->mType:Landroid/support/v7/preference/ListPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f0c00e4

    invoke-virtual {p0, v4}, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0c0121

    invoke-virtual {p0, v4, v3}, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->mType:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->initPreferences()V

    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/flymexx/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    iget-object v2, p0, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_display_daltonizer_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/flymexx/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->mType:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_display_daltonizer"

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "%s"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accessibility_display_daltonizer_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRemoveSwitchBarToggleSwitch()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/accessibility/ToggleFeaturePreferenceFragment;->onRemoveSwitchBarToggleSwitch()V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/accessibility/ToggleFeaturePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0c011f

    invoke-virtual {p0, v0}, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/accessibility/ToggleDaltonizerPreferenceFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method
