.class public Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;
.super Lcom/android/flymexx/deviceinfo/StorageWizardBase;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;,
        Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SilentObserver;,
        Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;
    }
.end annotation


# instance fields
.field private mFormatPrivate:Z

.field private mTask:Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->getDiskDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->getGenericDiskDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->onFormatFinished()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method

.method private getDiskDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGenericDiskDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1040546

    invoke-virtual {p0, v0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x1040548

    invoke-virtual {p0, v0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private onFormatFinished()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "forget_uuid"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v0}, Landroid/os/storage/StorageManager;->forgetVolume(Ljava/lang/String;)V

    :cond_0
    iget-boolean v4, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v4, "private"

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/flymexx/deviceinfo/StorageWizardMigrate;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "android.os.storage.extra.DISK_ID"

    iget-object v5, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->startActivity(Landroid/content/Intent;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->finishAffinity()V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/flymexx/deviceinfo/StorageWizardReady;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "android.os.storage.extra.DISK_ID"

    iget-object v5, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/flymexx/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->finish()V

    return-void

    :cond_0
    const v0, 0x7f040138

    invoke-virtual {p0, v0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->setContentView(I)V

    invoke-virtual {p0, v1}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->setKeepScreenOn(Z)V

    invoke-virtual {p0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "format_private"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    iget-boolean v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->setIllustrationType(I)V

    new-array v0, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    const v2, 0x7f0c06f0

    invoke-virtual {p0, v2, v0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->setHeaderText(I[Ljava/lang/String;)V

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f0c06f1

    invoke-virtual {p0, v1, v0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->setBodyText(I[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    iput-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-direct {v0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->setActivity(Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;)V

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;->setActivity(Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;)V

    goto :goto_1
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    return-object v0
.end method
