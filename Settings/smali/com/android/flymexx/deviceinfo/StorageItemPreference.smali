.class public Lcom/android/flymexx/deviceinfo/StorageItemPreference;
.super Landroid/support/v7/preference/Preference;
.source "StorageItemPreference.java"


# instance fields
.field private progress:I

.field private progressBar:Landroid/widget/ProgressBar;

.field public userHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/flymexx/deviceinfo/StorageItemPreference;->progress:I

    const v0, 0x7f040131

    invoke-virtual {p0, v0}, Lcom/android/flymexx/deviceinfo/StorageItemPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/android/flymexx/deviceinfo/StorageItemPreference;->updateProgressBar()V

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public setStorageSize(JJ)V
    .locals 5

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/flymexx/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    cmp-long v0, p3, v2

    if-nez v0, :cond_1

    iput v1, p0, Lcom/android/flymexx/deviceinfo/StorageItemPreference;->progress:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/flymexx/deviceinfo/StorageItemPreference;->updateProgressBar()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/deviceinfo/StorageItemPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    long-to-int v0, v0

    iput v0, p0, Lcom/android/flymexx/deviceinfo/StorageItemPreference;->progress:I

    goto :goto_1
.end method

.method protected updateProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/flymexx/deviceinfo/StorageItemPreference;->progress:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/flymexx/deviceinfo/StorageItemPreference;->progress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
