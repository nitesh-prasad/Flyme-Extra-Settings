.class final Lcom/android/flymexx/applications/ProcessStatsUi$1;
.super Ljava/lang/Object;
.source "ProcessStatsUi.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/applications/ProcessStatsUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/flymexx/applications/ProcStatsPackageEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/flymexx/applications/ProcStatsPackageEntry;Lcom/android/flymexx/applications/ProcStatsPackageEntry;)I
    .locals 8

    iget-wide v4, p2, Lcom/android/flymexx/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v6, p2, Lcom/android/flymexx/applications/ProcStatsPackageEntry;->mBgWeight:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/flymexx/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v6, p1, Lcom/android/flymexx/applications/ProcStatsPackageEntry;->mBgWeight:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_0
    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/flymexx/applications/ProcStatsPackageEntry;

    check-cast p2, Lcom/android/flymexx/applications/ProcStatsPackageEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/flymexx/applications/ProcessStatsUi$1;->compare(Lcom/android/flymexx/applications/ProcStatsPackageEntry;Lcom/android/flymexx/applications/ProcStatsPackageEntry;)I

    move-result v0

    return v0
.end method
