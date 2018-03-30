.class Lcom/android/flymexx/CryptKeeper$4;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/flymexx/CryptKeeper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/CryptKeeper$4;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v0, p0, Lcom/android/flymexx/CryptKeeper$4;->this$0:Lcom/android/flymexx/CryptKeeper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/flymexx/CryptKeeper;->-wrap8(Lcom/android/flymexx/CryptKeeper;Z)V

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/flymexx/CryptKeeper$4;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v0}, Lcom/android/flymexx/CryptKeeper;->-get3(Lcom/android/flymexx/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/android/flymexx/CryptKeeper$DecryptTask;

    iget-object v1, p0, Lcom/android/flymexx/CryptKeeper$4;->this$0:Lcom/android/flymexx/CryptKeeper;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/flymexx/CryptKeeper$DecryptTask;-><init>(Lcom/android/flymexx/CryptKeeper;Lcom/android/flymexx/CryptKeeper$DecryptTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/flymexx/CryptKeeper$4;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v2}, Lcom/android/flymexx/CryptKeeper;->-get3(Lcom/android/flymexx/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->getLockPatternSize()B

    move-result v2

    invoke-static {p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/flymexx/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/CryptKeeper$4;->this$0:Lcom/android/flymexx/CryptKeeper;

    iget-object v1, p0, Lcom/android/flymexx/CryptKeeper$4;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v1}, Lcom/android/flymexx/CryptKeeper;->-get3(Lcom/android/flymexx/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/CryptKeeper;->-wrap3(Lcom/android/flymexx/CryptKeeper;Landroid/view/View;)V

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/CryptKeeper$4;->this$0:Lcom/android/flymexx/CryptKeeper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/flymexx/CryptKeeper;->-wrap8(Lcom/android/flymexx/CryptKeeper;Z)V

    iget-object v0, p0, Lcom/android/flymexx/CryptKeeper$4;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v0}, Lcom/android/flymexx/CryptKeeper;->-get3(Lcom/android/flymexx/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/CryptKeeper$4;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v1}, Lcom/android/flymexx/CryptKeeper;->-get0(Lcom/android/flymexx/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
