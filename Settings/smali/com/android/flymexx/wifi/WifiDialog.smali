.class Lcom/android/flymexx/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/flymexx/wifi/WifiConfigUiBase;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/wifi/WifiDialog$WifiDialogListener;
    }
.end annotation


# instance fields
.field private final mAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

.field private mController:Lcom/android/flymexx/wifi/WifiConfigController;

.field private mHideSubmitButton:Z

.field private final mListener:Lcom/android/flymexx/wifi/WifiDialog$WifiDialogListener;

.field private final mMode:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/flymexx/wifi/WifiDialog$WifiDialogListener;Lcom/android/flymexxlib/wifi/AccessPoint;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput p4, p0, Lcom/android/flymexx/wifi/WifiDialog;->mMode:I

    iput-object p2, p0, Lcom/android/flymexx/wifi/WifiDialog;->mListener:Lcom/android/flymexx/wifi/WifiDialog$WifiDialogListener;

    iput-object p3, p0, Lcom/android/flymexx/wifi/WifiDialog;->mAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/wifi/WifiDialog;->mHideSubmitButton:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/flymexx/wifi/WifiDialog$WifiDialogListener;Lcom/android/flymexxlib/wifi/AccessPoint;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/flymexx/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/flymexx/wifi/WifiDialog$WifiDialogListener;Lcom/android/flymexxlib/wifi/AccessPoint;I)V

    iput-boolean p5, p0, Lcom/android/flymexx/wifi/WifiDialog;->mHideSubmitButton:Z

    return-void
.end method


# virtual methods
.method public dispatchSubmit()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiDialog;->mListener:Lcom/android/flymexx/wifi/WifiDialog$WifiDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiDialog;->mListener:Lcom/android/flymexx/wifi/WifiDialog$WifiDialogListener;

    invoke-interface {v0, p0}, Lcom/android/flymexx/wifi/WifiDialog$WifiDialogListener;->onSubmit(Lcom/android/flymexx/wifi/WifiDialog;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiDialog;->dismiss()V

    return-void
.end method

.method public getController()Lcom/android/flymexx/wifi/WifiConfigController;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiDialog;->mController:Lcom/android/flymexx/wifi/WifiConfigController;

    return-object v0
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/android/flymexx/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiDialog;->mListener:Lcom/android/flymexx/wifi/WifiDialog$WifiDialogListener;

    if-eqz v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiDialog;->mListener:Lcom/android/flymexx/wifi/WifiDialog$WifiDialogListener;

    invoke-interface {v0, p0}, Lcom/android/flymexx/wifi/WifiDialog$WifiDialogListener;->onSubmit(Lcom/android/flymexx/wifi/WifiDialog;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiDialog;->mAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/flymexxlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/flymexxlib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexxlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiDialog;->mListener:Lcom/android/flymexx/wifi/WifiDialog$WifiDialogListener;

    invoke-interface {v0, p0}, Lcom/android/flymexx/wifi/WifiDialog$WifiDialogListener;->onForget(Lcom/android/flymexx/wifi/WifiDialog;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040196

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/flymexx/wifi/WifiDialog;->setView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    new-instance v0, Lcom/android/flymexx/wifi/WifiConfigController;

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/flymexx/wifi/WifiDialog;->mAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    iget v3, p0, Lcom/android/flymexx/wifi/WifiDialog;->mMode:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/flymexx/wifi/WifiConfigController;-><init>(Lcom/android/flymexx/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/flymexxlib/wifi/AccessPoint;I)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiDialog;->mController:Lcom/android/flymexx/wifi/WifiConfigController;

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/flymexx/wifi/WifiDialog;->mHideSubmitButton:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiDialog;->mController:Lcom/android/flymexx/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/flymexx/wifi/WifiConfigController;->hideSubmitButton()V

    :goto_0
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiDialog;->mAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiDialog;->mController:Lcom/android/flymexx/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/flymexx/wifi/WifiConfigController;->hideForgetButton()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiDialog;->mController:Lcom/android/flymexx/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/flymexx/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiDialog;->mController:Lcom/android/flymexx/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/flymexx/wifi/WifiConfigController;->updatePassword()V

    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p0}, Lcom/android/flymexx/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p0}, Lcom/android/flymexx/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p0}, Lcom/android/flymexx/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
