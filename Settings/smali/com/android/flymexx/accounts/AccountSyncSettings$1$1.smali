.class Lcom/android/flymexx/accounts/AccountSyncSettings$1$1;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/accounts/AccountSyncSettings$1;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/android/flymexx/accounts/AccountSyncSettings$1;


# direct methods
.method constructor <init>(Lcom/android/flymexx/accounts/AccountSyncSettings$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/flymexx/accounts/AccountSyncSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/flymexx/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/flymexx/accounts/AccountSyncSettings$1;

    iget-object v4, v4, Lcom/android/flymexx/accounts/AccountSyncSettings$1;->this$0:Lcom/android/flymexx/accounts/AccountSyncSettings;

    invoke-virtual {v4}, Lcom/android/flymexx/accounts/AccountSyncSettings;->isResumed()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string/jumbo v5, "booleanResult"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/flymexx/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/flymexx/accounts/AccountSyncSettings$1;

    iget-object v4, v4, Lcom/android/flymexx/accounts/AccountSyncSettings$1;->this$0:Lcom/android/flymexx/accounts/AccountSyncSettings;

    invoke-virtual {v4}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/flymexx/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/flymexx/accounts/AccountSyncSettings$1;

    iget-object v4, v4, Lcom/android/flymexx/accounts/AccountSyncSettings$1;->this$0:Lcom/android/flymexx/accounts/AccountSyncSettings;

    invoke-virtual {v4}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/flymexx/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/flymexx/accounts/AccountSyncSettings$1;

    iget-object v4, v4, Lcom/android/flymexx/accounts/AccountSyncSettings$1;->this$0:Lcom/android/flymexx/accounts/AccountSyncSettings;

    invoke-virtual {v4}, Lcom/android/flymexx/accounts/AccountSyncSettings;->finish()V

    :goto_1
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/flymexx/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/flymexx/accounts/AccountSyncSettings$1;

    iget-object v4, v4, Lcom/android/flymexx/accounts/AccountSyncSettings$1;->this$0:Lcom/android/flymexx/accounts/AccountSyncSettings;

    const/16 v5, 0x65

    invoke-static {v4, v5}, Lcom/android/flymexx/accounts/AccountSyncSettings;->-wrap0(Lcom/android/flymexx/accounts/AccountSyncSettings;I)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method
