.class Lcom/android/flymexx/deviceinfo/StorageWizardBase$1;
.super Landroid/os/storage/StorageEventListener;
.source "StorageWizardBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/deviceinfo/StorageWizardBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/deviceinfo/StorageWizardBase;


# direct methods
.method constructor <init>(Lcom/android/flymexx/deviceinfo/StorageWizardBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/deviceinfo/StorageWizardBase$1;->this$0:Lcom/android/flymexx/deviceinfo/StorageWizardBase;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardBase$1;->this$0:Lcom/android/flymexx/deviceinfo/StorageWizardBase;

    iget-object v0, v0, Lcom/android/flymexx/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    iget-object v0, v0, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    iget-object v1, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardBase$1;->this$0:Lcom/android/flymexx/deviceinfo/StorageWizardBase;

    invoke-virtual {v0}, Lcom/android/flymexx/deviceinfo/StorageWizardBase;->finish()V

    :cond_0
    return-void
.end method
