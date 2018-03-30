.class public Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;
.super Landroid/os/AsyncTask;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartitionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field public mActivity:Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;

.field private volatile mPrivateBench:J

.field private volatile mProgress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;

    iget-object v4, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;

    iget-object v3, v4, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mStorage:Landroid/os/storage/StorageManager;

    :try_start_0
    invoke-static {v0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->-get0(Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->partitionPrivate(Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/16 v5, 0x28

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p0, v4}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->publishProgress([Ljava/lang/Object;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->benchmark(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mPrivateBench:J

    iget-wide v4, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mPrivateBench:J

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mPrivateBench:J

    iget-object v4, v0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "primary_physical"

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "StorageSettings"

    const-string/jumbo v5, "Just formatted primary physical; silently moving storage to new emulated volume"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SilentObserver;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SilentObserver;-><init>(Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SilentObserver;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/storage/StorageManager;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    iget-object v4, v0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->partitionPublic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 6

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;

    invoke-virtual {v0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v2, "StorageSettings"

    const-string/jumbo v3, "Failed to partition"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->finishAffinity()V

    return-void

    :cond_1
    invoke-static {v0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->-get0(Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "StorageSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "New volume took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mPrivateBench:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms to run benchmark"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mPrivateBench:J

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    new-instance v1, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;

    invoke-direct {v1}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;-><init>()V

    invoke-virtual {v0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "slow_warning"

    invoke-virtual {v1, v2, v3}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {v0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->-wrap2(Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->-wrap2(Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;

    iget v1, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->setCurrentProgress(I)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setActivity(Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;)V
    .locals 2

    iput-object p1, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;

    iget v1, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->setCurrentProgress(I)V

    return-void
.end method
