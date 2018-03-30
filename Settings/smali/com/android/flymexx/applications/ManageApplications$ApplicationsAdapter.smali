.class Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/android/flymexxlib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/flymexx/applications/AppStateBaseBridge$Callback;
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter$-void_-com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1_com_android_settingslib_applications_ApplicationsState$AppFilter_finalFilterObj_java_util_Comparator_comparatorObj_LambdaImpl0;,
        Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter$-void_rebuild_boolean_eraseold_LambdaImpl0;,
        Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter$1;
    }
.end annotation


# static fields
.field private static final EMPTY_SECTIONS:[Lcom/android/flymexx/applications/ManageApplications$SectionInfo;


# instance fields
.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mBgHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field mCurFilterPrefix:Ljava/lang/CharSequence;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtraInfoBridge:Lcom/android/flymexx/applications/AppStateBaseBridge;

.field private final mFgHandler:Landroid/os/Handler;

.field private mFilter:Landroid/widget/Filter;

.field private mFilterMode:I

.field private mHasReceivedBridgeCallback:Z

.field private mHasReceivedLoadEntries:Z

.field private mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/text/AlphabeticIndex$ImmutableIndex",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSortMode:I

.field private final mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

.field private mOverrideFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPositionToSectionIndex:[I

.field private mResumed:Z

.field private mSections:[Lcom/android/flymexx/applications/ManageApplications$SectionInfo;

.field private final mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

.field private final mState:Lcom/android/flymexxlib/applications/ApplicationsState;

.field private mWhichSize:I


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/flymexx/applications/AppStateBaseBridge;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/flymexx/applications/AppStateBaseBridge;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->rebuildSections()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->updateLoading()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/flymexx/applications/ManageApplications$SectionInfo;

    sput-object v0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/flymexx/applications/ManageApplications$SectionInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/flymexxlib/applications/ApplicationsState;Lcom/android/flymexx/applications/ManageApplications;I)V
    .locals 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    sget-object v0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/flymexx/applications/ManageApplications$SectionInfo;

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/flymexx/applications/ManageApplications$SectionInfo;

    new-instance v0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    iput-object p1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/flymexxlib/applications/ApplicationsState;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mFgHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/flymexxlib/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/android/flymexxlib/applications/ApplicationsState;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Lcom/android/flymexxlib/applications/ApplicationsState;->newSession(Lcom/android/flymexxlib/applications/ApplicationsState$Callbacks;)Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    iput-object p2, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    invoke-virtual {p2}, Lcom/android/flymexx/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mPm:Landroid/content/pm/PackageManager;

    iput p3, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    iget v0, v0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/flymexx/applications/AppStateNotificationBridge;

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/flymexxlib/applications/ApplicationsState;

    invoke-static {p2}, Lcom/android/flymexx/applications/ManageApplications;->-get6(Lcom/android/flymexx/applications/ManageApplications;)Lcom/android/flymexx/notification/NotificationBackend;

    move-result-object v3

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/flymexx/applications/AppStateNotificationBridge;-><init>(Landroid/content/Context;Lcom/android/flymexxlib/applications/ApplicationsState;Lcom/android/flymexx/applications/AppStateBaseBridge$Callback;Lcom/android/flymexx/notification/NotificationBackend;)V

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/flymexx/applications/AppStateBaseBridge;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    iget v0, v0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/android/flymexx/applications/AppStateUsageBridge;

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/flymexxlib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/flymexx/applications/AppStateUsageBridge;-><init>(Landroid/content/Context;Lcom/android/flymexxlib/applications/ApplicationsState;Lcom/android/flymexx/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/flymexx/applications/AppStateBaseBridge;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    iget v0, v0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/android/flymexx/applications/AppStatePowerBridge;

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/flymexxlib/applications/ApplicationsState;

    invoke-direct {v0, v1, p0}, Lcom/android/flymexx/applications/AppStatePowerBridge;-><init>(Lcom/android/flymexxlib/applications/ApplicationsState;Lcom/android/flymexx/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/flymexx/applications/AppStateBaseBridge;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    iget v0, v0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/android/flymexx/applications/AppStateOverlayBridge;

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/flymexxlib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/flymexx/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/flymexxlib/applications/ApplicationsState;Lcom/android/flymexx/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/flymexx/applications/AppStateBaseBridge;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    iget v0, v0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/android/flymexx/applications/AppStateWriteSettingsBridge;

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/flymexxlib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/flymexx/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/flymexxlib/applications/ApplicationsState;Lcom/android/flymexx/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/flymexx/applications/AppStateBaseBridge;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/flymexx/applications/AppStateBaseBridge;

    goto :goto_0
.end method

.method private static packageNameEquals(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageItemInfo;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private rebuildSections()V
    .locals 14

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    invoke-static {v10}, Lcom/android/flymexx/applications/ManageApplications;->-get4(Lcom/android/flymexx/applications/ManageApplications;)Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ListView;->isFastScrollEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v10

    if-nez v10, :cond_0

    new-instance v5, Landroid/os/LocaleList;

    new-array v10, v13, [Ljava/util/Locale;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v11, v10, v12

    invoke-direct {v5, v10}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    :cond_0
    new-instance v1, Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {v5, v12}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v4

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v4, :cond_1

    new-array v10, v13, [Ljava/util/Locale;

    invoke-virtual {v5, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v1, v10}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array v10, v13, [Ljava/util/Locale;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v11, v10, v12

    invoke-virtual {v1, v10}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {v1}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object v10

    iput-object v10, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, -0x1

    iget-object v10, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v10, v9, [I

    iput-object v10, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v9, :cond_5

    iget-object v10, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v10, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string/jumbo v2, ""

    :cond_3
    invoke-virtual {v10, v2}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result v7

    if-eq v7, v3, :cond_4

    move v3, v7

    new-instance v10, Lcom/android/flymexx/applications/ManageApplications$SectionInfo;

    iget-object v11, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v11, v7}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v11

    invoke-virtual {v11}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v6}, Lcom/android/flymexx/applications/ManageApplications$SectionInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v10, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    aput v11, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    sget-object v10, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/flymexx/applications/ManageApplications$SectionInfo;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/android/flymexx/applications/ManageApplications$SectionInfo;

    iput-object v10, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/flymexx/applications/ManageApplications$SectionInfo;

    :goto_2
    return-void

    :cond_6
    sget-object v10, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/flymexx/applications/ManageApplications$SectionInfo;

    iput-object v10, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/flymexx/applications/ManageApplications$SectionInfo;

    iput-object v11, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    goto :goto_2
.end method

.method private removeDuplicateIgnoringUser(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3, v6}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->packageNameEquals(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageItemInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    return-object v4
.end method

.method private updateLoading()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/flymexx/applications/ManageApplications;->-get5(Lcom/android/flymexx/applications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/flymexx/applications/ManageApplications;->-get3(Lcom/android/flymexx/applications/ManageApplications;)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/android/flymexx/Utils;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateSummary(Lcom/android/flymexx/applications/AppViewHolder;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    iget v0, v0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/flymexx/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, v0, v1}, Lcom/android/flymexx/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p1, Lcom/android/flymexx/applications/AppViewHolder;->entry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/flymexx/applications/AppViewHolder;->entry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/flymexx/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, v0, v1}, Lcom/android/flymexx/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/android/flymexx/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/android/flymexx/applications/AppViewHolder;->entry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/flymexx/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/flymexx/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/flymexx/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Lcom/android/flymexx/applications/AppViewHolder;->entry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/flymexx/applications/AppViewHolder;->entry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/flymexx/applications/AppStateAppOpsBridge$PermissionState;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/flymexx/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, v0, v1}, Lcom/android/flymexx/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/android/flymexx/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    new-instance v2, Lcom/android/flymexx/applications/AppStateUsageBridge$UsageState;

    iget-object v0, p1, Lcom/android/flymexx/applications/AppViewHolder;->entry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/flymexx/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v2, v0}, Lcom/android/flymexx/applications/AppStateUsageBridge$UsageState;-><init>(Lcom/android/flymexx/applications/AppStateAppOpsBridge$PermissionState;)V

    invoke-virtual {v2}, Lcom/android/flymexx/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0c0ce3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    const v0, 0x7f0c0ce4

    goto :goto_1

    :cond_4
    iget-object v0, p1, Lcom/android/flymexx/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Lcom/android/flymexx/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/flymexx/applications/AppViewHolder;->entry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/flymexx/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Lcom/android/flymexx/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/flymexx/applications/AppViewHolder;->entry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/flymexx/applications/DrawOverlayDetails;->getSummary(Landroid/content/Context;Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p1, Lcom/android/flymexx/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/flymexx/applications/AppViewHolder;->entry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/flymexx/applications/WriteSettingsDetails;->getSummary(Landroid/content/Context;Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method synthetic -com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1(Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)V
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->rebuild(Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mFgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter$-void_-com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1_com_android_settingslib_applications_ApplicationsState$AppFilter_finalFilterObj_java_util_Comparator_comparatorObj_LambdaImpl0;

    invoke-direct {v2, p0, v0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter$-void_-com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1_com_android_settingslib_applications_ApplicationsState$AppFilter_finalFilterObj_java_util_Comparator_comparatorObj_LambdaImpl0;-><init>(Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method synthetic -com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$2(Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->onRebuildComplete(Ljava/util/ArrayList;)V

    return-void
.end method

.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    return-object p2

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/flymexxlib/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppEntry(I)Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/flymexx/applications/ManageApplications$SectionInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/flymexx/applications/ManageApplications$SectionInfo;->position:I

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/flymexx/applications/ManageApplications$SectionInfo;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    invoke-static {v2}, Lcom/android/flymexx/applications/ManageApplications;->-get2(Lcom/android/flymexx/applications/ManageApplications;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/flymexx/applications/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/flymexx/applications/AppViewHolder;

    move-result-object v1

    iget-object p2, v1, Lcom/android/flymexx/applications/AppViewHolder;->rootView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    monitor-enter v0

    :try_start_0
    iput-object v0, v1, Lcom/android/flymexx/applications/AppViewHolder;->entry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/flymexx/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/flymexxlib/applications/ApplicationsState;

    invoke-virtual {v2, v0}, Lcom/android/flymexxlib/applications/ApplicationsState;->ensureIcon(Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)V

    iget-object v2, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/flymexx/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->updateSummary(Lcom/android/flymexx/applications/AppViewHolder;)V

    iget-object v2, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/android/flymexx/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/android/flymexx/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v3, 0x7f0c082b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->isEnabled(I)Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    return-object p2

    :cond_2
    :try_start_1
    iget-object v2, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/android/flymexx/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/android/flymexx/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v3, 0x7f0c082a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2

    :cond_3
    :try_start_2
    iget-object v2, v1, Lcom/android/flymexx/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    iget v2, v2, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    invoke-static {}, Lcom/android/flymexx/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/flymexx/fuelgauge/PowerWhitelistBackend;

    move-result-object v2

    iget-object v3, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/flymexx/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public onAllSizesComputed()V
    .locals 2

    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const v1, 0x7f110346

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    :cond_0
    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/flymexx/applications/ManageApplications;->-get7(Lcom/android/flymexx/applications/ManageApplications;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    :cond_0
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/applications/AppViewHolder;

    iget-object v2, v0, Lcom/android/flymexx/applications/AppViewHolder;->entry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/flymexx/applications/AppViewHolder;->entry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->updateSummary(Lcom/android/flymexx/applications/AppViewHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v2, v0, Lcom/android/flymexx/applications/AppViewHolder;->entry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    invoke-static {v3}, Lcom/android/flymexx/applications/ManageApplications;->-get0(Lcom/android/flymexx/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const v3, 0x7f110346

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->removeDuplicateIgnoringUser(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->rebuildSections()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/flymexx/applications/ManageApplications;->-get3(Lcom/android/flymexx/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/flymexx/applications/ManageApplications;->-get5(Lcom/android/flymexx/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    invoke-static {v1}, Lcom/android/flymexx/applications/ManageApplications;->-get3(Lcom/android/flymexx/applications/ManageApplications;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v2, v2}, Lcom/android/flymexx/Utils;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    :cond_2
    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    iget v0, v0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    return-void

    :cond_3
    iput-object v1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/flymexx/applications/ManageApplications$SectionInfo;

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/flymexx/applications/ManageApplications$SectionInfo;

    iput-object v1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/flymexxlib/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/android/flymexxlib/applications/ApplicationsState;->haveDisabledApps()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/flymexx/applications/ManageApplications;->setHasDisabled(Z)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/flymexx/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->pause()V

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/flymexx/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/flymexx/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/flymexx/applications/AppStateBaseBridge;->pause()V

    :cond_0
    return-void
.end method

.method public rebuild(I)V
    .locals 1

    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method

.method public rebuild(Z)V
    .locals 7

    iget-boolean v5, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/flymexx/applications/AppStateBaseBridge;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    if-eqz v5, :cond_4

    :cond_0
    sget-boolean v5, Lcom/android/flymexx/applications/ManageApplications;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "ManageApplications"

    const-string/jumbo v6, "Rebuilding app list..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    :goto_0
    sget-object v5, Lcom/android/flymexx/applications/ManageApplications;->FILTERS:[Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    iget v6, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    aget-object v2, v5, v6

    iget-object v5, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mOverrideFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    if-eqz v5, :cond_2

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mOverrideFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    :cond_2
    iget-object v5, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/flymexx/applications/ManageApplications;

    invoke-static {v5}, Lcom/android/flymexx/applications/ManageApplications;->-get7(Lcom/android/flymexx/applications/ManageApplications;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v3, Lcom/android/flymexxlib/applications/ApplicationsState$CompoundFilter;

    sget-object v5, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    invoke-direct {v3, v2, v5}, Lcom/android/flymexxlib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;)V

    move-object v2, v3

    :cond_3
    iget v5, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    packed-switch v5, :pswitch_data_0

    sget-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    :goto_1
    new-instance v3, Lcom/android/flymexxlib/applications/ApplicationsState$CompoundFilter;

    sget-object v5, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_NOT_HIDE:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    invoke-direct {v3, v2, v5}, Lcom/android/flymexxlib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;)V

    move-object v4, v3

    iget-object v5, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mBgHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter$-void_rebuild_boolean_eraseold_LambdaImpl0;

    invoke-direct {v6, p0, v3, v0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter$-void_rebuild_boolean_eraseold_LambdaImpl0;-><init>(Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    return-void

    :cond_5
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    :pswitch_0
    iget v5, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    packed-switch v5, :pswitch_data_1

    sget-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f110346
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->release()V

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/flymexx/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/flymexx/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/flymexx/applications/AppStateBaseBridge;->release()V

    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 3

    sget-boolean v0, Lcom/android/flymexx/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Resume!  mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->resume()V

    iput p1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/flymexx/applications/AppStateBaseBridge;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/flymexx/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/flymexx/applications/AppStateBaseBridge;->resume()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0
.end method

.method public setFilter(I)V
    .locals 1

    iput p1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method

.method public setOverrideFilter(Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;)V
    .locals 1

    iput-object p1, p0, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->mOverrideFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method
