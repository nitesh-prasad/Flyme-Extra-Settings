.class public Lcom/android/flymexx/datausage/DataUsageList;
.super Lcom/android/flymexx/datausage/DataUsageBase;
.source "DataUsageList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/datausage/DataUsageList$1;,
        Lcom/android/flymexx/datausage/DataUsageList$2;,
        Lcom/android/flymexx/datausage/DataUsageList$3;,
        Lcom/android/flymexx/datausage/DataUsageList$4;
    }
.end annotation


# static fields
.field private static mSelectLeft:J

.field private static mSelectRight:J


# instance fields
.field private mApps:Landroid/support/v7/preference/PreferenceGroup;

.field private mBinding:Z

.field private mChart:Lcom/android/flymexx/datausage/ChartDataUsagePreference;

.field private mChartData:Lcom/android/flymexxlib/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/flymexxlib/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartDeprecated:Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;

.field private mChartListener:Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;

.field private mCycleAdapter:Lcom/android/flymexx/datausage/CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mDataSelectionEnable:Z

.field private mHeader:Landroid/view/View;

.field private final mMobileDataEnabled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mShowDataUsage:Z

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mSubId:I

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/flymexxlib/net/UidDetailProvider;

.field private mUsageAmount:Landroid/support/v7/preference/Preference;

.field private mUsageSummary:Landroid/support/v7/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/datausage/DataUsageList;)Landroid/support/v7/preference/PreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/datausage/DataUsageList;)Lcom/android/flymexx/datausage/ChartDataUsagePreference;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChart:Lcom/android/flymexx/datausage/ChartDataUsagePreference;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/flymexx/datausage/DataUsageList;)Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/flymexx/datausage/DataUsageList;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/datausage/DataUsageList;)Lcom/android/flymexxlib/net/ChartData;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChartData:Lcom/android/flymexxlib/net/ChartData;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/flymexx/datausage/DataUsageList;)Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChartDeprecated:Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/flymexx/datausage/DataUsageList;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/flymexx/datausage/DataUsageList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mDataSelectionEnable:Z

    return v0
.end method

.method static synthetic -get6()J
    .locals 2

    sget-wide v0, Lcom/android/flymexx/datausage/DataUsageList;->mSelectLeft:J

    return-wide v0
.end method

.method static synthetic -get7()J
    .locals 2

    sget-wide v0, Lcom/android/flymexx/datausage/DataUsageList;->mSelectRight:J

    return-wide v0
.end method

.method static synthetic -get8(Lcom/android/flymexx/datausage/DataUsageList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mShowDataUsage:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/flymexx/datausage/DataUsageList;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/flymexx/datausage/DataUsageList;Lcom/android/flymexxlib/net/ChartData;)Lcom/android/flymexxlib/net/ChartData;
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChartData:Lcom/android/flymexxlib/net/ChartData;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/datausage/DataUsageList;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/datausage/DataUsageList;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/datausage/DataUsageList;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/datausage/DataUsageList;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/flymexx/datausage/DataUsageList;Lcom/android/flymexxlib/AppItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/datausage/DataUsageList;->startAppDataUsage(Lcom/android/flymexxlib/AppItem;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/flymexx/datausage/DataUsageList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/DataUsageList;->updateBody()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/flymexx/datausage/DataUsageList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/DataUsageList;->updateDetailData()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/flymexx/datausage/DataUsageList;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/datausage/DataUsageList;->updatePolicy(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/DataUsageBase;-><init>()V

    iput-boolean v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mShowDataUsage:Z

    iput-boolean v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mDataSelectionEnable:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mMobileDataEnabled:Ljava/util/Map;

    new-instance v0, Lcom/android/flymexx/datausage/DataUsageList$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/datausage/DataUsageList$1;-><init>(Lcom/android/flymexx/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/android/flymexx/datausage/DataUsageList$2;

    invoke-direct {v0, p0}, Lcom/android/flymexx/datausage/DataUsageList$2;-><init>(Lcom/android/flymexx/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/flymexx/datausage/DataUsageList$3;

    invoke-direct {v0, p0}, Lcom/android/flymexx/datausage/DataUsageList$3;-><init>(Lcom/android/flymexx/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/flymexx/datausage/DataUsageList$4;

    invoke-direct {v0, p0}, Lcom/android/flymexx/datausage/DataUsageList$4;-><init>(Lcom/android/flymexx/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChartListener:Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;

    return-void
.end method

.method private static accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/flymexxlib/AppItem;",
            ">;",
            "Landroid/net/NetworkStats$Entry;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexxlib/AppItem;",
            ">;J)J"
        }
    .end annotation

    iget v1, p2, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/AppItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/flymexxlib/AppItem;

    invoke-direct {v0, p0}, Lcom/android/flymexxlib/AppItem;-><init>(I)V

    iput p3, v0, Lcom/android/flymexxlib/AppItem;->category:I

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lcom/android/flymexxlib/AppItem;->key:I

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/AppItem;->addUid(I)V

    iget-wide v2, v0, Lcom/android/flymexxlib/AppItem;->total:J

    iget-wide v4, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/flymexxlib/AppItem;->total:J

    iget-wide v2, v0, Lcom/android/flymexxlib/AppItem;->total:J

    invoke-static {p5, p6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 10

    const/4 v8, 0x0

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_0

    return v8

    :cond_0
    const/4 v1, 0x1

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v9, 0x5

    if-ne v7, v9, :cond_1

    const/4 v7, 0x1

    :goto_1
    and-int/2addr v1, v7

    goto :goto_0

    :cond_1
    move v7, v8

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v1

    :goto_2
    return v2

    :cond_3
    move v2, v8

    goto :goto_2
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/flymexxlib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/flymexxlib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/flymexx/datausage/DataUsageList;->updatePolicy(Z)V

    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/flymexxlib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/flymexxlib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/flymexx/datausage/DataUsageList;->updatePolicy(Z)V

    return-void
.end method

.method private startAppDataUsage(Lcom/android/flymexxlib/AppItem;)V
    .locals 6

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "app_item"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v0, "network_template"

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v0, Lcom/android/flymexx/datausage/AppDataUsage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0d14

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/flymexx/datausage/DataUsageList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private updateBody()V
    .locals 8

    const/4 v6, 0x0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/flymexx/datausage/DataUsageList;->mBinding:Z

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageList;->isAdded()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/flymexx/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v5, v6}, Lcom/android/flymexxlib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/flymexxlib/AppItem;)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v7, 0x2

    invoke-virtual {v4, v7, v5, v6}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/flymexx/datausage/DataUsageList;->mBinding:Z

    iget-boolean v4, p0, Lcom/android/flymexx/datausage/DataUsageList;->mDataSelectionEnable:Z

    if-nez v4, :cond_2

    const v4, 0x7f0d007a

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget v4, p0, Lcom/android/flymexx/datausage/DataUsageList;->mSubId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/flymexx/datausage/DataUsageList;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    iget-object v4, v4, Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v5, p0, Lcom/android/flymexx/datausage/DataUsageList;->mSubId:I

    invoke-virtual {v4, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v2

    :cond_1
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    const/16 v7, 0x7f

    invoke-static {v7, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-object v4, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChart:Lcom/android/flymexx/datausage/ChartDataUsagePreference;

    invoke-virtual {v4, v2, v1}, Lcom/android/flymexx/datausage/ChartDataUsagePreference;->setColors(II)V

    :cond_2
    iget-boolean v4, p0, Lcom/android/flymexx/datausage/DataUsageList;->mShowDataUsage:Z

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/flymexx/datausage/DataUsageList;->mUsageSummary:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3
    return-void
.end method

.method private updateDetailData()V
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/flymexx/datausage/DataUsageList;->mDataSelectionEnable:Z

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/flymexx/datausage/DataUsageList;->mShowDataUsage:Z

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/datausage/DataUsageList;->mChartDeprecated:Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v5}, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->getInspectLeft()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/datausage/DataUsageList;->mChartDeprecated:Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v5}, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->getInspectRight()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/datausage/DataUsageList;->mChartDeprecated:Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v5}, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->getInspectLeft()J

    move-result-wide v20

    sput-wide v20, Lcom/android/flymexx/datausage/DataUsageList;->mSelectLeft:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/datausage/DataUsageList;->mChartDeprecated:Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v5}, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->getInspectRight()J

    move-result-wide v20

    sput-wide v20, Lcom/android/flymexx/datausage/DataUsageList;->mSelectRight:J

    const-string/jumbo v5, "DataUsage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Will get left and right data here:"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v19, "-->"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/datausage/DataUsageList;->mChartData:Lcom/android/flymexxlib/net/ChartData;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/datausage/DataUsageList;->mChartData:Lcom/android/flymexxlib/net/ChartData;

    iget-object v5, v5, Lcom/android/flymexxlib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v13

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/DataUsageList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/flymexx/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v12, v6, v7, v8, v9}, Lcom/android/flymexxlib/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/datausage/DataUsageList;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v12, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    if-eqz v13, :cond_4

    iget-wide v0, v13, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v20, v0

    iget-wide v0, v13, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v22, v0

    add-long v16, v20, v22

    :goto_1
    move-wide/from16 v0, v16

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v18, v12, v19

    const v19, 0x7f0c0e18

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Lcom/android/flymexx/datausage/DataUsageList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/flymexx/datausage/DataUsageList;->mShowDataUsage:Z

    if-eqz v5, :cond_1

    const v15, 0x7f0c0ae6

    sget-wide v20, Lcom/android/flymexx/datausage/DataUsageList;->mSelectLeft:J

    sget-wide v22, Lcom/android/flymexx/datausage/DataUsageList;->mSelectRight:J

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/flymexx/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/datausage/DataUsageList;->mUsageSummary:Landroid/support/v7/preference/Preference;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v18, v12, v19

    const/16 v19, 0x1

    aput-object v14, v12, v19

    const v19, 0x7f0c0ae6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Lcom/android/flymexx/datausage/DataUsageList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/datausage/DataUsageList;->mChartDeprecated:Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v5}, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->getInspectStart()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/datausage/DataUsageList;->mChartDeprecated:Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v5}, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->getInspectEnd()J

    move-result-wide v8

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/datausage/DataUsageList;->mChart:Lcom/android/flymexx/datausage/ChartDataUsagePreference;

    invoke-virtual {v5}, Lcom/android/flymexx/datausage/ChartDataUsagePreference;->getInspectStart()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/datausage/DataUsageList;->mChart:Lcom/android/flymexx/datausage/ChartDataUsagePreference;

    invoke-virtual {v5}, Lcom/android/flymexx/datausage/ChartDataUsagePreference;->getInspectEnd()J

    move-result-wide v8

    goto/16 :goto_0

    :cond_4
    const-wide/16 v16, 0x0

    goto :goto_1
.end method

.method private updatePolicy(Z)V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f110083

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/flymexxlib/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/android/flymexx/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v2}, Lcom/android/flymexxlib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget v1, p0, Lcom/android/flymexx/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/flymexx/datausage/DataUsageList;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/flymexx/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v1}, Lcom/android/flymexx/datausage/DataUsageList;->isMobileDataAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/flymexx/datausage/DataUsageList;->mDataSelectionEnable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChartDeprecated:Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v1, v0}, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    :goto_0
    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/flymexx/datausage/DataUsageList$7;

    invoke-direct {v2, p0}, Lcom/android/flymexx/datausage/DataUsageList$7;-><init>(Lcom/android/flymexx/datausage/DataUsageList;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList;->mCycleAdapter:Lcom/android/flymexx/datausage/CycleAdapter;

    iget-object v2, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChartData:Lcom/android/flymexxlib/net/ChartData;

    invoke-virtual {v1, v0, v2}, Lcom/android/flymexx/datausage/CycleAdapter;->updateCycleList(Landroid/net/NetworkPolicy;Lcom/android/flymexxlib/net/ChartData;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/DataUsageList;->updateDetailData()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChart:Lcom/android/flymexx/datausage/ChartDataUsagePreference;

    invoke-virtual {v1, v0}, Lcom/android/flymexx/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/flymexx/datausage/DataUsageList;->mDataSelectionEnable:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChartDeprecated:Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v1, v4}, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    :goto_2
    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChart:Lcom/android/flymexx/datausage/ChartDataUsagePreference;

    invoke-virtual {v1, v4}, Lcom/android/flymexx/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_2
.end method


# virtual methods
.method public bindStats(Landroid/net/NetworkStats;[I)V
    .locals 31

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v8, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v25

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v6, "com.android.dialer"

    const/4 v12, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    const/4 v5, 0x0

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v27

    :goto_1
    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    iget v0, v5, Landroid/net/NetworkStats$Entry;->uid:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v29

    invoke-static/range {v28 .. v28}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, v29

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move/from16 v0, v29

    if-eq v0, v10, :cond_0

    invoke-static/range {v29 .. v29}, Lcom/android/flymexxlib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v3

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/flymexx/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    move-result-wide v8

    :cond_0
    move/from16 v11, v28

    const/4 v14, 0x2

    :goto_3
    move-object v12, v4

    move-object v13, v5

    move-object v15, v7

    move-wide/from16 v16, v8

    invoke-static/range {v11 .. v17}, Lcom/android/flymexx/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    move-result-wide v8

    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    :catch_0
    move-exception v18

    const-string/jumbo v6, "DataUsage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "get dialer getApplicationInfo failed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/16 v27, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v20

    if-nez v20, :cond_3

    const/4 v11, -0x4

    const/4 v14, 0x2

    goto :goto_3

    :cond_3
    invoke-static/range {v29 .. v29}, Lcom/android/flymexxlib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v11

    const/4 v14, 0x0

    goto :goto_3

    :cond_4
    const/4 v6, -0x4

    move/from16 v0, v28

    if-eq v0, v6, :cond_5

    const/4 v6, -0x5

    move/from16 v0, v28

    if-ne v0, v6, :cond_6

    :cond_5
    move/from16 v11, v28

    const/4 v14, 0x2

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, v28

    if-ne v0, v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v12, 0x11200c7

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_7

    move/from16 v11, v28

    const/4 v14, 0x2

    goto :goto_3

    :cond_7
    const/16 v11, 0x3e8

    const/4 v14, 0x2

    goto :goto_3

    :cond_8
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v26, v0

    const/16 v19, 0x0

    :goto_4
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_b

    aget v28, p2, v19

    new-instance v6, Landroid/os/UserHandle;

    invoke-static/range {v28 .. v28}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-direct {v6, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    :cond_9
    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/flymexxlib/AppItem;

    if-nez v21, :cond_a

    new-instance v21, Lcom/android/flymexxlib/AppItem;

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/flymexxlib/AppItem;-><init>(I)V

    const-wide/16 v12, -0x1

    move-object/from16 v0, v21

    iput-wide v12, v0, Lcom/android/flymexxlib/AppItem;->total:J

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/flymexxlib/AppItem;->key:I

    move-object/from16 v0, v21

    invoke-virtual {v4, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a
    const/4 v6, 0x1

    move-object/from16 v0, v21

    iput-boolean v6, v0, Lcom/android/flymexxlib/AppItem;->restricted:Z

    goto :goto_5

    :cond_b
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/flymexx/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    const/16 v19, 0x0

    :goto_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v19

    if-ge v0, v6, :cond_d

    const-wide/16 v12, 0x0

    cmp-long v6, v8, v12

    if-eqz v6, :cond_c

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/flymexxlib/AppItem;

    iget-wide v12, v6, Lcom/android/flymexxlib/AppItem;->total:J

    const-wide/16 v16, 0x64

    mul-long v12, v12, v16

    div-long/2addr v12, v8

    long-to-int v0, v12

    move/from16 v22, v0

    :goto_7
    new-instance v24, Lcom/android/flymexx/datausage/AppDataUsagePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v12

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/flymexxlib/AppItem;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/flymexx/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/flymexxlib/net/UidDetailProvider;

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-direct {v0, v12, v6, v1, v13}, Lcom/android/flymexx/datausage/AppDataUsagePreference;-><init>(Landroid/content/Context;Lcom/android/flymexxlib/AppItem;ILcom/android/flymexxlib/net/UidDetailProvider;)V

    new-instance v6, Lcom/android/flymexx/datausage/DataUsageList$8;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/flymexx/datausage/DataUsageList$8;-><init>(Lcom/android/flymexx/datausage/DataUsageList;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/android/flymexx/datausage/AppDataUsagePreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/flymexx/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    :cond_c
    const/16 v22, 0x0

    goto :goto_7

    :cond_d
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x155

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/flymexx/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageList;->isBandwidthControlEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "DataUsage"

    const-string/jumbo v4, "No bandwidth control; leaving"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/flymexx/datausage/DataUsageList;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v3}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Lcom/android/flymexxlib/net/UidDetailProvider;

    invoke-direct {v3, v1}, Lcom/android/flymexxlib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/flymexx/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/flymexxlib/net/UidDetailProvider;

    const v3, 0x7f08001f

    invoke-virtual {p0, v3}, Lcom/android/flymexx/datausage/DataUsageList;->addPreferencesFromResource(I)V

    const-string/jumbo v3, "usage_amount"

    invoke-virtual {p0, v3}, Lcom/android/flymexx/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    const-string/jumbo v3, "chart_data"

    invoke-virtual {p0, v3}, Lcom/android/flymexx/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/flymexx/datausage/ChartDataUsagePreference;

    iput-object v3, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChart:Lcom/android/flymexx/datausage/ChartDataUsagePreference;

    const-string/jumbo v3, "apps_group"

    invoke-virtual {p0, v3}, Lcom/android/flymexx/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v3, p0, Lcom/android/flymexx/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "sub_id"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/flymexx/datausage/DataUsageList;->mSubId:I

    const-string/jumbo v3, "network_template"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    iput-object v3, p0, Lcom/android/flymexx/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    const-string/jumbo v3, "chart_data_deprecated"

    invoke-virtual {p0, v3}, Lcom/android/flymexx/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;

    iput-object v3, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChartDeprecated:Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;

    iget-object v3, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChartDeprecated:Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;

    iget-object v4, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChartListener:Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v3, v4}, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->setListener(Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;)V

    iget-object v3, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChartDeprecated:Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v3, v5}, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    const-string/jumbo v3, "usage_summary"

    invoke-virtual {p0, v3}, Lcom/android/flymexx/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/datausage/DataUsageList;->mUsageSummary:Landroid/support/v7/preference/Preference;

    invoke-static {v1}, Lcom/android/flymexx/datausage/BillingCycleSettings;->isDataSelectionEnable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/flymexx/datausage/DataUsageList;->mDataSelectionEnable:Z

    invoke-static {v1}, Lcom/android/flymexx/datausage/BillingCycleSettings;->isShowDataUsage(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/flymexx/datausage/DataUsageList;->mShowDataUsage:Z

    iget-boolean v3, p0, Lcom/android/flymexx/datausage/DataUsageList;->mDataSelectionEnable:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/flymexx/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChart:Lcom/android/flymexx/datausage/ChartDataUsagePreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v5, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChart:Lcom/android/flymexx/datausage/ChartDataUsagePreference;

    :goto_0
    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_1
    iget-object v3, p0, Lcom/android/flymexx/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChartDeprecated:Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v5, p0, Lcom/android/flymexx/datausage/DataUsageList;->mChartDeprecated:Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/flymexxlib/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/flymexxlib/net/UidDetailProvider;->clearCache()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/flymexxlib/net/UidDetailProvider;

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    invoke-super {p0}, Lcom/android/flymexx/datausage/DataUsageBase;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/flymexx/datausage/DataUsageBase;->onResume()V

    invoke-direct {p0}, Lcom/android/flymexx/datausage/DataUsageList;->updateBody()V

    new-instance v0, Lcom/android/flymexx/datausage/DataUsageList$6;

    invoke-direct {v0, p0}, Lcom/android/flymexx/datausage/DataUsageList$6;-><init>(Lcom/android/flymexx/datausage/DataUsageList;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/flymexx/datausage/DataUsageList$6;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f04002b

    invoke-virtual {p0, v0}, Lcom/android/flymexx/datausage/DataUsageList;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mHeader:Landroid/view/View;

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v1, 0x7f110082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    new-instance v0, Lcom/android/flymexx/datausage/CycleAdapter;

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/flymexx/datausage/DataUsageList$5;

    invoke-direct {v2, p0}, Lcom/android/flymexx/datausage/DataUsageList$5;-><init>(Lcom/android/flymexx/datausage/DataUsageList;)V

    iget-object v3, p0, Lcom/android/flymexx/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/flymexx/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/flymexx/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList;->mCycleAdapter:Lcom/android/flymexx/datausage/CycleAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/android/flymexx/datausage/DataUsageList;->setLoading(ZZ)V

    return-void
.end method
