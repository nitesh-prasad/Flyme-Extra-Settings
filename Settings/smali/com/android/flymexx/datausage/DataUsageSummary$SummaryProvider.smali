.class Lcom/android/flymexx/datausage/DataUsageSummary$SummaryProvider;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mDataController:Lcom/android/flymexxlib/net/DataUsageController;

.field private final mSummaryLoader:Lcom/android/flymexx/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/flymexx/dashboard/SummaryLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/flymexx/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/flymexx/datausage/DataUsageSummary$SummaryProvider;->mSummaryLoader:Lcom/android/flymexx/dashboard/SummaryLoader;

    new-instance v0, Lcom/android/flymexxlib/net/DataUsageController;

    invoke-direct {v0, p1}, Lcom/android/flymexxlib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataUsageSummary$SummaryProvider;->mDataController:Lcom/android/flymexxlib/net/DataUsageController;

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 6

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/datausage/DataUsageSummary$SummaryProvider;->mDataController:Lcom/android/flymexxlib/net/DataUsageController;

    invoke-virtual {v2}, Lcom/android/flymexxlib/net/DataUsageController;->getDataUsageInfo()Lcom/android/flymexxlib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/flymexx/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/flymexx/datausage/DataUsageSummary$SummaryProvider;->mSummaryLoader:Lcom/android/flymexx/dashboard/SummaryLoader;

    iget-object v3, p0, Lcom/android/flymexx/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const v5, 0x7f0c0dda

    invoke-virtual {v3, v5, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/android/flymexx/dashboard/SummaryLoader;->setSummary(Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    iget-wide v2, v0, Lcom/android/flymexxlib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/android/flymexx/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    iget-wide v4, v0, Lcom/android/flymexxlib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v2, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-wide v2, v0, Lcom/android/flymexxlib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    iget-wide v4, v0, Lcom/android/flymexxlib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/flymexx/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
