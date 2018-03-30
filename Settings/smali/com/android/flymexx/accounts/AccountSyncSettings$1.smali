.class Lcom/android/flymexx/accounts/AccountSyncSettings$1;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/accounts/AccountSyncSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/flymexx/accounts/AccountSyncSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/accounts/AccountSyncSettings$1;->this$0:Lcom/android/flymexx/accounts/AccountSyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/flymexx/accounts/AccountSyncSettings$1;->this$0:Lcom/android/flymexx/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/accounts/AccountSyncSettings$1;->this$0:Lcom/android/flymexx/accounts/AccountSyncSettings;

    invoke-static {v1}, Lcom/android/flymexx/accounts/AccountSyncSettings;->-get0(Lcom/android/flymexx/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v1

    new-instance v3, Lcom/android/flymexx/accounts/AccountSyncSettings$1$1;

    invoke-direct {v3, p0}, Lcom/android/flymexx/accounts/AccountSyncSettings$1$1;-><init>(Lcom/android/flymexx/accounts/AccountSyncSettings$1;)V

    iget-object v4, p0, Lcom/android/flymexx/accounts/AccountSyncSettings$1;->this$0:Lcom/android/flymexx/accounts/AccountSyncSettings;

    iget-object v5, v4, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method
