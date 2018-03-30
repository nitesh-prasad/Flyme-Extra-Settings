.class Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanningStateChangedHandler"
.end annotation


# instance fields
.field private final mStarted:Z

.field final synthetic this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;


# direct methods
.method constructor <init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v2}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-get0(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v2}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-get0(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/bluetooth/BluetoothCallback;

    iget-boolean v2, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-interface {v0, v2}, Lcom/android/flymexxlib/bluetooth/BluetoothCallback;->onScanningStateChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    iget-object v2, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v2}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-get2(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-virtual {v2, v3}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;->onScanningStateChanged(Z)V

    return-void
.end method
