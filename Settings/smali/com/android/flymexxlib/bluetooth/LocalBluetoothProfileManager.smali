.class public final Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;,
        Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;,
        Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
    }
.end annotation


# instance fields
.field private mA2dpProfile:Lcom/android/flymexxlib/bluetooth/A2dpProfile;

.field private mA2dpSinkProfile:Lcom/android/flymexxlib/bluetooth/A2dpSinkProfile;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

.field private mDunProfile:Lcom/android/flymexxlib/bluetooth/DunServerProfile;

.field private final mEventManager:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

.field private mHeadsetProfile:Lcom/android/flymexxlib/bluetooth/HeadsetProfile;

.field private mHfpClientProfile:Lcom/android/flymexxlib/bluetooth/HfpClientProfile;

.field private final mHidProfile:Lcom/android/flymexxlib/bluetooth/HidProfile;

.field private final mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

.field private mMapProfile:Lcom/android/flymexxlib/bluetooth/MapProfile;

.field private mOppProfile:Lcom/android/flymexxlib/bluetooth/OppProfile;

.field private final mPanProfile:Lcom/android/flymexxlib/bluetooth/PanProfile;

.field private mPbapClientProfile:Lcom/android/flymexxlib/bluetooth/PbapClientProfile;

.field private final mPbapProfile:Lcom/android/flymexxlib/bluetooth/PbapServerProfile;

.field private final mProfileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsePbapPce:Z


# direct methods
.method static synthetic -get0(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    iput-object p1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    iput-object p3, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    iput-object p4, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/flymexxlib/R$bool;->enable_pbap_pce_profile:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mUsePbapPce:Z

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, p0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->setProfileManager(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;)V

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-virtual {v1, p0}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->setProfileManager(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;)V

    invoke-virtual {p2}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    :cond_0
    new-instance v1, Lcom/android/flymexxlib/bluetooth/HidProfile;

    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/android/flymexxlib/bluetooth/HidProfile;-><init>(Landroid/content/Context;Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/flymexxlib/bluetooth/HidProfile;

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/flymexxlib/bluetooth/HidProfile;

    const-string/jumbo v2, "HID"

    const-string/jumbo v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/flymexxlib/bluetooth/PanProfile;

    invoke-direct {v1, p1}, Lcom/android/flymexxlib/bluetooth/PanProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/flymexxlib/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/flymexxlib/bluetooth/PanProfile;

    const-string/jumbo v2, "PAN"

    const-string/jumbo v3, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->addPanProfile(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "LocalBluetoothProfileManager"

    const-string/jumbo v2, "Adding local MAP profile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/flymexxlib/bluetooth/MapProfile;

    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    iget-object v4, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/android/flymexxlib/bluetooth/MapProfile;-><init>(Landroid/content/Context;Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/flymexxlib/bluetooth/MapProfile;

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/flymexxlib/bluetooth/MapProfile;

    const-string/jumbo v2, "MAP"

    const-string/jumbo v3, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ro.bluetooth.dun"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/flymexxlib/bluetooth/DunServerProfile;

    invoke-direct {v1, p1}, Lcom/android/flymexxlib/bluetooth/DunServerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mDunProfile:Lcom/android/flymexxlib/bluetooth/DunServerProfile;

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mDunProfile:Lcom/android/flymexxlib/bluetooth/DunServerProfile;

    const-string/jumbo v2, "DUN Server"

    const-string/jumbo v3, "codeaurora.bluetooth.dun.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lcom/android/flymexxlib/bluetooth/PbapServerProfile;

    invoke-direct {v1, p1}, Lcom/android/flymexxlib/bluetooth/PbapServerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/flymexxlib/bluetooth/PbapServerProfile;

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/flymexxlib/bluetooth/PbapServerProfile;

    const-string/jumbo v2, "PBAP Server"

    const-string/jumbo v3, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "LocalBluetoothProfileManager"

    const-string/jumbo v2, "LocalBluetoothProfileManager construction complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private addPanProfile(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;-><init>(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;)V

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addProfile(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;)V

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addServiceListener(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method callServiceConnectedListeners()V
    .locals 3

    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    invoke-interface {v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceConnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method callServiceDisconnectedListeners()V
    .locals 3

    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    invoke-interface {v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceDisconnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getA2dpProfile()Lcom/android/flymexxlib/bluetooth/A2dpProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/flymexxlib/bluetooth/A2dpProfile;

    return-object v0
.end method

.method public getA2dpSinkProfile()Lcom/android/flymexxlib/bluetooth/A2dpSinkProfile;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/flymexxlib/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/flymexxlib/bluetooth/A2dpSinkProfile;

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/A2dpSinkProfile;->isProfileReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/flymexxlib/bluetooth/A2dpSinkProfile;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getHeadsetProfile()Lcom/android/flymexxlib/bluetooth/HeadsetProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/flymexxlib/bluetooth/HeadsetProfile;

    return-object v0
.end method

.method public getMapProfile()Lcom/android/flymexxlib/bluetooth/MapProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/flymexxlib/bluetooth/MapProfile;

    return-object v0
.end method

.method public getPbapClientProfile()Lcom/android/flymexxlib/bluetooth/PbapClientProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/flymexxlib/bluetooth/PbapClientProfile;

    return-object v0
.end method

.method public getPbapProfile()Lcom/android/flymexxlib/bluetooth/PbapServerProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/flymexxlib/bluetooth/PbapServerProfile;

    return-object v0
.end method

.method public getProfileByName(Ljava/lang/String;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;

    return-object v0
.end method

.method public declared-synchronized isManagerReady()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/flymexxlib/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/flymexxlib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/flymexxlib/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    :cond_2
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeServiceListener(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method setBluetoothStateOn()V
    .locals 2

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    :cond_0
    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    return-void
.end method

.method updateLocalProfiles([Landroid/os/ParcelUuid;)V
    .locals 4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/flymexxlib/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Adding local A2DP SRC profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/flymexxlib/bluetooth/A2dpProfile;

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/flymexxlib/bluetooth/A2dpProfile;-><init>(Landroid/content/Context;Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/flymexxlib/bluetooth/A2dpProfile;

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/flymexxlib/bluetooth/A2dpProfile;

    const-string/jumbo v1, "A2DP"

    const-string/jumbo v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/flymexxlib/bluetooth/A2dpSinkProfile;

    if-nez v0, :cond_1

    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Adding local A2DP Sink profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/flymexxlib/bluetooth/A2dpSinkProfile;

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/flymexxlib/bluetooth/A2dpSinkProfile;-><init>(Landroid/content/Context;Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/flymexxlib/bluetooth/A2dpSinkProfile;

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/flymexxlib/bluetooth/A2dpSinkProfile;

    const-string/jumbo v1, "A2DPSink"

    const-string/jumbo v2, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_2
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/flymexxlib/bluetooth/HeadsetProfile;

    if-nez v0, :cond_3

    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Adding local HEADSET profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/flymexxlib/bluetooth/HeadsetProfile;

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/flymexxlib/bluetooth/HeadsetProfile;-><init>(Landroid/content/Context;Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/flymexxlib/bluetooth/HeadsetProfile;

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/flymexxlib/bluetooth/HeadsetProfile;

    const-string/jumbo v1, "HEADSET"

    const-string/jumbo v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/flymexxlib/bluetooth/HfpClientProfile;

    if-nez v0, :cond_4

    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Adding local HfpClient profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/flymexxlib/bluetooth/HfpClientProfile;

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/flymexxlib/bluetooth/HfpClientProfile;-><init>(Landroid/content/Context;Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/flymexxlib/bluetooth/HfpClientProfile;

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/flymexxlib/bluetooth/HfpClientProfile;

    const-string/jumbo v1, "HEADSET_CLIENT"

    const-string/jumbo v2, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/flymexxlib/bluetooth/OppProfile;

    if-nez v0, :cond_5

    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Adding local OPP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/flymexxlib/bluetooth/OppProfile;

    invoke-direct {v0}, Lcom/android/flymexxlib/bluetooth/OppProfile;-><init>()V

    iput-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/flymexxlib/bluetooth/OppProfile;

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    const-string/jumbo v1, "OPP"

    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/flymexxlib/bluetooth/OppProfile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_4
    iget-boolean v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mUsePbapPce:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/flymexxlib/bluetooth/PbapClientProfile;

    if-nez v0, :cond_6

    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Adding local PBAP Client profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/flymexxlib/bluetooth/PbapClientProfile;

    iget-object v1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/flymexxlib/bluetooth/PbapClientProfile;-><init>(Landroid/content/Context;Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/flymexxlib/bluetooth/PbapClientProfile;

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/flymexxlib/bluetooth/PbapClientProfile;

    const-string/jumbo v1, "PbapClient"

    const-string/jumbo v2, "android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->registerProfileIntentReceiver()V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/flymexxlib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Warning: A2DP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/flymexxlib/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Warning: A2DP Sink profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/flymexxlib/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Warning: HEADSET profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/flymexxlib/bluetooth/HfpClientProfile;

    if-eqz v0, :cond_b

    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Warning: Hfp Client profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_b
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Handsfree Uuid not found."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_c
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/flymexxlib/bluetooth/OppProfile;

    if-eqz v0, :cond_5

    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Warning: OPP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_d
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/flymexxlib/bluetooth/PbapClientProfile;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Warning: PBAP Client profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method declared-synchronized updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "[",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;",
            ">;Z",
            "Landroid/bluetooth/BluetoothDevice;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x2

    monitor-enter p0

    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v0, "LocalBluetoothProfileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current Profiles"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/flymexxlib/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/flymexxlib/bluetooth/HeadsetProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/flymexxlib/bluetooth/HeadsetProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/flymexxlib/bluetooth/HfpClientProfile;

    if-eqz v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/flymexxlib/bluetooth/HfpClientProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/flymexxlib/bluetooth/HfpClientProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_4
    sget-object v0, Lcom/android/flymexxlib/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/flymexxlib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/flymexxlib/bluetooth/A2dpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/flymexxlib/bluetooth/A2dpProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_5
    sget-object v0, Lcom/android/flymexxlib/bluetooth/A2dpSinkProfile;->SRC_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/flymexxlib/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/flymexxlib/bluetooth/A2dpSinkProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/flymexxlib/bluetooth/A2dpSinkProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/flymexxlib/bluetooth/OppProfile;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/flymexxlib/bluetooth/OppProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/flymexxlib/bluetooth/OppProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_7
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/flymexxlib/bluetooth/HidProfile;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/flymexxlib/bluetooth/HidProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/flymexxlib/bluetooth/HidProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_9
    if-eqz p5, :cond_a

    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Valid PAN-NAP connection exists."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/flymexxlib/bluetooth/PanProfile;

    if-eqz v0, :cond_f

    :goto_0
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/flymexxlib/bluetooth/PanProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/flymexxlib/bluetooth/PanProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_b
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/flymexxlib/bluetooth/MapProfile;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/flymexxlib/bluetooth/MapProfile;

    invoke-virtual {v0, p6}, Lcom/android/flymexxlib/bluetooth/MapProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v3, :cond_c

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/flymexxlib/bluetooth/MapProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/flymexxlib/bluetooth/MapProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/flymexxlib/bluetooth/MapProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, p6, v1}, Lcom/android/flymexxlib/bluetooth/MapProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    :cond_c
    iget-boolean v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mUsePbapPce:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/flymexxlib/bluetooth/PbapClientProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/flymexxlib/bluetooth/PbapClientProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/flymexxlib/bluetooth/PbapServerProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/flymexxlib/bluetooth/PbapServerProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/flymexxlib/bluetooth/PbapServerProfile;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/flymexxlib/bluetooth/PbapServerProfile;

    invoke-virtual {v0, p6}, Lcom/android/flymexxlib/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v3, :cond_e

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/flymexxlib/bluetooth/PbapServerProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/flymexxlib/bluetooth/PbapServerProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/flymexxlib/bluetooth/PbapServerProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, p6, v1}, Lcom/android/flymexxlib/bluetooth/PbapServerProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    :cond_e
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "New Profiles"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_f
    if-eqz p5, :cond_b

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
