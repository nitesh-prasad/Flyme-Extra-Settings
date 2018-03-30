.class public Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;
.super Lcom/android/flymexx/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleScreenMagnificationPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;
    }
.end annotation


# instance fields
.field protected mVideoPreference:Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;


# direct methods
.method static synthetic -wrap0(Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method

.method private setMagnificationEnabled(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/flymexx/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;-><init>(Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    iget-object v1, p0, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    invoke-virtual {v1, v3}, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setSelectable(Z)V

    iget-object v1, p0, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    invoke-virtual {v1, v3}, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setPersistent(Z)V

    iget-object v1, p0, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    const v2, 0x7f04018c

    invoke-virtual {v1, v2}, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setLayoutResource(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    iget-object v1, p0, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    invoke-virtual {v1, v3}, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setOrder(I)V

    iget-object v1, p0, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->mSummaryPreference:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    iget-object v1, p0, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    invoke-super {p0}, Lcom/android/flymexx/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->mToggleSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    new-instance v1, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$1;-><init>(Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/flymexx/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/accessibility/ToggleFeaturePreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->mToggleSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->setMagnificationEnabled(I)V

    :cond_0
    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/flymexx/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accessibility_display_magnification_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->setMagnificationEnabled(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1102b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_1
    return-void
.end method
