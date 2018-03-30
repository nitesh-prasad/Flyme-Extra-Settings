.class public final Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$1;,
        Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$2;,
        Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;,
        Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;,
        Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$ClassChangedHandler;,
        Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;,
        Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;,
        Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$DeviceFoundHandler;,
        Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$DockEventHandler;,
        Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;,
        Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$NameChangedHandler;,
        Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$PairingCancelHandler;,
        Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;,
        Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$UuidChangedHandler;
    }
.end annotation


# instance fields
.field private final mAdapterIntentFilter:Landroid/content/IntentFilter;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/flymexxlib/bluetooth/BluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mProfileIntentFilter:Landroid/content/IntentFilter;

.field private mProfileManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

.field private mReceiverHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->dispatchConnectionStateChanged(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->setDefaultBtName()V

    return-void
.end method

.method constructor <init>(Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    new-instance v0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$1;

    invoke-direct {v0, p0}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$1;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$2;

    invoke-direct {v0, p0}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$2;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    iput-object p2, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    new-instance v1, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;)V

    const-string/jumbo v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    new-instance v1, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;)V

    const-string/jumbo v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    new-instance v1, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;Z)V

    invoke-direct {p0, v0, v1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;)V

    const-string/jumbo v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    new-instance v1, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;Z)V

    invoke-direct {p0, v0, v1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;)V

    const-string/jumbo v0, "android.bluetooth.device.action.FOUND"

    new-instance v1, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$DeviceFoundHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;)V

    const-string/jumbo v0, "android.bluetooth.device.action.DISAPPEARED"

    new-instance v1, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;)V

    const-string/jumbo v0, "android.bluetooth.device.action.NAME_CHANGED"

    new-instance v1, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$NameChangedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;)V

    const-string/jumbo v0, "android.bluetooth.device.action.ALIAS_CHANGED"

    new-instance v1, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$NameChangedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;)V

    const-string/jumbo v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    new-instance v1, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;)V

    const-string/jumbo v0, "android.bluetooth.device.action.PAIRING_CANCEL"

    new-instance v1, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$PairingCancelHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$PairingCancelHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;)V

    const-string/jumbo v0, "android.bluetooth.device.action.CLASS_CHANGED"

    new-instance v1, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$ClassChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$ClassChangedHandler;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$ClassChangedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;)V

    const-string/jumbo v0, "android.bluetooth.device.action.UUID"

    new-instance v1, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$UuidChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$UuidChangedHandler;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$UuidChangedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;)V

    const-string/jumbo v0, "android.intent.action.DOCK_EVENT"

    new-instance v1, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$DockEventHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$DockEventHandler;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$DockEventHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;)V

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private addHandler(Ljava/lang/String;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private dispatchConnectionStateChanged(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 4

    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/bluetooth/BluetoothCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/flymexxlib/bluetooth/BluetoothCallback;->onConnectionStateChanged(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method private setDefaultBtName()V
    .locals 4

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10400e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "BluetoothEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "custom bluetooth name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method addProfileHandler(Ljava/lang/String;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method dispatchDeviceAdded(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;)V
    .locals 4

    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/bluetooth/BluetoothCallback;

    invoke-interface {v0, p1}, Lcom/android/flymexxlib/bluetooth/BluetoothCallback;->onDeviceAdded(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method readPairedDevices()Z
    .locals 8

    iget-object v5, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    return v5

    :cond_0
    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v5, v2}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v6, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method public registerCallback(Lcom/android/flymexxlib/bluetooth/BluetoothCallback;)V
    .locals 2

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method registerProfileIntentReceiver()V
    .locals 5

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method setProfileManager(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    return-void
.end method

.method public unregisterCallback(Lcom/android/flymexxlib/bluetooth/BluetoothCallback;)V
    .locals 2

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
