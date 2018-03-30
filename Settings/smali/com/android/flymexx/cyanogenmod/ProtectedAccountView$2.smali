.class Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2;
.super Ljava/lang/Object;
.source "ProtectedAccountView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->asyncCheckPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;


# direct methods
.method constructor <init>(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string/jumbo v5, "booleanResult"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    invoke-static {v5, v4}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->-wrap1(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;Z)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    invoke-static {v5}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->-get1(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;)Landroid/widget/EditText;

    move-result-object v5

    new-instance v6, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2$1;

    invoke-direct {v6, p0}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2$1;-><init>(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v5, p0, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->-wrap1(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v5, p0, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    invoke-static {v5}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->-get1(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;)Landroid/widget/EditText;

    move-result-object v5

    new-instance v6, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2$1;

    invoke-direct {v6, p0}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2$1;-><init>(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    iget-object v5, p0, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->-wrap1(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v5, p0, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    invoke-static {v5}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->-get1(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;)Landroid/widget/EditText;

    move-result-object v5

    new-instance v6, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2$1;

    invoke-direct {v6, p0}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2$1;-><init>(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_3
    iget-object v5, p0, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->-wrap1(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v5, p0, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    invoke-static {v5}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->-get1(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;)Landroid/widget/EditText;

    move-result-object v5

    new-instance v6, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2$1;

    invoke-direct {v6, p0}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2$1;-><init>(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    invoke-static {v6}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->-get1(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;)Landroid/widget/EditText;

    move-result-object v6

    new-instance v7, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2$1;

    invoke-direct {v7, p0}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2$1;-><init>(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$2;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    throw v5
.end method
