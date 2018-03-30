.class Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$1;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;->startEnterAnimation()V
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

    iput-object p1, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$1:Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$1:Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;->-set0(Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;Z)Z

    iget-object v0, p0, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$1:Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap2(Lcom/android/flymexx/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    return-void
.end method
