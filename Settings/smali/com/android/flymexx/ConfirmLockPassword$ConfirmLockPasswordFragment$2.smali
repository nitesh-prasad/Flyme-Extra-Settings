.class Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$2;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap1(Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap2(Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get1(Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$1:Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get3(Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
