.class Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$5;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v1, Lcom/android/flymexx/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/flymexx/ConfirmLockPattern$Stage;

    invoke-static {v0, v1}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->-wrap1(Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/flymexx/ConfirmLockPattern$Stage;)V

    return-void
.end method

.method public onTick(J)V
    .locals 7

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    iget-object v1, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v1, v1, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0c07e2

    invoke-virtual {v2, v4, v3}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
