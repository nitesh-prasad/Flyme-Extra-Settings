.class Lcom/android/flymexx/DeviceAdminAdd$3;
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

    iput-object p1, p0, Lcom/android/flymexx/DeviceAdminAdd$3;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/DeviceAdminAdd$3;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    iget-object v0, v0, Lcom/android/flymexx/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const v1, 0x1605a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object v0, p0, Lcom/android/flymexx/DeviceAdminAdd$3;->this$0:Lcom/android/flymexx/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/android/flymexx/DeviceAdminAdd;->finish()V

    return-void
.end method
