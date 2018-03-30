.class Lcom/android/flymexx/applications/LockPatternActivity$2;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/flymexx/applications/LockPatternActivity$2;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity$2;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/android/flymexx/applications/LockPatternActivity;->mCreate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity$2;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/android/flymexx/applications/LockPatternActivity;->mConfirming:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity$2;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/flymexx/applications/LockPatternActivity;->setResult(I)V

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity$2;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    invoke-virtual {v0}, Lcom/android/flymexx/applications/LockPatternActivity;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity$2;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/android/flymexx/applications/LockPatternActivity;->mRetryPattern:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity$2;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    iput-boolean v1, v0, Lcom/android/flymexx/applications/LockPatternActivity;->mRetryPattern:Z

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity$2;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    invoke-static {v0, v1}, Lcom/android/flymexx/applications/LockPatternActivity;->-wrap0(Lcom/android/flymexx/applications/LockPatternActivity;Z)V

    return-void
.end method
