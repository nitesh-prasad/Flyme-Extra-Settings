.class Lcom/android/flymexx/DeviceAdminAdd$5;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/flymexx/DeviceAdminAdd;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/DeviceAdminAdd$5;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v2, p0, Lcom/android/flymexx/DeviceAdminAdd$5;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    iget-boolean v2, v2, Lcom/android/flymexx/DeviceAdminAdd;->mAdding:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/flymexx/DeviceAdminAdd$5;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    invoke-virtual {v2}, Lcom/android/flymexx/DeviceAdminAdd;->addAndFinish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/flymexx/DeviceAdminAdd$5;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    iget-object v3, p0, Lcom/android/flymexx/DeviceAdminAdd$5;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    iget-object v3, v3, Lcom/android/flymexx/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-static {v2, v3}, Lcom/android/flymexx/DeviceAdminAdd;->-wrap0(Lcom/android/flymexx/DeviceAdminAdd;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/flymexx/DeviceAdminAdd$5;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/flymexx/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/DeviceAdminAdd$5;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    iget-object v3, v3, Lcom/android/flymexx/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/flymexx/DeviceAdminAdd$5;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    new-instance v3, Lcom/android/flymexx/DeviceAdminAdd$5$1;

    invoke-direct {v3, p0, v1}, Lcom/android/flymexx/DeviceAdminAdd$5$1;-><init>(Lcom/android/flymexx/DeviceAdminAdd$5;I)V

    invoke-static {v2, v1, v3}, Lcom/android/flymexx/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/flymexx/DeviceAdminAdd$5;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    iget-boolean v2, v2, Lcom/android/flymexx/DeviceAdminAdd;->mUninstalling:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/flymexx/DeviceAdminAdd$5;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/flymexx/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/flymexx/DeviceAdminAdd$5;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    iget-object v3, v3, Lcom/android/flymexx/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/flymexx/DeviceAdminAdd$5;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    invoke-virtual {v2}, Lcom/android/flymexx/DeviceAdminAdd;->finish()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/flymexx/DeviceAdminAdd$5;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    iget-boolean v2, v2, Lcom/android/flymexx/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/android/flymexx/DeviceAdminAdd$5;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/flymexx/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    iget-object v2, p0, Lcom/android/flymexx/DeviceAdminAdd$5;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/flymexx/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/flymexx/DeviceAdminAdd$5;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    iget-object v3, v3, Lcom/android/flymexx/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    new-instance v4, Landroid/os/RemoteCallback;

    new-instance v5, Lcom/android/flymexx/DeviceAdminAdd$5$2;

    invoke-direct {v5, p0}, Lcom/android/flymexx/DeviceAdminAdd$5$2;-><init>(Lcom/android/flymexx/DeviceAdminAdd$5;)V

    iget-object v6, p0, Lcom/android/flymexx/DeviceAdminAdd$5;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    iget-object v6, v6, Lcom/android/flymexx/DeviceAdminAdd;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    iget-object v2, p0, Lcom/android/flymexx/DeviceAdminAdd$5;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    invoke-virtual {v2}, Lcom/android/flymexx/DeviceAdminAdd;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/flymexx/DeviceAdminAdd$5$3;

    invoke-direct {v3, p0}, Lcom/android/flymexx/DeviceAdminAdd$5$3;-><init>(Lcom/android/flymexx/DeviceAdminAdd$5;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
