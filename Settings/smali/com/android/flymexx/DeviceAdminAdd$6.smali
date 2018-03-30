.class Lcom/android/flymexx/DeviceAdminAdd$6;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/DeviceAdminAdd;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/android/flymexx/DeviceAdminAdd$6;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/flymexx/DeviceAdminAdd$6;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/flymexx/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/flymexx/DeviceAdminAdd$6;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/flymexx/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    iget-object v1, p0, Lcom/android/flymexx/DeviceAdminAdd$6;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    invoke-virtual {v1}, Lcom/android/flymexx/DeviceAdminAdd;->finish()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
