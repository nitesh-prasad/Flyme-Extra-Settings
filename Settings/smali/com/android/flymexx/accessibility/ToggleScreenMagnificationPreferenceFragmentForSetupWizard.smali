.class public Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragmentForSetupWizard;
.super Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;
.source "ToggleScreenMagnificationPreferenceFragmentForSetupWizard.java"


# instance fields
.field private mToggleSwitchWasInitiallyChecked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x170

    return v0
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragmentForSetupWizard;->mToggleSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragmentForSetupWizard;->mToggleSwitchWasInitiallyChecked:Z

    return-void
.end method

.method public onStop()V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragmentForSetupWizard;->mToggleSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragmentForSetupWizard;->mToggleSwitchWasInitiallyChecked:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragmentForSetupWizard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragmentForSetupWizard;->mToggleSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-virtual {v1}, Lcom/android/flymexx/widget/ToggleSwitch;->isChecked()Z

    move-result v1

    const/16 v2, 0x170

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    :cond_0
    invoke-super {p0}, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->onStop()V

    return-void
.end method
