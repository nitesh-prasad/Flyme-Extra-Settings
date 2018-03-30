.class public Lcyanogenmod/preference/RemotePreferenceManager;
.super Ljava/lang/Object;
.source "RemotePreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/preference/RemotePreferenceManager$1;,
        Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcyanogenmod/preference/RemotePreferenceManager;


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/content/BroadcastReceiver;

.field private final mMainHandler:Landroid/os/Handler;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcyanogenmod/preference/RemotePreferenceManager;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcyanogenmod/preference/RemotePreferenceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcyanogenmod/preference/RemotePreferenceManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get3(Lcyanogenmod/preference/RemotePreferenceManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcyanogenmod/preference/RemotePreferenceManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcyanogenmod/preference/RemotePreferenceManager;->requestUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcyanogenmod/preference/RemotePreferenceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/preference/RemotePreferenceManager;->TAG:Ljava/lang/String;

    const-class v0, Lcyanogenmod/preference/RemotePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcyanogenmod/preference/RemotePreferenceManager;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCache:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcyanogenmod/preference/RemotePreferenceManager$1;

    invoke-direct {v0, p0}, Lcyanogenmod/preference/RemotePreferenceManager$1;-><init>(Lcyanogenmod/preference/RemotePreferenceManager;)V

    iput-object v0, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mListener:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcyanogenmod/preference/RemotePreferenceManager;
    .locals 3

    const-class v1, Lcyanogenmod/preference/RemotePreferenceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcyanogenmod/preference/RemotePreferenceManager;->sInstance:Lcyanogenmod/preference/RemotePreferenceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcyanogenmod/preference/RemotePreferenceManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcyanogenmod/preference/RemotePreferenceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/preference/RemotePreferenceManager;->sInstance:Lcyanogenmod/preference/RemotePreferenceManager;

    :cond_0
    sget-object v0, Lcyanogenmod/preference/RemotePreferenceManager;->sInstance:Lcyanogenmod/preference/RemotePreferenceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private requestUpdate(Ljava/lang/String;)V
    .locals 10

    iget-object v9, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCache:Ljava/util/Map;

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v9

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v3, "cyanogenmod.permission.MANAGE_REMOTE_PREFERENCES"

    iget-object v4, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mListener:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method


# virtual methods
.method public attach(Ljava/lang/String;Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;)V
    .locals 8

    iget-object v3, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCache:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    if-nez v1, :cond_0

    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_0
    monitor-exit v3

    iget-object v3, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    monitor-enter v3

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v4, "RemotePreference"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    iget-object v4, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mListener:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "cyanogenmod.intent.action.REFRESH_PREFERENCE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "cyanogenmod.permission.MANAGE_REMOTE_PREFERENCES"

    iget-object v7, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcyanogenmod/preference/RemotePreferenceManager;->requestUpdate(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    monitor-exit v3

    return-void

    :cond_3
    :try_start_2
    invoke-interface {p2}, Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;->getReceiverIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public detach(Ljava/lang/String;Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;)V
    .locals 4

    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mThread:Landroid/os/HandlerThread;

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
