.class Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;
.super Landroid/os/AsyncTask;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/flymexx/applications/ProcStatsPackageEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/applications/InstalledAppDetails;


# direct methods
.method private constructor <init>(Lcom/android/flymexx/applications/InstalledAppDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexx/applications/InstalledAppDetails;Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;-><init>(Lcom/android/flymexx/applications/InstalledAppDetails;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/flymexx/applications/ProcStatsPackageEntry;
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-virtual {v4}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_0

    return-object v8

    :cond_0
    iget-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    iget-object v4, v4, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_1

    return-object v8

    :cond_1
    iget-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    iget-object v4, v4, Lcom/android/flymexx/applications/InstalledAppDetails;->mStatsManager:Lcom/android/flymexx/applications/ProcStatsData;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    new-instance v5, Lcom/android/flymexx/applications/ProcStatsData;

    iget-object v6, p0, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-virtual {v6}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6, v7}, Lcom/android/flymexx/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    iput-object v5, v4, Lcom/android/flymexx/applications/InstalledAppDetails;->mStatsManager:Lcom/android/flymexx/applications/ProcStatsData;

    iget-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    iget-object v4, v4, Lcom/android/flymexx/applications/InstalledAppDetails;->mStatsManager:Lcom/android/flymexx/applications/ProcStatsData;

    sget-object v5, Lcom/android/flymexx/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v6, v5, v7

    invoke-virtual {v4, v6, v7}, Lcom/android/flymexx/applications/ProcStatsData;->setDuration(J)V

    :cond_2
    iget-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    iget-object v4, v4, Lcom/android/flymexx/applications/InstalledAppDetails;->mStatsManager:Lcom/android/flymexx/applications/ProcStatsData;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/flymexx/applications/ProcStatsData;->refreshStats(Z)V

    iget-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    iget-object v4, v4, Lcom/android/flymexx/applications/InstalledAppDetails;->mStatsManager:Lcom/android/flymexx/applications/ProcStatsData;

    invoke-virtual {v4}, Lcom/android/flymexx/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/flymexx/applications/ProcStatsPackageEntry;

    iget-object v4, v2, Lcom/android/flymexx/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/applications/ProcStatsEntry;

    iget v4, v0, Lcom/android/flymexx/applications/ProcStatsEntry;->mUid:I

    iget-object v5, p0, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    iget-object v5, v5, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_4

    invoke-virtual {v2}, Lcom/android/flymexx/applications/ProcStatsPackageEntry;->updateMetrics()V

    return-object v2

    :cond_5
    return-object v8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->doInBackground([Ljava/lang/Void;)Lcom/android/flymexx/applications/ProcStatsPackageEntry;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/flymexx/applications/ProcStatsPackageEntry;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-virtual {v2}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    iput-object p1, v2, Lcom/android/flymexx/applications/InstalledAppDetails;->mStats:Lcom/android/flymexx/applications/ProcStatsPackageEntry;

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/flymexx/applications/InstalledAppDetails;->-get2(Lcom/android/flymexx/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-wide v2, p1, Lcom/android/flymexx/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v4, p1, Lcom/android/flymexx/applications/ProcStatsPackageEntry;->mBgWeight:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    iget-object v4, v4, Lcom/android/flymexx/applications/InstalledAppDetails;->mStatsManager:Lcom/android/flymexx/applications/ProcStatsData;

    invoke-virtual {v4}, Lcom/android/flymexx/applications/ProcStatsData;->getMemInfo()Lcom/android/flymexx/applications/ProcStatsData$MemInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/flymexx/applications/ProcStatsData$MemInfo;->weightToRam:D

    mul-double v0, v2, v4

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/flymexx/applications/InstalledAppDetails;->-get2(Lcom/android/flymexx/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-virtual {v5}, Lcom/android/flymexx/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v5

    double-to-long v6, v0

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const v5, 0x7f0c0d8f

    invoke-virtual {v3, v5, v4}, Lcom/android/flymexx/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/flymexx/applications/InstalledAppDetails;->-get2(Lcom/android/flymexx/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/flymexx/applications/InstalledAppDetails;->-get2(Lcom/android/flymexx/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    const v4, 0x7f0c0d90

    invoke-virtual {v3, v4}, Lcom/android/flymexx/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/flymexx/applications/ProcStatsPackageEntry;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->onPostExecute(Lcom/android/flymexx/applications/ProcStatsPackageEntry;)V

    return-void
.end method
