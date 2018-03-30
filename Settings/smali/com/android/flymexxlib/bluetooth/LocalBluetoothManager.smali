.class public final Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;
.super Ljava/lang/Object;
.source "LocalBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;


# instance fields
.field private final mCachedDeviceManager:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

.field private final mContext:Landroid/content/Context;

.field private final mEventManager:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

.field private mForegroundActivity:Landroid/content/Context;

.field private final mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method private constructor <init>(Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    new-instance v0, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, p2, p0}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;-><init>(Landroid/content/Context;Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;)V

    iput-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    new-instance v0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;-><init>(Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    new-instance v0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;-><init>(Landroid/content/Context;Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;
    .locals 5

    const/4 v4, 0x0

    const-class v3, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v3

    return-object v4

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    invoke-direct {v2, v0, v1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;-><init>(Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V

    sput-object v2, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_1

    sget-object v2, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    invoke-interface {p1, v1, v2}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;->onBluetoothManagerInitialized(Landroid/content/Context;Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;)V

    :cond_1
    sget-object v2, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public getBluetoothAdapter()Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method public getCachedDeviceManager()Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method public getEventManager()Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    return-object v0
.end method

.method public getForegroundActivity()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    return-object v0
.end method

.method public getProfileManager()Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method public isForegroundActivity()Z
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setForegroundActivity(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    const-string/jumbo v0, "LocalBluetoothManager"

    const-string/jumbo v1, "setting foreground activity to non-null context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LocalBluetoothManager"

    const-string/jumbo v1, "setting foreground activity to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
