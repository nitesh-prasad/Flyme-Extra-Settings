.class Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$3;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;->startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localUserId:I


# direct methods
.method constructor <init>(Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$1:Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iput-object p2, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->val$localUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$1:Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v1, v2}, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;->-set1(Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$1:Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-boolean v1, v1, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;->mReturnCredentials:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->val$intent:Landroid/content/Intent;

    const-string/jumbo v2, "hw_auth_token"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$1:Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get0(Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/flymexx/CredentialCheckResultTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->val$intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->val$localUserId:I

    invoke-virtual {v1, v0, v2, p2, v3}, Lcom/android/flymexx/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void
.end method
