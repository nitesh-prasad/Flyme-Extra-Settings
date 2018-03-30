.class Lcom/android/flymexx/bluetooth/BluetoothSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;
.implements Lcom/android/flymexxlib/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mBluetoothManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mSummaryLoader:Lcom/android/flymexx/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/flymexx/dashboard/SummaryLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/flymexx/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings$SummaryProvider;->mBluetoothManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    iput-object p1, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings$SummaryProvider;->mSummaryLoader:Lcom/android/flymexx/dashboard/SummaryLoader;

    return-void
.end method

.method private getSummary()Ljava/lang/CharSequence;
    .locals 2

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings$SummaryProvider;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings$SummaryProvider;->mEnabled:Z

    if-nez v0, :cond_0

    const v0, 0x7f0c0e62

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings$SummaryProvider;->mConnected:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0c002f

    goto :goto_0

    :cond_1
    const v0, 0x7f0c002c

    goto :goto_0
.end method


# virtual methods
.method public onBluetoothStateChanged(I)V
    .locals 2

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings$SummaryProvider;->mEnabled:Z

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings$SummaryProvider;->mSummaryLoader:Lcom/android/flymexx/dashboard/SummaryLoader;

    invoke-direct {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings$SummaryProvider;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/flymexx/dashboard/SummaryLoader;->setSummary(Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConnectionStateChanged(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings$SummaryProvider;->mConnected:Z

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings$SummaryProvider;->mSummaryLoader:Lcom/android/flymexx/dashboard/SummaryLoader;

    invoke-direct {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings$SummaryProvider;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/flymexx/dashboard/SummaryLoader;->setSummary(Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDeviceAdded(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public setListening(Z)V
    .locals 3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings$SummaryProvider;->mEnabled:Z

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings$SummaryProvider;->mConnected:Z

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings$SummaryProvider;->mSummaryLoader:Lcom/android/flymexx/dashboard/SummaryLoader;

    invoke-direct {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings$SummaryProvider;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/flymexx/dashboard/SummaryLoader;->setSummary(Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings$SummaryProvider;->mBluetoothManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/flymexxlib/bluetooth/BluetoothCallback;)V

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings$SummaryProvider;->mBluetoothManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/flymexxlib/bluetooth/BluetoothCallback;)V

    goto :goto_1
.end method
