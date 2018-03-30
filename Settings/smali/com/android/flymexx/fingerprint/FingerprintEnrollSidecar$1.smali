.class Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$1;
.super Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
.source "FingerprintEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method constructor <init>(Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;->-get1(Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;)Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;->-get1(Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;)Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$Listener;->onEnrollmentError(ILjava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;->-set1(Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;Z)Z

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;->-get1(Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;)Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;->-get1(Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;)Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$Listener;->onEnrollmentHelp(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onEnrollmentProgress(I)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v1}, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;->-get0(Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v1, p1}, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;->-set3(Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;I)I

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v1, p1}, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;->-set2(Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;I)I

    iget-object v1, p0, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, v0}, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;->-set0(Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;Z)Z

    iget-object v0, p0, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;->-get1(Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;)Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;->-get1(Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;)Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v1}, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;->-get0(Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/flymexx/fingerprint/FingerprintEnrollSidecar$Listener;->onEnrollmentProgressChange(II)V

    :cond_2
    return-void
.end method
