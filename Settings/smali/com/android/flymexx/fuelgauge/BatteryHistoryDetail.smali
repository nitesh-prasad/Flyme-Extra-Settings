.class public Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;
.super Lcom/android/flymexx/SettingsPreferenceFragment;
.source "BatteryHistoryDetail.java"


# instance fields
.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mCameraParser:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

.field private mChargingParser:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

.field private mCpuParser:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

.field private mFlashlightParser:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

.field private mGpsParser:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

.field private mPhoneParser:Lcom/android/flymexx/fuelgauge/BatteryCellParser;

.field private mScreenOn:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

.field private mStats:Landroid/os/BatteryStats;

.field private mWifiParser:Lcom/android/flymexx/fuelgauge/BatteryWifiParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private bindData(Lcom/android/flymexx/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/flymexx/fuelgauge/BatteryActiveView$BatteryActiveProvider;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f110086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/fuelgauge/BatteryActiveView;

    invoke-virtual {v1, p1}, Lcom/android/flymexx/fuelgauge/BatteryActiveView;->setProvider(Lcom/android/flymexx/fuelgauge/BatteryActiveView$BatteryActiveProvider;)V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private updateEverything()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mBatteryBroadcast:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mStats:Landroid/os/BatteryStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/flymexxlib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;J)Lcom/android/flymexxlib/BatteryInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f11008a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/flymexxlib/graph/UsageView;

    const/16 v3, 0x8

    new-array v3, v3, [Lcom/android/flymexxlib/BatteryInfo$BatteryDataParser;

    iget-object v4, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mChargingParser:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mScreenOn:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mGpsParser:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mFlashlightParser:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mCameraParser:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    const/4 v5, 0x4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mWifiParser:Lcom/android/flymexx/fuelgauge/BatteryWifiParser;

    const/4 v5, 0x5

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mCpuParser:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    const/4 v5, 0x6

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mPhoneParser:Lcom/android/flymexx/fuelgauge/BatteryCellParser;

    const/4 v5, 0x7

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/android/flymexxlib/BatteryInfo;->bindHistory(Lcom/android/flymexxlib/graph/UsageView;[Lcom/android/flymexxlib/BatteryInfo$BatteryDataParser;)V

    const v2, 0x7f110088

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/flymexxlib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f110089

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/flymexxlib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mChargingParser:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    const v3, 0x7f0c0963

    const v4, 0x7f110092

    invoke-direct {p0, v2, v3, v4}, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/flymexx/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    iget-object v2, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mScreenOn:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    const v3, 0x7f0c0964

    const v4, 0x7f110091

    invoke-direct {p0, v2, v3, v4}, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/flymexx/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    iget-object v2, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mGpsParser:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    const v3, 0x7f0c0965

    const v4, 0x7f11008e

    invoke-direct {p0, v2, v3, v4}, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/flymexx/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    iget-object v2, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mFlashlightParser:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    const v3, 0x7f0c0967

    const v4, 0x7f11008d

    invoke-direct {p0, v2, v3, v4}, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/flymexx/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    iget-object v2, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mCameraParser:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    const v3, 0x7f0c0966

    const v4, 0x7f11008c

    invoke-direct {p0, v2, v3, v4}, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/flymexx/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    iget-object v2, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mWifiParser:Lcom/android/flymexx/fuelgauge/BatteryWifiParser;

    const v3, 0x7f0c0968

    const v4, 0x7f11008f

    invoke-direct {p0, v2, v3, v4}, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/flymexx/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    iget-object v2, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mCpuParser:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    const v3, 0x7f0c0969

    const v4, 0x7f110090

    invoke-direct {p0, v2, v3, v4}, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/flymexx/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    iget-object v2, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mPhoneParser:Lcom/android/flymexx/fuelgauge/BatteryCellParser;

    const v3, 0x7f0c096a

    const v4, 0x7f11008b

    invoke-direct {p0, v2, v3, v4}, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/flymexx/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x33

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "stats"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/internal/os/BatteryStatsHelper;->statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "broadcast"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mBatteryBroadcast:Landroid/content/Intent;

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010435

    invoke-virtual {v3, v4, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    new-instance v3, Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    const/high16 v4, 0x80000

    invoke-direct {v3, v0, v5, v4}, Lcom/android/flymexx/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v3, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mChargingParser:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    new-instance v3, Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    const/high16 v4, 0x100000

    invoke-direct {v3, v0, v5, v4}, Lcom/android/flymexx/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v3, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mScreenOn:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    new-instance v3, Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    const/high16 v4, 0x20000000

    invoke-direct {v3, v0, v5, v4}, Lcom/android/flymexx/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v3, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mGpsParser:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    new-instance v3, Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    const/high16 v4, 0x8000000

    invoke-direct {v3, v0, v6, v4}, Lcom/android/flymexx/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v3, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mFlashlightParser:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    new-instance v3, Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    const/high16 v4, 0x200000

    invoke-direct {v3, v0, v6, v4}, Lcom/android/flymexx/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v3, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mCameraParser:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    new-instance v3, Lcom/android/flymexx/fuelgauge/BatteryWifiParser;

    invoke-direct {v3, v0}, Lcom/android/flymexx/fuelgauge/BatteryWifiParser;-><init>(I)V

    iput-object v3, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mWifiParser:Lcom/android/flymexx/fuelgauge/BatteryWifiParser;

    new-instance v3, Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    const/high16 v4, -0x80000000

    invoke-direct {v3, v0, v5, v4}, Lcom/android/flymexx/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v3, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mCpuParser:Lcom/android/flymexx/fuelgauge/BatteryFlagParser;

    new-instance v3, Lcom/android/flymexx/fuelgauge/BatteryCellParser;

    invoke-direct {v3}, Lcom/android/flymexx/fuelgauge/BatteryCellParser;-><init>()V

    iput-object v3, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->mPhoneParser:Lcom/android/flymexx/fuelgauge/BatteryCellParser;

    invoke-virtual {p0, v6}, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f040030

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;->updateEverything()V

    return-void
.end method
