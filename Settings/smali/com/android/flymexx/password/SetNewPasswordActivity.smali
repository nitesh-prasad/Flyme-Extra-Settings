.class public Lcom/android/flymexx/password/SetNewPasswordActivity;
.super Landroid/app/Activity;
.source "SetNewPasswordActivity.java"

# interfaces
.implements Lcom/android/flymexx/password/SetNewPasswordController$Ui;


# instance fields
.field private mNewPasswordAction:Ljava/lang/String;

.field private mSetNewPasswordController:Lcom/android/flymexx/password/SetNewPasswordController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public launchChooseLock(Landroid/os/Bundle;)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/flymexx/ChooseLockGeneric;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/flymexx/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/flymexx/password/SetNewPasswordActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/flymexx/password/SetNewPasswordActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/password/SetNewPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    const-string/jumbo v0, "android.app.action.SET_NEW_PASSWORD"

    iget-object v1, p0, Lcom/android/flymexx/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    iget-object v1, p0, Lcom/android/flymexx/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/password/SetNewPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/password/SetNewPasswordActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {p0, p0, v0, v1}, Lcom/android/flymexx/password/SetNewPasswordController;->create(Landroid/content/Context;Lcom/android/flymexx/password/SetNewPasswordController$Ui;Landroid/content/Intent;Landroid/os/IBinder;)Lcom/android/flymexx/password/SetNewPasswordController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/password/SetNewPasswordActivity;->mSetNewPasswordController:Lcom/android/flymexx/password/SetNewPasswordController;

    iget-object v0, p0, Lcom/android/flymexx/password/SetNewPasswordActivity;->mSetNewPasswordController:Lcom/android/flymexx/password/SetNewPasswordController;

    invoke-virtual {v0}, Lcom/android/flymexx/password/SetNewPasswordController;->dispatchSetNewPasswordIntent()V

    return-void

    :cond_1
    const-string/jumbo v0, "SetNewPasswordActivity"

    const-string/jumbo v1, "Unexpected action to launch this activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/flymexx/password/SetNewPasswordActivity;->finish()V

    return-void
.end method
