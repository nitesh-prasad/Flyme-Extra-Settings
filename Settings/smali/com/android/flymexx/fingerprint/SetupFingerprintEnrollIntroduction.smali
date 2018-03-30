.class public Lcom/android/flymexx/fingerprint/SetupFingerprintEnrollIntroduction;
.super Lcom/android/flymexx/fingerprint/FingerprintEnrollIntroduction;
.source "SetupFingerprintEnrollIntroduction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/fingerprint/FingerprintEnrollIntroduction;-><init>()V

    return-void
.end method


# virtual methods
.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/flymexx/SetupChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/android/flymexx/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/flymexx/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/flymexx/fingerprint/SetupFingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/android/flymexx/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/flymexx/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf9

    return v0
.end method

.method protected initViews()V
    .locals 4

    invoke-super {p0}, Lcom/android/flymexx/fingerprint/FingerprintEnrollIntroduction;->initViews()V

    const v3, 0x7f11013b

    invoke-virtual {p0, v3}, Lcom/android/flymexx/fingerprint/SetupFingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0c040c

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/fingerprint/SetupFingerprintEnrollIntroduction;->getNextButton()Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f0c0410

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    const v3, 0x7f11013c

    invoke-virtual {p0, v3}, Lcom/android/flymexx/fingerprint/SetupFingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v3, 0x7f0c040f

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    if-nez p3, :cond_0

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, ":settings:password_quality"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/flymexx/fingerprint/FingerprintEnrollIntroduction;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/flymexx/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    invoke-super {p0, p1, p2, p3}, Lcom/android/flymexx/fingerprint/FingerprintEnrollIntroduction;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method protected onCancelButtonClick()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/flymexx/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:frp_supported"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/android/flymexx/fingerprint/SetupSkipDialog;->newInstance(Z)Lcom/android/flymexx/fingerprint/SetupSkipDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/fingerprint/SetupFingerprintEnrollIntroduction;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/flymexx/fingerprint/SetupSkipDialog;->show(Landroid/app/FragmentManager;)V

    return-void
.end method
