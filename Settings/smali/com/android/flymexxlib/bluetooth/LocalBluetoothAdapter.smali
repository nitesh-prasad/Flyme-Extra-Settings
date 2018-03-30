.class public final Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;
.super Ljava/lang/Object;
.source "LocalBluetoothAdapter.java"


# static fields
.field private static sInstance:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mLastScan:J

.field private mProfileManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

.field private mState:I


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mState:I

    iput-object p1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method static declared-synchronized getInstance()Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;
    .locals 3

    const-class v2, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-direct {v1, v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    sput-object v1, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    :cond_0
    sget-object v1, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public cancelDiscovery()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    return-void
.end method

.method public disable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0
.end method

.method public enable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getBluetoothState()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->syncBluetoothState()Z

    iget v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBondedDevices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method public getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getScanMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    return v0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method public isDiscovering()Z
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setBluetoothEnabled(Z)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/16 v1, 0xb

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    :goto_2
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xd

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->syncBluetoothState()Z

    goto :goto_2
.end method

.method setBluetoothStateInt(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->setBluetoothStateOn()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    return-void
.end method

.method setProfileManager(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    return-void
.end method

.method public setScanMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    return-void
.end method

.method public setScanMode(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v0

    return v0
.end method

.method public startScanning(Z)V
    .locals 6

    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p1, :cond_2

    iget-wide v2, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mLastScan:J

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/flymexxlib/bluetooth/A2dpProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/A2dpProfile;->isA2dpPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->getA2dpSinkProfile()Lcom/android/flymexxlib/bluetooth/A2dpSinkProfile;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/A2dpSinkProfile;->isA2dpPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mLastScan:J

    :cond_3
    return-void
.end method

.method public stopScanning()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    return-void
.end method

.method syncBluetoothState()Z
    .locals 2

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    iget v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mState:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
