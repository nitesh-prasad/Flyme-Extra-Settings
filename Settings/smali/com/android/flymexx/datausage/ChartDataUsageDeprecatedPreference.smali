.class public Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;
.super Landroid/support/v7/preference/Preference;
.source "ChartDataUsageDeprecatedPreference.java"


# instance fields
.field private mChartDataUsageView:Lcom/android/flymexx/widget/ChartDataUsageView;

.field private mChartListener:Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;

.field private mContext:Landroid/content/Context;

.field private mDetail:Landroid/net/NetworkStatsHistory;

.field private mInspectEnd:J

.field private mInspectRangeChanged:Z

.field private mInspectStart:J

.field private mNetwork:Landroid/net/NetworkStatsHistory;

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mSelectLeft:J

.field private mSelectRight:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/flymexx/widget/ChartDataUsageView;

    iput-object v0, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartListener:Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mInspectRangeChanged:Z

    iput-object p1, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f040060

    invoke-virtual {p0, v0}, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->setLayoutResource(I)V

    return-void
.end method

.method private updateChart()V
    .locals 11

    iget-object v1, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/flymexx/widget/ChartDataUsageView;

    iget-object v2, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartListener:Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v1, v2}, Lcom/android/flymexx/widget/ChartDataUsageView;->setListener(Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;)V

    iget-object v1, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/flymexx/widget/ChartDataUsageView;

    iget-object v2, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-virtual {v1, v2}, Lcom/android/flymexx/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    iget-object v1, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/flymexx/widget/ChartDataUsageView;

    iget-object v2, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1, v2}, Lcom/android/flymexx/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    iget-object v1, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/flymexx/widget/ChartDataUsageView;

    iget-object v2, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mDetail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1, v2}, Lcom/android/flymexx/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    iget-object v1, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/flymexx/widget/ChartDataUsageView;

    iget-wide v2, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mInspectStart:J

    iget-wide v4, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mInspectEnd:J

    iget-wide v6, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mSelectLeft:J

    iget-wide v8, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mSelectRight:J

    invoke-virtual/range {v1 .. v9}, Lcom/android/flymexx/widget/ChartDataUsageView;->setVisibleRange(JJJJ)V

    iget-object v1, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/flymexx/datausage/BillingCycleSettings;->isShowDataUsage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v10, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-virtual {v1, v10}, Lcom/android/flymexx/widget/ChartDataUsageView;->setDateSelectionSweepVisible(I)V

    return-void

    :cond_0
    const/16 v10, 0x8

    goto :goto_0
.end method


# virtual methods
.method public bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mDetail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->notifyChanged()V

    return-void
.end method

.method public bindNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mPolicy:Landroid/net/NetworkPolicy;

    return-void
.end method

.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->notifyChanged()V

    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/flymexx/widget/ChartDataUsageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mInspectEnd:J

    return-wide v0
.end method

.method public getInspectLeft()J
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/flymexx/widget/ChartDataUsageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->getInspectLeft()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mSelectLeft:J

    return-wide v0
.end method

.method public getInspectRight()J
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/flymexx/widget/ChartDataUsageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->getInspectRight()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mSelectRight:J

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/flymexx/widget/ChartDataUsageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mInspectStart:J

    return-wide v0
.end method

.method public getLimitBytes()J
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningBytes()J
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/flymexx/widget/ChartDataUsageView;

    iput-object v0, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/flymexx/widget/ChartDataUsageView;

    iget-boolean v0, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mInspectRangeChanged:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->updateChart()V

    :cond_0
    const-string/jumbo v0, "ChartDataUsageDeprecatedPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBindViewHolder mChartDataUsageView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setInspectRangeChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mInspectRangeChanged:Z

    return-void
.end method

.method public setListener(Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mChartListener:Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;

    return-void
.end method

.method public setVisibleRange(JJJJ)V
    .locals 1

    iput-wide p1, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mInspectStart:J

    iput-wide p3, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mInspectEnd:J

    iput-wide p5, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mSelectLeft:J

    iput-wide p7, p0, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->mSelectRight:J

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->notifyChanged()V

    return-void
.end method
