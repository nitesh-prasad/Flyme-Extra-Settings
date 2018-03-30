.class public Lcom/android/flymexxlib/applications/ApplicationsState$Session;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexxlib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# instance fields
.field final mCallbacks:Lcom/android/flymexxlib/applications/ApplicationsState$Callbacks;

.field mLastAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildAsync:Z

.field mRebuildComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

.field mRebuildForeground:Z

.field mRebuildRequested:Z

.field mRebuildResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mRebuildSync:Ljava/lang/Object;

.field mResumed:Z

.field final synthetic this$0:Lcom/android/flymexxlib/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/flymexxlib/applications/ApplicationsState;Lcom/android/flymexxlib/applications/ApplicationsState$Callbacks;)V
    .locals 1

    iput-object p1, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/flymexxlib/applications/ApplicationsState$Callbacks;

    return-void
.end method


# virtual methods
.method handleRebuildList()V
    .locals 10

    iget-object v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-boolean v7, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    monitor-exit v8

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    iget-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    iget-boolean v7, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildForeground:Z

    if-eqz v7, :cond_1

    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildForeground:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v8

    if-eqz v3, :cond_2

    iget-object v7, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/flymexxlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-interface {v3, v7}, Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;->init(Landroid/content/Context;)V

    :cond_2
    iget-object v7, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v8, v7, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v8

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/flymexxlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    if-eqz v2, :cond_5

    if-eqz v3, :cond_3

    invoke-interface {v3, v2}, Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_3
    iget-object v7, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v8, v7, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v8

    if-eqz v1, :cond_4

    :try_start_3
    iget-object v7, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/flymexxlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    :cond_4
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v8

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    :catchall_2
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_6
    if-eqz v1, :cond_7

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_7
    iget-object v8, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v8

    :try_start_4
    iget-boolean v7, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v7, :cond_8

    iput-object v4, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    iget-boolean v7, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildAsync:Z

    if-nez v7, :cond_9

    iput-object v4, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_8
    :goto_1
    monitor-exit v8

    const/16 v7, 0xa

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :cond_9
    :try_start_5
    iget-object v7, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/flymexxlib/applications/ApplicationsState;->mMainHandler:Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x1

    invoke-virtual {v7, v9, p0}, Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/flymexxlib/applications/ApplicationsState;->mMainHandler:Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x1

    invoke-virtual {v7, v9, p0}, Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    iget-object v7, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/flymexxlib/applications/ApplicationsState;->mMainHandler:Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v7, v6}, Lcom/android/flymexxlib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public pause()V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mResumed:Z

    iget-object v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/flymexxlib/applications/ApplicationsState;->mSessionsChanged:Z

    iget-object v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/flymexxlib/applications/ApplicationsState;->doPauseIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public rebuild(Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->rebuild(Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public rebuild(Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v3, v1, Lcom/android/flymexxlib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/flymexxlib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildAsync:Z

    iput-object p1, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    iput-object p2, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    iput-boolean p3, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildForeground:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/flymexxlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/flymexxlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/flymexxlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v1, v0}, Lcom/android/flymexxlib/applications/ApplicationsState$BackgroundHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    return-object v5

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public release()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->pause()V

    iget-object v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/flymexxlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->mResumed:Z

    iget-object v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/flymexxlib/applications/ApplicationsState;->mSessionsChanged:Z

    iget-object v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->this$0:Lcom/android/flymexxlib/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/flymexxlib/applications/ApplicationsState;->doResumeIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
