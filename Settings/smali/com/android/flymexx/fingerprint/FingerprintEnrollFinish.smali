.class public Lcom/android/flymexx/fingerprint/FingerprintEnrollFinish;
.super Lcom/android/flymexx/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollFinish.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/fingerprint/FingerprintEnrollBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf2

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f110139

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/fingerprint/FingerprintEnrollFinish;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/flymexx/fingerprint/FingerprintEnrollFinish;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/flymexx/fingerprint/FingerprintEnrollFinish;->finish()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/flymexx/fingerprint/FingerprintEnrollBase;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/flymexx/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f040083

    invoke-virtual {p0, v4}, Lcom/android/flymexx/fingerprint/FingerprintEnrollFinish;->setContentView(I)V

    const v4, 0x7f0c041f

    invoke-virtual {p0, v4}, Lcom/android/flymexx/fingerprint/FingerprintEnrollFinish;->setHeaderText(I)V

    const v4, 0x7f110139

    invoke-virtual {p0, v4}, Lcom/android/flymexx/fingerprint/FingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string/jumbo v4, "fingerprint"

    invoke-virtual {p0, v4}, Lcom/android/flymexx/fingerprint/FingerprintEnrollFinish;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    iget v4, p0, Lcom/android/flymexx/fingerprint/FingerprintEnrollFinish;->mUserId:I

    invoke-virtual {v2, v4}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/flymexx/fingerprint/FingerprintEnrollFinish;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-lt v1, v3, :cond_0

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onNextButtonClick()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/fingerprint/FingerprintEnrollFinish;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/fingerprint/FingerprintEnrollFinish;->finish()V

    return-void
.end method
