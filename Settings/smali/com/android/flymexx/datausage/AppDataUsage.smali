.class public Lcom/android/flymexx/datausage/AppDataUsage;
.super Lcom/android/flymexx/datausage/DataUsageBase;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/flymexx/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/datausage/AppDataUsage$1;,
        Lcom/android/flymexx/datausage/AppDataUsage$2;,
        Lcom/android/flymexx/datausage/AppDataUsage$AppPrefLoader;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final MAXIMUM_POOL_SIZE:I


# instance fields
.field private mAppItem:Lcom/android/flymexxlib/AppItem;

.field private mAppList:Landroid/support/v7/preference/PreferenceCategory;

.field private mAppSettings:Landroid/support/v7/preference/Preference;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mBackgroundUsage:Landroid/support/v7/preference/Preference;

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

.field private mCycle:Lcom/android/flymexx/datausage/SpinnerPreference;

.field private mCycleAdapter:Lcom/android/flymexx/datausage/CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

.field private mEnd:J

.field private mForegroundUsage:Landroid/support/v7/preference/Preference;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/CharSequence;

.field private mPackageName:Ljava/lang/String;

.field private final mPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mRestrictAllData:Landroid/support/v14/preference/SwitchPreference;

.field private mRestrictAllWifi:Landroid/support/v14/preference/SwitchPreference;

.field private mRestrictBackground:Landroid/support/v14/preference/SwitchPreference;

.field private mStart:J

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mTotalUsage:Landroid/support/v7/preference/Preference;

.field private mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/datausage/AppDataUsage;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppList:Landroid/support/v7/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/datausage/AppDataUsage;)Lcom/android/flymexxlib/net/ChartData;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mChartData:Lcom/android/flymexxlib/net/ChartData;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/datausage/AppDataUsage;)Lcom/android/flymexx/datausage/SpinnerPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mCycle:Lcom/android/flymexx/datausage/SpinnerPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/flymexx/datausage/AppDataUsage;)Lcom/android/flymexx/datausage/CycleAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/flymexx/datausage/CycleAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/flymexx/datausage/AppDataUsage;)Landroid/net/NetworkPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mPolicy:Landroid/net/NetworkPolicy;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/flymexx/datausage/AppDataUsage;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/flymexx/datausage/AppDataUsage;Lcom/android/flymexxlib/net/ChartData;)Lcom/android/flymexxlib/net/ChartData;
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mChartData:Lcom/android/flymexxlib/net/ChartData;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/flymexx/datausage/AppDataUsage;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mEnd:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/flymexx/datausage/AppDataUsage;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mStart:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/datausage/AppDataUsage;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/datausage/AppDataUsage;)Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/flymexx/datausage/AppDataUsage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/AppDataUsage;->bindData()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/flymexx/datausage/AppDataUsage;->CPU_COUNT:I

    sget v0, Lcom/android/flymexx/datausage/AppDataUsage;->CPU_COUNT:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/flymexx/datausage/AppDataUsage;->CORE_POOL_SIZE:I

    sget v0, Lcom/android/flymexx/datausage/AppDataUsage;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/flymexx/datausage/AppDataUsage;->MAXIMUM_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/datausage/DataUsageBase;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/flymexx/datausage/AppDataUsage$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/datausage/AppDataUsage$1;-><init>(Lcom/android/flymexx/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/android/flymexx/datausage/AppDataUsage$2;

    invoke-direct {v0, p0}, Lcom/android/flymexx/datausage/AppDataUsage$2;-><init>(Lcom/android/flymexx/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method private addUid(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bindData()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mChartData:Lcom/android/flymexxlib/net/ChartData;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mStart:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :cond_0
    const-wide/16 v14, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mCycle:Lcom/android/flymexx/datausage/SpinnerPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/flymexx/datausage/SpinnerPreference;->setVisible(Z)V

    :goto_0
    add-long v16, v12, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mTotalUsage:Landroid/support/v7/preference/Preference;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mForegroundUsage:Landroid/support/v7/preference/Preference;

    invoke-static {v2, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mBackgroundUsage:Landroid/support/v7/preference/Preference;

    invoke-static {v2, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mCycle:Lcom/android/flymexx/datausage/SpinnerPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/flymexx/datausage/SpinnerPreference;->setVisible(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mChartData:Lcom/android/flymexxlib/net/ChartData;

    iget-object v3, v3, Lcom/android/flymexxlib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mStart:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mEnd:J

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v12, v4, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mChartData:Lcom/android/flymexxlib/net/ChartData;

    iget-object v3, v3, Lcom/android/flymexxlib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mStart:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mEnd:J

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v14, v4, v6

    goto :goto_0
.end method

.method private getAppRestrictAllData()Z
    .locals 1

    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Lcom/android/flymexx/datausage/AppDataUsage;->getAppRestriction(I)Z

    move-result v0

    return v0
.end method

.method private getAppRestrictAllWifi()Z
    .locals 1

    const v0, 0x8000

    invoke-direct {p0, v0}, Lcom/android/flymexx/datausage/AppDataUsage;->getAppRestriction(I)Z

    move-result v0

    return v0
.end method

.method private getAppRestrictBackground()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppItem:Lcom/android/flymexxlib/AppItem;

    iget v0, v3, Lcom/android/flymexxlib/AppItem;->key:I

    iget-object v3, p0, Lcom/android/flymexx/datausage/AppDataUsage;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v3, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private getAppRestriction(I)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppItem:Lcom/android/flymexxlib/AppItem;

    iget v0, v3, Lcom/android/flymexxlib/AppItem;->key:I

    iget-object v3, p0, Lcom/android/flymexx/datausage/AppDataUsage;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v3, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    and-int v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private getUnrestrictData()Z
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    iget-object v1, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppItem:Lcom/android/flymexxlib/AppItem;

    iget v1, v1, Lcom/android/flymexxlib/AppItem;->key:I

    invoke-virtual {v0, v1}, Lcom/android/flymexx/datausage/DataSaverBackend;->isWhitelisted(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setAppRestrictAllData(Z)V
    .locals 1

    const/high16 v0, 0x10000

    invoke-direct {p0, v0, p1}, Lcom/android/flymexx/datausage/AppDataUsage;->setAppRestriction(IZ)V

    return-void
.end method

.method private setAppRestrictAllWifi(Z)V
    .locals 1

    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Lcom/android/flymexx/datausage/AppDataUsage;->setAppRestriction(IZ)V

    return-void
.end method

.method private setAppRestriction(IZ)V
    .locals 2

    iget-object v1, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppItem:Lcom/android/flymexxlib/AppItem;

    iget v0, v1, Lcom/android/flymexxlib/AppItem;->key:I

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, v0, p1}, Landroid/net/NetworkPolicyManager;->addUidPolicy(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, v0, p1}, Landroid/net/NetworkPolicyManager;->removeUidPolicy(II)V

    goto :goto_0
.end method

.method private updatePrefs()V
    .locals 4

    invoke-direct {p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getAppRestrictAllData()Z

    move-result v2

    invoke-direct {p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getAppRestrictAllWifi()Z

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/flymexx/datausage/AppDataUsage;->updatePrefs(ZZZZ)V

    return-void
.end method

.method private updatePrefs(ZZZZ)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    if-eqz p1, :cond_7

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mRestrictAllData:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mRestrictAllData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mRestrictAllWifi:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mRestrictAllWifi:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SwitchPreference;

    if-eqz p1, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x157

    return v0
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppItem:Lcom/android/flymexxlib/AppItem;

    iget-object v0, v0, Lcom/android/flymexxlib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getAppRestrictAllData()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getAppRestrictAllWifi()Z

    move-result v2

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/flymexx/datausage/AppDataUsage;->updatePrefs(ZZZZ)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 25

    invoke-super/range {p0 .. p1}, Lcom/android/flymexx/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    iget-object v4, v4, Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v4}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_6

    const-string/jumbo v4, "app_item"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/flymexxlib/AppItem;

    :goto_0
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppItem:Lcom/android/flymexxlib/AppItem;

    if-eqz v2, :cond_7

    const-string/jumbo v4, "network_template"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    :goto_1
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/flymexx/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v4

    invoke-static {v10, v4}, Lcom/android/flymexx/datausage/DataUsageSummary;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppItem:Lcom/android/flymexxlib/AppItem;

    if-nez v4, :cond_a

    if-eqz v2, :cond_8

    const-string/jumbo v4, "uid"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    :goto_2
    const/4 v4, -0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_3
    const v4, 0x7f08000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->addPreferencesFromResource(I)V

    const-string/jumbo v4, "total_usage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mTotalUsage:Landroid/support/v7/preference/Preference;

    const-string/jumbo v4, "foreground_usage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mForegroundUsage:Landroid/support/v7/preference/Preference;

    const-string/jumbo v4, "background_usage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mBackgroundUsage:Landroid/support/v7/preference/Preference;

    const-string/jumbo v4, "cycle"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/flymexx/datausage/SpinnerPreference;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mCycle:Lcom/android/flymexx/datausage/SpinnerPreference;

    new-instance v4, Lcom/android/flymexx/datausage/CycleAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mCycle:Lcom/android/flymexx/datausage/SpinnerPreference;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/flymexx/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/flymexx/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/flymexx/datausage/CycleAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppItem:Lcom/android/flymexxlib/AppItem;

    iget v4, v4, Lcom/android/flymexxlib/AppItem;->key:I

    if-lez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    iget-object v4, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppItem:Lcom/android/flymexxlib/AppItem;

    iget v4, v4, Lcom/android/flymexxlib/AppItem;->key:I

    invoke-static {v4}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-nez v4, :cond_b

    const-string/jumbo v4, "unrestricted_data_saver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "restrict_background"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "restrict_all_data"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "restrict_all_wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    :goto_5
    new-instance v4, Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/flymexx/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    const-string/jumbo v4, "app_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppSettings:Landroid/support/v7/preference/Preference;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    const/16 v17, 0x1

    :cond_4
    if-nez v17, :cond_5

    const-string/jumbo v4, "app_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppSettings:Landroid/support/v7/preference/Preference;

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_c

    const-string/jumbo v4, "app_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppList:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v20

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    move/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v4, Lcom/android/flymexx/datausage/AppDataUsage;->CORE_POOL_SIZE:I

    sget v5, Lcom/android/flymexx/datausage/AppDataUsage;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v6, 0x1e

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v13, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v13, v4, :cond_d

    new-instance v16, Lcom/android/flymexx/datausage/AppDataUsage$AppPrefLoader;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/flymexx/datausage/AppDataUsage$AppPrefLoader;-><init>(Lcom/android/flymexx/datausage/AppDataUsage;Lcom/android/flymexx/datausage/AppDataUsage$AppPrefLoader;)V

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5}, Lcom/android/flymexx/datausage/AppDataUsage$AppPrefLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :catch_0
    move-exception v12

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "uid"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/flymexx/datausage/AppDataUsage;->addUid(I)V

    new-instance v4, Lcom/android/flymexxlib/AppItem;

    move/from16 v0, v22

    invoke-direct {v4, v0}, Lcom/android/flymexxlib/AppItem;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppItem:Lcom/android/flymexxlib/AppItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppItem:Lcom/android/flymexxlib/AppItem;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/android/flymexxlib/AppItem;->addUid(I)V

    goto/16 :goto_3

    :cond_a
    const/4 v13, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppItem:Lcom/android/flymexxlib/AppItem;

    iget-object v4, v4, Lcom/android/flymexxlib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v13, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppItem:Lcom/android/flymexxlib/AppItem;

    iget-object v4, v4, Lcom/android/flymexxlib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->addUid(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_b
    const-string/jumbo v4, "restrict_background"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v4, "unrestricted_data_saver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v4, "restrict_all_data"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mRestrictAllData:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mRestrictAllData:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v4, "restrict_all_wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mRestrictAllWifi:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mRestrictAllWifi:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_5

    :cond_c
    const-string/jumbo v4, "app_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    :cond_d
    :goto_8
    return-void

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppItem:Lcom/android/flymexxlib/AppItem;

    iget v4, v4, Lcom/android/flymexxlib/AppItem;->key:I

    const/4 v5, -0x4

    if-ne v4, v5, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0062

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    :goto_9
    const-string/jumbo v4, "unrestricted_data_saver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "app_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "restrict_background"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "app_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "restrict_all_data"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "restrict_all_wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/flymexx/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppItem:Lcom/android/flymexxlib/AppItem;

    iget v4, v4, Lcom/android/flymexxlib/AppItem;->key:I

    const/4 v5, -0x5

    if-ne v4, v5, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0067

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    goto :goto_9

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppItem:Lcom/android/flymexxlib/AppItem;

    iget v4, v4, Lcom/android/flymexxlib/AppItem;->key:I

    invoke-static {v4}, Lcom/android/flymexxlib/net/UidDetailProvider;->getUserIdForKey(I)I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v24}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-static {v4, v0, v15}, Lcom/android/flymexxlib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Lcom/android/flymexxlib/drawable/UserIconDrawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v15}, Lcom/android/flymexxlib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/flymexx/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    goto/16 :goto_9

    :catch_1
    move-exception v11

    goto/16 :goto_4
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    invoke-super {p0}, Lcom/android/flymexx/datausage/DataUsageBase;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/datausage/DataUsageBase;->onPause()V

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/datausage/DataSaverBackend;->remListener(Lcom/android/flymexx/datausage/DataSaverBackend$Listener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/flymexx/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    iget-object v3, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppItem:Lcom/android/flymexxlib/AppItem;

    iget v3, v3, Lcom/android/flymexxlib/AppItem;->key:I

    iget-object v4, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/flymexx/datausage/DataSaverBackend;->setIsBlacklisted(ILjava/lang/String;Z)V

    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_3

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    iget-object v2, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppItem:Lcom/android/flymexxlib/AppItem;

    iget v2, v2, Lcom/android/flymexxlib/AppItem;->key:I

    iget-object v3, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/flymexx/datausage/DataSaverBackend;->setIsWhitelisted(ILjava/lang/String;Z)V

    return v1

    :cond_3
    iget-object v2, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mRestrictAllData:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/flymexx/datausage/AppDataUsage;->setAppRestrictAllData(Z)V

    return v1

    :cond_4
    iget-object v2, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mRestrictAllWifi:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/flymexx/datausage/AppDataUsage;->setAppRestrictAllWifi(Z)V

    return v1

    :cond_5
    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppSettings:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppItem:Lcom/android/flymexxlib/AppItem;

    iget v3, v3, Lcom/android/flymexxlib/AppItem;->key:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/flymexx/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/flymexx/datausage/DataUsageBase;->onResume()V

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/datausage/DataSaverBackend;->addListener(Lcom/android/flymexx/datausage/DataSaverBackend$Listener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/flymexxlib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v2, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppItem:Lcom/android/flymexxlib/AppItem;

    invoke-static {v1, v2}, Lcom/android/flymexxlib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/flymexxlib/AppItem;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-direct {p0}, Lcom/android/flymexx/datausage/AppDataUsage;->updatePrefs()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f040024

    invoke-virtual {p0, v0}, Lcom/android/flymexx/datausage/AppDataUsage;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_1
    invoke-virtual {p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    invoke-static {p0}, Lcom/android/flymexx/AppHeader;->includeAppInfo(Landroid/app/Fragment;)Z

    move-result v5

    invoke-static/range {v0 .. v8}, Lcom/android/flymexx/AppHeader;->setupHeaderView(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IZILandroid/view/View;Landroid/content/Intent;)Landroid/view/View;

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage;->mAppItem:Lcom/android/flymexxlib/AppItem;

    iget-object v0, v0, Lcom/android/flymexxlib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getAppRestrictAllData()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/flymexx/datausage/AppDataUsage;->getAppRestrictAllWifi()Z

    move-result v2

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/flymexx/datausage/AppDataUsage;->updatePrefs(ZZZZ)V

    :cond_0
    return-void
.end method
