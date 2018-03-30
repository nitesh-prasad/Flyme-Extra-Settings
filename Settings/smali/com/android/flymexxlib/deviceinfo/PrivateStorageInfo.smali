.class public Lcom/android/flymexxlib/deviceinfo/PrivateStorageInfo;
.super Ljava/lang/Object;
.source "PrivateStorageInfo.java"


# instance fields
.field public final freeBytes:J

.field public final totalBytes:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/flymexxlib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    iput-wide p3, p0, Lcom/android/flymexxlib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    return-void
.end method

.method public static getPrimaryPhysicalTotalSpace(Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;)J"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    return-wide v2

    :cond_1
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public static getPrivateStorageInfo(Lcom/android/flymexxlib/deviceinfo/StorageVolumeProvider;)Lcom/android/flymexxlib/deviceinfo/PrivateStorageInfo;
    .locals 12

    invoke-interface {p0}, Lcom/android/flymexxlib/deviceinfo/StorageVolumeProvider;->getPrimaryStorageSize()J

    move-result-wide v8

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-interface {p0}, Lcom/android/flymexxlib/deviceinfo/StorageVolumeProvider;->getVolumes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    const/4 v10, 0x1

    if-ne v3, v10, :cond_0

    if-eqz v2, :cond_0

    invoke-static {v0, v8, v9}, Lcom/android/flymexxlib/deviceinfo/PrivateStorageInfo;->getTotalSize(Landroid/os/storage/VolumeInfo;J)J

    move-result-wide v10

    add-long/2addr v6, v10

    invoke-virtual {v2}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v10

    add-long/2addr v4, v10

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/android/flymexxlib/deviceinfo/StorageVolumeProvider;->getVolumes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/flymexxlib/deviceinfo/PrivateStorageInfo;->getPrimaryPhysicalTotalSpace(Ljava/util/List;)J

    move-result-wide v10

    sub-long/2addr v6, v10

    new-instance v3, Lcom/android/flymexxlib/deviceinfo/PrivateStorageInfo;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/flymexxlib/deviceinfo/PrivateStorageInfo;-><init>(JJ)V

    return-object v3
.end method

.method public static getTotalSize(Landroid/os/storage/VolumeInfo;J)J
    .locals 7

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    cmp-long v1, p1, v4

    if-lez v1, :cond_0

    return-wide p1

    :cond_0
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "PrivateStorageInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "info\'s path is null on getTotalSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    return-wide v2
.end method
