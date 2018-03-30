.class Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$pattern:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;Landroid/content/Intent;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->this$2:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    iput-object p2, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$pattern:Ljava/util/List;

    iput p4, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 5

    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->this$2:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    iget-object v0, v0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->-set0(Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->this$2:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    invoke-static {v0}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->-wrap0(Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->this$2:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    iget-object v0, v0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-boolean v0, v0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->mReturnCredentials:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "password"

    iget-object v2, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->this$2:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    iget-object v2, v2, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v2, v2, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$pattern:Ljava/util/List;

    iget v4, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$localEffectiveUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->this$2:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    iget-object v0, v0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->-get1(Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/flymexx/CredentialCheckResultTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$localEffectiveUserId:I

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/flymexx/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void
.end method
