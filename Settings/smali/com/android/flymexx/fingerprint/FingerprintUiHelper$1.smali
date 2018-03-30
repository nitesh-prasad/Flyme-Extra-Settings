.class Lcom/android/flymexx/fingerprint/FingerprintUiHelper$1;
.super Ljava/lang/Object;
.source "FingerprintUiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/fingerprint/FingerprintUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/fingerprint/FingerprintUiHelper;


# direct methods
.method constructor <init>(Lcom/android/flymexx/fingerprint/FingerprintUiHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/flymexx/fingerprint/FingerprintUiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/flymexx/fingerprint/FingerprintUiHelper;

    invoke-static {v0}, Lcom/android/flymexx/fingerprint/FingerprintUiHelper;->-get1(Lcom/android/flymexx/fingerprint/FingerprintUiHelper;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/flymexx/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/flymexx/fingerprint/FingerprintUiHelper;

    invoke-static {v0}, Lcom/android/flymexx/fingerprint/FingerprintUiHelper;->-get3(Lcom/android/flymexx/fingerprint/FingerprintUiHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/flymexx/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/flymexx/fingerprint/FingerprintUiHelper;

    invoke-static {v0}, Lcom/android/flymexx/fingerprint/FingerprintUiHelper;->-get2(Lcom/android/flymexx/fingerprint/FingerprintUiHelper;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/flymexx/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/flymexx/fingerprint/FingerprintUiHelper;

    invoke-static {v0}, Lcom/android/flymexx/fingerprint/FingerprintUiHelper;->-get0(Lcom/android/flymexx/fingerprint/FingerprintUiHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0200bc

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/flymexx/fingerprint/FingerprintUiHelper;

    invoke-static {v0}, Lcom/android/flymexx/fingerprint/FingerprintUiHelper;->-get3(Lcom/android/flymexx/fingerprint/FingerprintUiHelper;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0200ba

    goto :goto_1
.end method
