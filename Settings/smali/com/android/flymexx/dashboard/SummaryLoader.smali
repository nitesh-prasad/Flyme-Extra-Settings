.class public Lcom/android/flymexx/dashboard/SummaryLoader;
.super Ljava/lang/Object;
.source "SummaryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;,
        Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;,
        Lcom/android/flymexx/dashboard/SummaryLoader$Worker;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/flymexx/dashboard/DashboardAdapter;

.field private final mHandler:Landroid/os/Handler;

.field private mListening:Z

.field private mReceivers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSummaryMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexxlib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorker:Lcom/android/flymexx/dashboard/SummaryLoader$Worker;

.field private mWorkerListening:Z

.field private final mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/dashboard/SummaryLoader;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/dashboard/SummaryLoader;)Lcom/android/flymexx/dashboard/DashboardAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mAdapter:Lcom/android/flymexx/dashboard/DashboardAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/dashboard/SummaryLoader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mListening:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/flymexx/dashboard/SummaryLoader;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mReceivers:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/dashboard/SummaryLoader;Ljava/util/List;Landroid/content/ComponentName;)Lcom/android/flymexxlib/drawer/Tile;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/dashboard/SummaryLoader;->getTileFromCategory(Ljava/util/List;Landroid/content/ComponentName;)Lcom/android/flymexxlib/drawer/Tile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/dashboard/SummaryLoader;Lcom/android/flymexxlib/drawer/Tile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/dashboard/SummaryLoader;->makeProviderW(Lcom/android/flymexxlib/drawer/Tile;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/flymexx/dashboard/SummaryLoader;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/dashboard/SummaryLoader;->setListeningW(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexxlib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mSummaryMap:Landroid/util/ArrayMap;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mTiles:Ljava/util/List;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mReceivers:Landroid/util/ArraySet;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroid/os/HandlerThread;

    const-string/jumbo v5, "SummaryLoader"

    const/16 v6, 0xa

    invoke-direct {v4, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mWorkerThread:Landroid/os/HandlerThread;

    iget-object v4, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    new-instance v4, Lcom/android/flymexx/dashboard/SummaryLoader$Worker;

    iget-object v5, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/flymexx/dashboard/SummaryLoader$Worker;-><init>(Lcom/android/flymexx/dashboard/SummaryLoader;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mWorker:Lcom/android/flymexx/dashboard/SummaryLoader$Worker;

    iput-object p1, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/flymexxlib/drawer/DashboardCategory;

    iget-object v3, v4, Lcom/android/flymexxlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/flymexxlib/drawer/Tile;

    iget-object v4, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mWorker:Lcom/android/flymexx/dashboard/SummaryLoader$Worker;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2}, Lcom/android/flymexx/dashboard/SummaryLoader$Worker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getMetaData(Lcom/android/flymexxlib/drawer/Tile;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p1, Lcom/android/flymexxlib/drawer/Tile;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method private getSummaryProvider(Lcom/android/flymexxlib/drawer/Tile;)Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;
    .locals 12

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p1, Lcom/android/flymexxlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mActivity:Landroid/app/Activity;

    invoke-static {v9, p0, p1}, Lcom/android/flymexx/cyanogenmod/RemoteSummaryProvider;->createSummaryProvider(Landroid/app/Activity;Lcom/android/flymexx/dashboard/SummaryLoader;Lcom/android/flymexxlib/drawer/Tile;)Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;

    move-result-object v9

    return-object v9

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/flymexx/dashboard/SummaryLoader;->getMetaData(Lcom/android/flymexxlib/drawer/Tile;)Landroid/os/Bundle;

    move-result-object v8

    if-nez v8, :cond_1

    return-object v11

    :cond_1
    const-string/jumbo v9, "com.android.flymexx.FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v11

    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v9, "SUMMARY_PROVIDER_FACTORY"

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;

    iget-object v9, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mActivity:Landroid/app/Activity;

    invoke-interface {v6, v9, p0}, Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;->createSummaryProvider(Landroid/app/Activity;Lcom/android/flymexx/dashboard/SummaryLoader;)Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v9

    return-object v9

    :catch_0
    move-exception v3

    :goto_0
    return-object v11

    :catch_1
    move-exception v5

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method private getTileFromCategory(Ljava/util/List;Landroid/content/ComponentName;)Lcom/android/flymexxlib/drawer/Tile;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexxlib/drawer/DashboardCategory;",
            ">;",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/android/flymexxlib/drawer/Tile;"
        }
    .end annotation

    const/4 v7, 0x0

    if-nez p1, :cond_0

    return-object v7

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/drawer/DashboardCategory;

    iget-object v6, v0, Lcom/android/flymexxlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_2

    iget-object v6, v0, Lcom/android/flymexxlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/flymexxlib/drawer/Tile;

    iget-object v6, v4, Lcom/android/flymexxlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v7
.end method

.method private declared-synchronized makeProviderW(Lcom/android/flymexxlib/drawer/Tile;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/flymexx/dashboard/SummaryLoader;->getSummaryProvider(Lcom/android/flymexxlib/drawer/Tile;)Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mSummaryMap:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/flymexxlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setListeningW(Z)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mWorkerListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mWorkerListening:Z

    iget-object v3, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mSummaryMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1, p1}, Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;->setListening(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v3, "SummaryLoader"

    const-string/jumbo v4, "Problem in setListening"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/flymexx/dashboard/SummaryLoader$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/flymexx/dashboard/SummaryLoader$2;-><init>(Lcom/android/flymexx/dashboard/SummaryLoader;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/flymexx/dashboard/SummaryLoader;->setListeningW(Z)V

    return-void
.end method

.method public setAdapter(Lcom/android/flymexx/dashboard/DashboardAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mAdapter:Lcom/android/flymexx/dashboard/DashboardAdapter;

    return-void
.end method

.method public setListening(Z)V
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mListening:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mListening:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mWorker:Lcom/android/flymexx/dashboard/SummaryLoader$Worker;

    invoke-virtual {v1, v4}, Lcom/android/flymexx/dashboard/SummaryLoader$Worker;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mWorker:Lcom/android/flymexx/dashboard/SummaryLoader$Worker;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v4, v1, v2}, Lcom/android/flymexx/dashboard/SummaryLoader$Worker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public setSummary(Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mSummaryMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/flymexx/dashboard/SummaryLoader;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/flymexx/dashboard/SummaryLoader$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/flymexx/dashboard/SummaryLoader$1;-><init>(Lcom/android/flymexx/dashboard/SummaryLoader;Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
