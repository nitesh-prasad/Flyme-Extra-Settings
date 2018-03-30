.class public Lcom/android/flymexx/applications/ProcessStatsPreference;
.super Lcom/android/flymexx/AppProgressPreference;
.source "ProcessStatsPreference.java"


# instance fields
.field private mEntry:Lcom/android/flymexx/applications/ProcStatsPackageEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/flymexx/AppProgressPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getEntry()Lcom/android/flymexx/applications/ProcStatsPackageEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ProcessStatsPreference;->mEntry:Lcom/android/flymexx/applications/ProcStatsPackageEntry;

    return-object v0
.end method

.method public init(Lcom/android/flymexx/applications/ProcStatsPackageEntry;Landroid/content/pm/PackageManager;DDDZ)V
    .locals 9

    iput-object p1, p0, Lcom/android/flymexx/applications/ProcessStatsPreference;->mEntry:Lcom/android/flymexx/applications/ProcStatsPackageEntry;

    iget-object v3, p1, Lcom/android/flymexx/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/flymexx/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/flymexx/applications/ProcessStatsPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p1, Lcom/android/flymexx/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/flymexx/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/flymexx/applications/ProcessStatsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-wide v4, p1, Lcom/android/flymexx/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v6, p1, Lcom/android/flymexx/applications/ProcStatsPackageEntry;->mBgWeight:D

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2

    const/4 v2, 0x1

    :goto_2
    if-eqz p9, :cond_4

    if-eqz v2, :cond_3

    iget-wide v4, p1, Lcom/android/flymexx/applications/ProcStatsPackageEntry;->mRunWeight:D

    :goto_3
    mul-double v0, v4, p5

    :goto_4
    invoke-virtual {p0}, Lcom/android/flymexx/applications/ProcessStatsPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    double-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/flymexx/applications/ProcessStatsPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v0

    div-double/2addr v4, p3

    double-to-int v3, v4

    invoke-virtual {p0, v3}, Lcom/android/flymexx/applications/ProcessStatsPreference;->setProgress(I)V

    return-void

    :cond_0
    iget-object v3, p1, Lcom/android/flymexx/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v3}, Lcom/android/flymexx/applications/ProcessStatsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    iget-wide v4, p1, Lcom/android/flymexx/applications/ProcStatsPackageEntry;->mBgWeight:D

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    iget-wide v4, p1, Lcom/android/flymexx/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    :goto_5
    long-to-double v4, v4

    mul-double v4, v4, p7

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    mul-double v0, v4, v6

    goto :goto_4

    :cond_5
    iget-wide v4, p1, Lcom/android/flymexx/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    goto :goto_5
.end method
