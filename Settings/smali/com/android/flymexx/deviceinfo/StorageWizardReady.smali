.class public Lcom/android/flymexx/deviceinfo/StorageWizardReady;
.super Lcom/android/flymexx/deviceinfo/StorageWizardBase;
.source "StorageWizardReady.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/flymexx/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/flymexx/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/deviceinfo/StorageWizardReady;->finish()V

    return-void

    :cond_0
    const v2, 0x7f040134

    invoke-virtual {p0, v2}, Lcom/android/flymexx/deviceinfo/StorageWizardReady;->setContentView(I)V

    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/flymexx/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f0c06fb

    invoke-virtual {p0, v3, v2}, Lcom/android/flymexx/deviceinfo/StorageWizardReady;->setHeaderText(I[Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/flymexx/deviceinfo/StorageWizardReady;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/android/flymexx/deviceinfo/StorageWizardReady;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/flymexx/deviceinfo/StorageWizardReady;->setIllustrationType(I)V

    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/flymexx/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f0c06fc

    invoke-virtual {p0, v3, v2}, Lcom/android/flymexx/deviceinfo/StorageWizardReady;->setBodyText(I[Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/flymexx/deviceinfo/StorageWizardReady;->getNextButton()Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f0c03bf

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    return-void

    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/flymexx/deviceinfo/StorageWizardReady;->setIllustrationType(I)V

    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/flymexx/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f0c06fd

    invoke-virtual {p0, v3, v2}, Lcom/android/flymexx/deviceinfo/StorageWizardReady;->setBodyText(I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNavigateNext()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/flymexx/deviceinfo/StorageWizardReady;->finishAffinity()V

    return-void
.end method
