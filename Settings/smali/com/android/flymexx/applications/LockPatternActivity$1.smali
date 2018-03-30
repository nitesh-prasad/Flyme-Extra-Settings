.class Lcom/android/flymexx/applications/LockPatternActivity$1;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/applications/LockPatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/applications/LockPatternActivity;


# direct methods
.method constructor <init>(Lcom/android/flymexx/applications/LockPatternActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/applications/LockPatternActivity$1;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity$1;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/flymexx/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity$1;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/flymexx/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity$1;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/android/flymexx/applications/LockPatternActivity;->mCreate:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity$1;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/android/flymexx/applications/LockPatternActivity;->mConfirming:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity$1;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/flymexx/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/flymexx/applications/LockPatternActivity$1;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/flymexx/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c07d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity$1;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/flymexx/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/flymexx/applications/LockPatternActivity$1;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/flymexx/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c07cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity$1;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/flymexx/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/flymexx/applications/LockPatternActivity$1;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/flymexx/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity$1;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    iget-object v1, v0, Lcom/android/flymexx/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity$1;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/android/flymexx/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity$1;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    invoke-virtual {v0}, Lcom/android/flymexx/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0257

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity$1;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    invoke-virtual {v0}, Lcom/android/flymexx/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c07d9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
