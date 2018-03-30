.class Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment$1;
.super Ljava/lang/Object;
.source "UserCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment;

.field final synthetic val$item:Lcom/android/flymexx/UserCredentialsSettings$Credential;

.field final synthetic val$myUserId:I


# direct methods
.method constructor <init>(Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment;ILcom/android/flymexx/UserCredentialsSettings$Credential;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment$1;->this$1:Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment;

    iput p2, p0, Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment$1;->val$myUserId:I

    iput-object p3, p0, Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment$1;->val$item:Lcom/android/flymexx/UserCredentialsSettings$Credential;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v1, p0, Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment$1;->this$1:Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v1}, Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "no_config_credentials"

    iget v3, p0, Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment$1;->val$myUserId:I

    invoke-static {v1, v2, v3}, Lcom/android/flymexxlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment$1;->this$1:Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v1}, Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/flymexxlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    new-instance v1, Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;

    iget-object v2, p0, Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment$1;->this$1:Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment;

    iget-object v3, p0, Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment$1;->this$1:Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v3}, Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment$1;->this$1:Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v4}, Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;-><init>(Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment;Landroid/content/Context;Landroid/app/Fragment;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment$1;->val$item:Lcom/android/flymexx/UserCredentialsSettings$Credential;

    iget-object v3, v3, Lcom/android/flymexx/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/flymexx/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
