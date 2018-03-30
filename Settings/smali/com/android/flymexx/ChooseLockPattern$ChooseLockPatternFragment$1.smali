.class Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private patternInProgress()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0c07ce

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->-get1(Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->-get2(Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
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

    iget-object v0, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->-get0(Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

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

    iget-object v2, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v2}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->-get4(Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v2

    sget-object v3, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v2}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->-get4(Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v2

    sget-object v3, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v2, v3, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v2, v2, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "null chosen pattern in stage \'need to confirm"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v2, v2, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    iget-object v3, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v3}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->-get3(Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;)B

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;B)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v2}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->-get3(Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;)B

    move-result v2

    invoke-static {p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v3, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v2, v3}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v3, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v2, v3}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v2}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->-get4(Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v2

    sget-object v3, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v2}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->-get4(Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v2

    sget-object v3, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v2, v3, :cond_6

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v3, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v2, v3}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    iget-object v2, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v3, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v2, v3}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected stage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v4}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->-get4(Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " when "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "entering the pattern."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onPatternStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;->-get0(Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$1;->patternInProgress()V

    return-void
.end method
