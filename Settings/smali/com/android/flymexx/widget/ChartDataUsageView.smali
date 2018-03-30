.class public Lcom/android/flymexx/widget/ChartDataUsageView;
.super Lcom/android/flymexx/widget/ChartView;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/widget/ChartDataUsageView$1;,
        Lcom/android/flymexx/widget/ChartDataUsageView$2;,
        Lcom/android/flymexx/widget/ChartDataUsageView$DataAxis;,
        Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;,
        Lcom/android/flymexx/widget/ChartDataUsageView$TimeAxis;
    }
.end annotation


# instance fields
.field private mDetailSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

.field private mGrid:Lcom/android/flymexx/widget/ChartGridView;

.field private mHandler:Landroid/os/Handler;

.field private mHistory:Landroid/net/NetworkStatsHistory;

.field private mHorizListener:Lcom/android/flymexx/widget/ChartSweepView$OnSweepListener;

.field private mInspectEnd:J

.field private mInspectStart:J

.field private mListener:Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;

.field private mSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

.field private mSweepLeft:Lcom/android/flymexx/widget/ChartSweepView;

.field private mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

.field private mSweepRight:Lcom/android/flymexx/widget/ChartSweepView;

.field private mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

.field private mVertListener:Lcom/android/flymexx/widget/ChartSweepView$OnSweepListener;

.field private mVertMax:J


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/widget/ChartDataUsageView;)Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mListener:Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/widget/ChartDataUsageView;)Lcom/android/flymexx/widget/ChartSweepView;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/widget/ChartDataUsageView;)Lcom/android/flymexx/widget/ChartSweepView;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic -wrap0(J)J
    .locals 2

    invoke-static {p0, p1}, Lcom/android/flymexx/widget/ChartDataUsageView;->roundUpToPowerOfTwo(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/widget/ChartDataUsageView;Lcom/android/flymexx/widget/ChartSweepView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/flymexx/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/flymexx/widget/ChartDataUsageView;Lcom/android/flymexx/widget/ChartSweepView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/flymexx/widget/ChartSweepView;Z)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/flymexx/widget/ChartDataUsageView;->setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/flymexx/widget/ChartDataUsageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/widget/ChartDataUsageView;->updateEstimateVisible()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/flymexx/widget/ChartDataUsageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/widget/ChartDataUsageView;->updatePrimaryRange()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/flymexx/widget/ChartDataUsageView;Lcom/android/flymexx/widget/ChartSweepView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/flymexx/widget/ChartSweepView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/flymexx/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/flymexx/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/flymexx/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/flymexx/widget/ChartDataUsageView$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/widget/ChartDataUsageView$1;-><init>(Lcom/android/flymexx/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mHorizListener:Lcom/android/flymexx/widget/ChartSweepView$OnSweepListener;

    new-instance v0, Lcom/android/flymexx/widget/ChartDataUsageView$2;

    invoke-direct {v0, p0}, Lcom/android/flymexx/widget/ChartDataUsageView$2;-><init>(Lcom/android/flymexx/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mVertListener:Lcom/android/flymexx/widget/ChartSweepView$OnSweepListener;

    new-instance v0, Lcom/android/flymexx/widget/ChartDataUsageView$TimeAxis;

    invoke-direct {v0}, Lcom/android/flymexx/widget/ChartDataUsageView$TimeAxis;-><init>()V

    new-instance v1, Lcom/android/flymexx/widget/InvertedChartAxis;

    new-instance v2, Lcom/android/flymexx/widget/ChartDataUsageView$DataAxis;

    invoke-direct {v2}, Lcom/android/flymexx/widget/ChartDataUsageView$DataAxis;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/flymexx/widget/InvertedChartAxis;-><init>(Lcom/android/flymexx/widget/ChartAxis;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/flymexx/widget/ChartDataUsageView;->init(Lcom/android/flymexx/widget/ChartAxis;Lcom/android/flymexx/widget/ChartAxis;)V

    new-instance v0, Lcom/android/flymexx/widget/ChartDataUsageView$3;

    invoke-direct {v0, p0}, Lcom/android/flymexx/widget/ChartDataUsageView$3;-><init>(Lcom/android/flymexx/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private clearUpdateAxisDelayed(Lcom/android/flymexx/widget/ChartSweepView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method private getHistoryEnd()J
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method private getHistoryStart()J
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private static roundUpToPowerOfTwo(J)J
    .locals 4

    const-wide/16 v2, 0x1

    sub-long/2addr p0, v2

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    const/4 v0, 0x2

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    const/4 v0, 0x4

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    const/16 v0, 0x8

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    const/16 v0, 0x10

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    add-long/2addr p0, v2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    :goto_0
    return-wide p0

    :cond_0
    const-wide p0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private sendUpdateAxisDelayed(Lcom/android/flymexx/widget/ChartSweepView;Z)V
    .locals 4

    const/16 v2, 0x64

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private static setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-static {p0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int v0, v1, v2

    const/16 v2, 0x12

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    invoke-virtual {p0, v1, v0, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method private updateEstimateVisible()V
    .locals 10

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    invoke-virtual {v1}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->getMaxEstimate()J

    move-result-wide v4

    const-wide v2, 0x7fffffffffffffffL

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/android/flymexx/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/android/flymexx/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    :cond_0
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    :cond_1
    const-wide/16 v6, 0x7

    mul-long/2addr v6, v2

    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, v0}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->setEstimateVisible(Z)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/android/flymexx/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/android/flymexx/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updatePrimaryRange()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/flymexx/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepRight:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/flymexx/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    invoke-virtual {v4}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    iget-object v4, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v6, v7, v6, v7}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    iget-object v4, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->setSecondary(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    iget-object v4, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v5}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->setSecondary(Z)V

    goto :goto_0
.end method

.method private updateVertAxisBounds(Lcom/android/flymexx/widget/ChartSweepView;)V
    .locals 24

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mVertMax:J

    const-wide/16 v18, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/flymexx/widget/ChartSweepView;->shouldAdjustAxis()I

    move-result v6

    if-lez v6, :cond_5

    const-wide/16 v20, 0xb

    mul-long v20, v20, v8

    const-wide/16 v22, 0xa

    div-long v18, v20, v22

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/flymexx/widget/ChartSweepView;->getValue()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/flymexx/widget/ChartSweepView;->getValue()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    const-wide/16 v22, 0xc

    mul-long v20, v20, v22

    const-wide/16 v22, 0xa

    div-long v16, v20, v22

    const-wide/32 v20, 0x3200000

    move-wide/from16 v0, v16

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    move-wide/from16 v0, v18

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mVertMax:J

    move-wide/from16 v20, v0

    cmp-long v20, v18, v20

    if-eqz v20, :cond_4

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/flymexx/widget/ChartDataUsageView;->mVertMax:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mVert:Lcom/android/flymexx/widget/ChartAxis;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/flymexx/widget/ChartAxis;->setBounds(JJ)Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/flymexx/widget/ChartSweepView;->setValidRange(JJ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/flymexx/widget/ChartSweepView;->setValidRange(JJ)V

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->invalidatePath()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->invalidatePath()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mGrid:Lcom/android/flymexx/widget/ChartGridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/flymexx/widget/ChartGridView;->invalidate()V

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/flymexx/widget/ChartSweepView;->updateValueFromPosition()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ChartDataUsageView;->layoutSweep(Lcom/android/flymexx/widget/ChartSweepView;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ChartDataUsageView;->layoutSweep(Lcom/android/flymexx/widget/ChartSweepView;)V

    :cond_4
    return-void

    :cond_5
    if-gez v6, :cond_6

    const-wide/16 v20, 0x9

    mul-long v20, v20, v8

    const-wide/16 v22, 0xa

    div-long v18, v20, v22

    goto/16 :goto_0

    :cond_6
    move-wide/from16 v18, v8

    goto/16 :goto_0
.end method


# virtual methods
.method public bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->setEndTime(J)V

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/flymexx/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/flymexx/widget/ChartSweepView;)V

    invoke-direct {p0}, Lcom/android/flymexx/widget/ChartDataUsageView;->updateEstimateVisible()V

    invoke-direct {p0}, Lcom/android/flymexx/widget/ChartDataUsageView;->updatePrimaryRange()V

    invoke-virtual {p0}, Lcom/android/flymexx/widget/ChartDataUsageView;->requestLayout()V

    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bindNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x4

    const-wide/16 v4, -0x1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/flymexx/widget/ChartSweepView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/flymexx/widget/ChartSweepView;->setValue(J)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/flymexx/widget/ChartSweepView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/flymexx/widget/ChartSweepView;->setValue(J)V

    return-void

    :cond_0
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, v7}, Lcom/android/flymexx/widget/ChartSweepView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ChartSweepView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    iget-wide v2, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v2, v3}, Lcom/android/flymexx/widget/ChartSweepView;->setValue(J)V

    :goto_0
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, v7}, Lcom/android/flymexx/widget/ChartSweepView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    iget-wide v2, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v2, v3}, Lcom/android/flymexx/widget/ChartSweepView;->setValue(J)V

    :goto_1
    invoke-direct {p0, v8}, Lcom/android/flymexx/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/flymexx/widget/ChartSweepView;)V

    invoke-virtual {p0}, Lcom/android/flymexx/widget/ChartDataUsageView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/flymexx/widget/ChartDataUsageView;->invalidate()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/flymexx/widget/ChartSweepView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, v7}, Lcom/android/flymexx/widget/ChartSweepView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/flymexx/widget/ChartSweepView;->setValue(J)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/flymexx/widget/ChartSweepView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/flymexx/widget/ChartSweepView;->setValue(J)V

    goto :goto_1
.end method

.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    iput-object p1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/flymexx/widget/ChartSweepView;)V

    invoke-direct {p0}, Lcom/android/flymexx/widget/ChartDataUsageView;->updateEstimateVisible()V

    invoke-direct {p0}, Lcom/android/flymexx/widget/ChartDataUsageView;->updatePrimaryRange()V

    invoke-virtual {p0}, Lcom/android/flymexx/widget/ChartDataUsageView;->requestLayout()V

    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    iget-wide v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mInspectEnd:J

    return-wide v0
.end method

.method public getInspectLeft()J
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInspectRight()J
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepRight:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    iget-wide v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mInspectStart:J

    return-wide v0
.end method

.method public getLimitBytes()J
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningBytes()J
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v5, 0x2

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/flymexx/widget/ChartView;->onFinishInflate()V

    const v0, 0x7f1100ed

    invoke-virtual {p0, v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/widget/ChartGridView;

    iput-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mGrid:Lcom/android/flymexx/widget/ChartGridView;

    const v0, 0x7f1100ee

    invoke-virtual {p0, v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    const v0, 0x7f1100ef

    invoke-virtual {p0, v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->setVisibility(I)V

    const v0, 0x7f1100f0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/flymexx/widget/ChartSweepView;

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ChartSweepView;->setVisibility(I)V

    const v0, 0x7f1100f1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepRight:Lcom/android/flymexx/widget/ChartSweepView;

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepRight:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ChartSweepView;->setVisibility(I)V

    const v0, 0x7f1100f3

    invoke-virtual {p0, v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    const v0, 0x7f1100f2

    invoke-virtual {p0, v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/flymexx/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepRight:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/flymexx/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/flymexx/widget/ChartSweepView;Lcom/android/flymexx/widget/ChartSweepView;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepRight:Lcom/android/flymexx/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/flymexx/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/flymexx/widget/ChartSweepView;Lcom/android/flymexx/widget/ChartSweepView;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/flymexx/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/flymexx/widget/ChartSweepView;Lcom/android/flymexx/widget/ChartSweepView;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/flymexx/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/flymexx/widget/ChartSweepView;Lcom/android/flymexx/widget/ChartSweepView;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/flymexx/widget/ChartSweepView;

    new-array v1, v3, [Lcom/android/flymexx/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepRight:Lcom/android/flymexx/widget/ChartSweepView;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ChartSweepView;->setNeighbors([Lcom/android/flymexx/widget/ChartSweepView;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepRight:Lcom/android/flymexx/widget/ChartSweepView;

    new-array v1, v3, [Lcom/android/flymexx/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/flymexx/widget/ChartSweepView;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ChartSweepView;->setNeighbors([Lcom/android/flymexx/widget/ChartSweepView;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/flymexx/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/flymexx/widget/ChartSweepView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepRight:Lcom/android/flymexx/widget/ChartSweepView;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ChartSweepView;->setNeighbors([Lcom/android/flymexx/widget/ChartSweepView;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/flymexx/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/flymexx/widget/ChartSweepView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepRight:Lcom/android/flymexx/widget/ChartSweepView;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ChartSweepView;->setNeighbors([Lcom/android/flymexx/widget/ChartSweepView;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/flymexx/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mHorizListener:Lcom/android/flymexx/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ChartSweepView;->addOnSweepListener(Lcom/android/flymexx/widget/ChartSweepView$OnSweepListener;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepRight:Lcom/android/flymexx/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mHorizListener:Lcom/android/flymexx/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ChartSweepView;->addOnSweepListener(Lcom/android/flymexx/widget/ChartSweepView$OnSweepListener;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mVertListener:Lcom/android/flymexx/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ChartSweepView;->addOnSweepListener(Lcom/android/flymexx/widget/ChartSweepView$OnSweepListener;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mVertListener:Lcom/android/flymexx/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ChartSweepView;->addOnSweepListener(Lcom/android/flymexx/widget/ChartSweepView$OnSweepListener;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, v4}, Lcom/android/flymexx/widget/ChartSweepView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, v4}, Lcom/android/flymexx/widget/ChartSweepView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepRight:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, v4}, Lcom/android/flymexx/widget/ChartSweepView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepRight:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, v4}, Lcom/android/flymexx/widget/ChartSweepView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    const-wide/32 v2, 0x500000

    invoke-virtual {v0, v2, v3}, Lcom/android/flymexx/widget/ChartSweepView;->setDragInterval(J)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    const-wide/32 v2, 0x500000

    invoke-virtual {v0, v2, v3}, Lcom/android/flymexx/widget/ChartSweepView;->setDragInterval(J)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mGrid:Lcom/android/flymexx/widget/ChartGridView;

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mHoriz:Lcom/android/flymexx/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mVert:Lcom/android/flymexx/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/flymexx/widget/ChartGridView;->init(Lcom/android/flymexx/widget/ChartAxis;Lcom/android/flymexx/widget/ChartAxis;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mHoriz:Lcom/android/flymexx/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mVert:Lcom/android/flymexx/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->init(Lcom/android/flymexx/widget/ChartAxis;Lcom/android/flymexx/widget/ChartAxis;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mHoriz:Lcom/android/flymexx/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mVert:Lcom/android/flymexx/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->init(Lcom/android/flymexx/widget/ChartAxis;Lcom/android/flymexx/widget/ChartAxis;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/flymexx/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mHoriz:Lcom/android/flymexx/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ChartSweepView;->init(Lcom/android/flymexx/widget/ChartAxis;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepRight:Lcom/android/flymexx/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mHoriz:Lcom/android/flymexx/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ChartSweepView;->init(Lcom/android/flymexx/widget/ChartAxis;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/flymexx/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mVert:Lcom/android/flymexx/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ChartSweepView;->init(Lcom/android/flymexx/widget/ChartAxis;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/flymexx/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mVert:Lcom/android/flymexx/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ChartSweepView;->init(Lcom/android/flymexx/widget/ChartAxis;)V

    invoke-virtual {p0, v4}, Lcom/android/flymexx/widget/ChartDataUsageView;->setActivated(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/flymexx/widget/ChartDataUsageView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/flymexx/widget/ChartDataUsageView;->setActivated(Z)V

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDateSelectionSweepVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/widget/ChartSweepView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepRight:Lcom/android/flymexx/widget/ChartSweepView;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/widget/ChartSweepView;->setVisibility(I)V

    return-void
.end method

.method public setListener(Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/widget/ChartDataUsageView;->mListener:Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;

    return-void
.end method

.method public setVisibleRange(JJJJ)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mHoriz:Lcom/android/flymexx/widget/ChartAxis;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/android/flymexx/widget/ChartAxis;->setBounds(JJ)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mGrid:Lcom/android/flymexx/widget/ChartGridView;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/flymexx/widget/ChartGridView;->setBounds(JJ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/flymexx/widget/ChartDataUsageView;->mInspectStart:J

    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/flymexx/widget/ChartDataUsageView;->mInspectEnd:J

    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/widget/ChartDataUsageView;->getHistoryStart()J

    move-result-wide v10

    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/widget/ChartDataUsageView;->getHistoryEnd()J

    move-result-wide v8

    const-wide v20, 0x7fffffffffffffffL

    cmp-long v5, v10, v20

    if-nez v5, :cond_1

    move-wide/from16 v18, p1

    :goto_0
    const-wide/high16 v20, -0x8000000000000000L

    cmp-long v5, v8, v20

    if-nez v5, :cond_2

    move-wide/from16 v16, p3

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/flymexx/widget/ChartSweepView;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/flymexx/widget/ChartSweepView;->setValidRange(JJ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepRight:Lcom/android/flymexx/widget/ChartSweepView;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/flymexx/widget/ChartSweepView;->setValidRange(JJ)V

    add-long v20, p3, p1

    const-wide/16 v22, 0x2

    div-long v6, v20, v22

    move-wide/from16 v12, v16

    const-wide/32 v20, 0x240c8400

    sub-long v20, v16, v20

    move-wide/from16 v0, p1

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/flymexx/widget/ChartSweepView;

    cmp-long v20, p5, p1

    if-ltz v20, :cond_3

    cmp-long v20, p5, p3

    if-gtz v20, :cond_3

    :goto_2
    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1}, Lcom/android/flymexx/widget/ChartSweepView;->setValue(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSweepRight:Lcom/android/flymexx/widget/ChartSweepView;

    cmp-long v20, p7, p1

    if-ltz v20, :cond_4

    cmp-long v20, p7, p3

    if-gtz v20, :cond_4

    :goto_3
    move-wide/from16 v0, p7

    invoke-virtual {v5, v0, v1}, Lcom/android/flymexx/widget/ChartSweepView;->setValue(J)V

    const-string/jumbo v5, "DataUsage"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "sweepMax"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    new-instance v21, Ljava/util/Date;

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "sweepMin"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    new-instance v21, Ljava/util/Date;

    move-object/from16 v0, v21

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/widget/ChartDataUsageView;->requestLayout()V

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    invoke-virtual {v5}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->invalidatePath()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/flymexx/widget/ChartNetworkSeriesView;

    invoke-virtual {v5}, Lcom/android/flymexx/widget/ChartNetworkSeriesView;->invalidatePath()V

    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/flymexx/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/flymexx/widget/ChartSweepView;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/widget/ChartDataUsageView;->updateEstimateVisible()V

    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/widget/ChartDataUsageView;->updatePrimaryRange()V

    return-void

    :cond_1
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    goto/16 :goto_0

    :cond_2
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    goto/16 :goto_1

    :cond_3
    move-wide/from16 p5, v14

    goto/16 :goto_2

    :cond_4
    move-wide/from16 p7, v16

    goto :goto_3
.end method
