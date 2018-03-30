.class public Lcom/android/flymexx/deviceinfo/StorageVolumePreference;
.super Landroid/support/v7/preference/Preference;
.source "StorageVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/deviceinfo/StorageVolumePreference$1;
    }
.end annotation


# instance fields
.field private mColor:I

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mUnmountListener:Landroid/view/View$OnClickListener;

.field private mUsedPercent:I

.field private final mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/deviceinfo/StorageVolumePreference;)Landroid/os/storage/VolumeInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;IJ)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v8, -0x1

    iput v8, p0, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    new-instance v8, Lcom/android/flymexx/deviceinfo/StorageVolumePreference$1;

    invoke-direct {v8, p0}, Lcom/android/flymexx/deviceinfo/StorageVolumePreference$1;-><init>(Lcom/android/flymexx/deviceinfo/StorageVolumePreference;)V

    iput-object v8, p0, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->mUnmountListener:Landroid/view/View$OnClickListener;

    const-class v8, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageManager;

    iput-object v8, p0, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    iput-object p2, p0, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    iput p3, p0, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->mColor:I

    const v8, 0x7f040133

    invoke-virtual {p0, v8}, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->setLayoutResource(I)V

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->setKey(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8, p2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v8, "private"

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const v8, 0x7f02011f

    invoke-virtual {p1, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v3

    const-wide/16 v8, 0x0

    cmp-long v8, p4, v8

    if-gtz v8, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    move-result-wide p4

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    sub-long v6, p4, v0

    invoke-static {p1, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p4, p5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    const v9, 0x7f0c06c8

    invoke-virtual {p1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->setSummary(Ljava/lang/CharSequence;)V

    const-wide/16 v8, 0x0

    cmp-long v8, p4, v8

    if-lez v8, :cond_1

    const-wide/16 v8, 0x64

    mul-long/2addr v8, v6

    div-long/2addr v8, p4

    long-to-int v8, v8

    iput v8, p0, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    :cond_1
    iget-object v8, p0, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8, v3}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v8

    cmp-long v8, v0, v8

    if-gez v8, :cond_2

    sget v8, Lcom/android/flymexx/deviceinfo/StorageSettings;->COLOR_WARNING:I

    iput v8, p0, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->mColor:I

    const v8, 0x7f02013c

    invoke-virtual {p1, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->mColor:I

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p0, v2}, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p2, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v8}, Landroid/os/storage/DiskInfo;->isNonRemovable()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_3
    :goto_2
    return-void

    :cond_4
    const v8, 0x7f020129

    invoke-virtual {p1, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getStateDescription()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->setSummary(I)V

    const/4 v8, -0x1

    iput v8, p0, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v8

    if-eqz v8, :cond_3

    const v8, 0x7f0400df

    invoke-virtual {p0, v8}, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->setWidgetLayoutResource(I)V

    goto :goto_2
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    const v2, 0x7f1101c6

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const-string/jumbo v2, "#8a000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->mUnmountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v2, 0x102000d

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget v2, p0, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget v2, p0, Lcom/android/flymexx/deviceinfo/StorageVolumePreference;->mColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
