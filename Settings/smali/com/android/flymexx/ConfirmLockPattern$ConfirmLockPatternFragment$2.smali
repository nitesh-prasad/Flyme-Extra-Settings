.class Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method static synthetic -wrap0(Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->isInternalActivity()Z

    move-result v0

    return v0
.end method

.method constructor <init>(Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isInternalActivity()Z
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/flymexx/ConfirmLockPattern$InternalActivity;

    return v0
.end method

.method private startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v2, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget v4, v2, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    move-object v2, p2

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->-wrap0(Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;ZLandroid/content/Intent;IIZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget v6, v0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v1, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v1, v1, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v2, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;

    invoke-direct {v2, p0, p2, p1, v6}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;-><init>(Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;Landroid/content/Intent;Ljava/util/List;I)V

    invoke-static {v1, p1, v6, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->-set0(Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

.method private startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget v8, v2, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget v6, v2, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "challenge"

    const-wide/16 v10, 0x0

    invoke-virtual {v2, v3, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    new-instance v7, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v1, v8}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2$1;-><init>(Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;Landroid/content/Intent;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    move-object/from16 v16, v0

    if-ne v8, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v2, v2, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    :goto_0
    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->-set0(Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v9, v2, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v2, v2, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget v3, v3, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternSize(I)B

    move-result v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;B)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    move-wide v12, v4

    move v14, v6

    move-object v15, v7

    invoke-static/range {v9 .. v15}, Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->-get3(Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->-get0(Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v2}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->-get4(Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v2}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->-get2(Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v2}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->-get3(Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "has_challenge"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->isInternalActivity()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V

    return-void

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v2}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->-get1(Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/flymexx/CredentialCheckResultTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget v3, v3, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v4, v0, v4, v3}, Lcom/android/flymexx/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void
.end method

.method public onPatternStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->-get3(Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;->-get0(Lcom/android/flymexx/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
