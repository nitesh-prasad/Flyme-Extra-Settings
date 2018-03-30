.class Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$4;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;->startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$pin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$1:Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iput-object p2, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$pin:Ljava/lang/String;

    iput p4, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$1:Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;->-set1(Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$1:Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap0(Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$1:Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-boolean v0, v0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;->mReturnCredentials:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$intent:Landroid/content/Intent;

    const-string/jumbo v2, "type"

    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$1:Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get2(Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "password"

    iget-object v2, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$pin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$1:Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get0(Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/flymexx/CredentialCheckResultTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$localEffectiveUserId:I

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/flymexx/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void

    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method
