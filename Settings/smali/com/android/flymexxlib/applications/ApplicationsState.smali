.class public Lcom/android/flymexxlib/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexxlib/applications/ApplicationsState$10;,
        Lcom/android/flymexxlib/applications/ApplicationsState$11;,
        Lcom/android/flymexxlib/applications/ApplicationsState$12;,
        Lcom/android/flymexxlib/applications/ApplicationsState$13;,
        Lcom/android/flymexxlib/applications/ApplicationsState$14;,
        Lcom/android/flymexxlib/applications/ApplicationsState$1;,
        Lcom/android/flymexxlib/applications/ApplicationsState$2;,
        Lcom/android/flymexxlib/applications/ApplicationsState$3;,
        Lcom/android/flymexxlib/applications/ApplicationsState$4;,
        Lcom/android/flymexxlib/applications/ApplicationsState$5;,
        Lcom/android/flymexxlib/applications/ApplicationsState$6;,
        Lcom/android/flymexxlib/applications/ApplicationsState$7;,
        Lcom/android/flymexxlib/applications/ApplicationsState$8;,
        Lcom/android/flymexxlib/applications/ApplicationsState$9;,
        Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;,
        Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;,
        Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;,
        Lcom/android/flymexxlib/applications/ApplicationsState$Callbacks;,
        Lcom/android/flymexxlib/applications/ApplicationsState$CompoundFilter;,
        Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;,
        Lcom/android/flymexxlib/applications/ApplicationsState$PackageIntentReceiver;,
        Lcom/android/flymexxlib/applications/ApplicationsState$Session;,
        Lcom/android/flymexxlib/applications/ApplicationsState$SizeInfo;,
        Lcom/android/flymexxlib/applications/ApplicationsState$VolumeFilter;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILTER_ALL_ENABLED:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DISABLED:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_EVERYTHING:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_NOT_HIDE:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_PERSONAL:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_THIRD_PARTY:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WITH_DOMAIN_URLS:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WORK:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

.field public static final INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field static sInstance:Lcom/android/flymexxlib/applications/ApplicationsState;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mActiveSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminRetrieveFlags:I

.field final mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;

.field final mContext:Landroid/content/Context;

.field mCurComputingSizePkg:Ljava/lang/String;

.field mCurComputingSizeUserId:I

.field mCurId:J

.field final mEntriesMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field mHaveDisabledApps:Z

.field final mInterestingConfigChanges:Lcom/android/flymexxlib/applications/InterestingConfigChanges;

.field final mIpm:Landroid/content/pm/IPackageManager;

.field final mMainHandler:Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;

.field mPackageIntentReceiver:Lcom/android/flymexxlib/applications/ApplicationsState$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mRebuildingSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mResumed:Z

.field final mRetrieveFlags:I

.field final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mSessionsChanged:Z

.field final mThread:Landroid/os/HandlerThread;

.field final mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/flymexxlib/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/flymexxlib/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/flymexxlib/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/flymexxlib/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/flymexxlib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/flymexxlib/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap3(Lcom/android/flymexxlib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/flymexxlib/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap4(Lcom/android/flymexxlib/applications/ApplicationsState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexxlib/applications/ApplicationsState;->addUser(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/flymexxlib/applications/ApplicationsState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexxlib/applications/ApplicationsState;->removeUser(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/flymexxlib/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/flymexxlib/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/flymexxlib/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/flymexxlib/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/flymexxlib/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/flymexxlib/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/flymexxlib/applications/ApplicationsState$7;

    invoke-direct {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$7;-><init>()V

    sput-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/flymexxlib/applications/ApplicationsState$8;

    invoke-direct {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$8;-><init>()V

    sput-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/flymexxlib/applications/ApplicationsState$9;

    invoke-direct {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$9;-><init>()V

    sput-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_THIRD_PARTY:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/flymexxlib/applications/ApplicationsState$10;

    invoke-direct {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$10;-><init>()V

    sput-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/flymexxlib/applications/ApplicationsState$11;

    invoke-direct {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$11;-><init>()V

    sput-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/flymexxlib/applications/ApplicationsState$12;

    invoke-direct {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$12;-><init>()V

    sput-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/flymexxlib/applications/ApplicationsState$13;

    invoke-direct {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$13;-><init>()V

    sput-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/flymexxlib/applications/ApplicationsState$14;

    invoke-direct {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$14;-><init>()V

    sput-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_NOT_HIDE:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 7

    const-wide/16 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/flymexxlib/applications/InterestingConfigChanges;

    invoke-direct {v2}, Lcom/android/flymexxlib/applications/InterestingConfigChanges;-><init>()V

    iput-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/flymexxlib/applications/InterestingConfigChanges;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    iput-wide v4, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mCurId:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/flymexxlib/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mMainHandler:Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;

    iput-object p1, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    const-string/jumbo v2, "user"

    invoke-virtual {p1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v3, v2

    iget-object v5, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "ApplicationsState.Loader"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/flymexxlib/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;

    const v2, 0xa200

    iput v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    const v2, 0x8200

    iput v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mRetrieveFlags:I

    iget-object v3, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private addUser(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mResumed:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexxlib/applications/ApplicationsState;->doPauseLocked()V

    invoke-virtual {p0}, Lcom/android/flymexxlib/applications/ApplicationsState;->doResumeIfNeededLocked()V

    :cond_0
    iget-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mMainHandler:Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mMainHandler:Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private clearEntries()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private getAppInfoLocked(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne p2, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;
    .locals 8

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mCurId:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mCurId:J

    invoke-direct {v0, v2, p1, v4, v5}, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq v2, p1, :cond_0

    iput-object p1, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/android/flymexxlib/applications/ApplicationsState;
    .locals 2

    sget-object v1, Lcom/android/flymexxlib/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->sInstance:Lcom/android/flymexxlib/applications/ApplicationsState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/flymexxlib/applications/ApplicationsState;

    invoke-direct {v0, p0}, Lcom/android/flymexxlib/applications/ApplicationsState;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->sInstance:Lcom/android/flymexxlib/applications/ApplicationsState;

    :cond_0
    sget-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->sInstance:Lcom/android/flymexxlib/applications/ApplicationsState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method private getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/flymexxlib/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private removeUser(I)V
    .locals 6

    iget-object v4, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v3, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    iget-object v5, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v3, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mMainHandler:Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mMainHandler:Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v4

    return-void
.end method


# virtual methods
.method addPackage(Ljava/lang/String;I)V
    .locals 5

    :try_start_0
    iget-object v3, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mResumed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :cond_0
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/flymexxlib/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-ltz v2, :cond_1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :cond_1
    :try_start_5
    iget-object v4, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2, p2}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    :goto_0
    invoke-interface {v4, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    if-nez v1, :cond_3

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    return-void

    :cond_2
    :try_start_7
    iget v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mRetrieveFlags:I

    goto :goto_0

    :cond_3
    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_5

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    return-void

    :cond_4
    const/4 v2, 0x1

    :try_start_9
    iput-boolean v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mHaveDisabledApps:Z

    :cond_5
    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    :cond_6
    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mMainHandler:Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mMainHandler:Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_7
    :try_start_a
    monitor-exit v3

    :goto_1
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method doPauseIfNeededLocked()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    iget-boolean v1, v1, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/flymexxlib/applications/ApplicationsState;->doPauseLocked()V

    return-void
.end method

.method doPauseLocked()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mResumed:Z

    iget-object v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/flymexxlib/applications/ApplicationsState$PackageIntentReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/flymexxlib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$PackageIntentReceiver;->unregisterReceiver()V

    iput-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/flymexxlib/applications/ApplicationsState$PackageIntentReceiver;

    :cond_0
    return-void
.end method

.method doResumeIfNeededLocked()V
    .locals 15

    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-boolean v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mResumed:Z

    if-eqz v8, :cond_0

    return-void

    :cond_0
    iput-boolean v12, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mResumed:Z

    iget-object v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/flymexxlib/applications/ApplicationsState$PackageIntentReceiver;

    if-nez v8, :cond_1

    new-instance v8, Lcom/android/flymexxlib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-direct {v8, p0, v11}, Lcom/android/flymexxlib/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/flymexxlib/applications/ApplicationsState;Lcom/android/flymexxlib/applications/ApplicationsState$PackageIntentReceiver;)V

    iput-object v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/flymexxlib/applications/ApplicationsState$PackageIntentReceiver;

    iget-object v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/flymexxlib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v8}, Lcom/android/flymexxlib/applications/ApplicationsState$PackageIntentReceiver;->registerReceiver()V

    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    iget-object v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    :try_start_0
    iget-object v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-gez v8, :cond_2

    iget-object v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    iget-object v9, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    :goto_1
    iget v10, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v9, v8, v10}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    iget-object v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    iget v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mRetrieveFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/flymexxlib/applications/InterestingConfigChanges;

    iget-object v9, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/flymexxlib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-direct {p0}, Lcom/android/flymexxlib/applications/ApplicationsState;->clearEntries()V

    :cond_5
    iput-boolean v13, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mHaveDisabledApps:Z

    const/4 v2, 0x0

    :goto_2
    iget-object v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_a

    iget-object v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v8, :cond_9

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_8

    iget-object v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_4
    iget-object v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    iget-object v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iput-boolean v12, v8, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    iput-boolean v12, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mHaveDisabledApps:Z

    :cond_9
    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    iget-object v9, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    if-eqz v1, :cond_6

    iput-object v3, v1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_3

    :cond_a
    iget-object v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v8, v9, :cond_b

    invoke-direct {p0}, Lcom/android/flymexxlib/applications/ApplicationsState;->clearEntries()V

    :cond_b
    iput-object v11, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v8, v14}, Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v8, v14}, Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    :cond_c
    return-void
.end method

.method public ensureIcon(Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)V
    .locals 2

    iget-object v0, p1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0, v1}, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public getBackgroundLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;I)Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/flymexxlib/applications/ApplicationsState;->getAppInfoLocked(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    const/4 v5, 0x0

    invoke-interface {v3, p1, v5, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/flymexxlib/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :cond_1
    monitor-exit v4

    return-object v1

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v3, "ApplicationsState"

    const-string/jumbo v5, "getEntry couldn\'t reach PackageManager"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    return-object v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public haveDisabledApps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mHaveDisabledApps:Z

    return v0
.end method

.method indexOfApplicationInfoLocked(Ljava/lang/String;I)I
    .locals 3

    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public invalidatePackage(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/flymexxlib/applications/ApplicationsState;->removePackage(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/flymexxlib/applications/ApplicationsState;->addPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public newSession(Lcom/android/flymexxlib/applications/ApplicationsState$Callbacks;)Lcom/android/flymexxlib/applications/ApplicationsState$Session;
    .locals 3

    new-instance v0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    invoke-direct {v0, p0, p1}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;-><init>(Lcom/android/flymexxlib/applications/ApplicationsState;Lcom/android/flymexxlib/applications/ApplicationsState$Callbacks;)V

    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method rebuildActiveSessions()V
    .locals 4

    iget-object v3, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mSessionsChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v3

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    iget-boolean v2, v1, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removePackage(Ljava/lang/String;I)V
    .locals 7

    iget-object v5, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/flymexxlib/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v4, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v4, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mHaveDisabledApps:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_3

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mHaveDisabledApps:Z

    :cond_1
    iget-object v4, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mMainHandler:Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mMainHandler:Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v5

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public requestSize(Ljava/lang/String;I)V
    .locals 4

    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/flymexxlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v1, p1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfoAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
