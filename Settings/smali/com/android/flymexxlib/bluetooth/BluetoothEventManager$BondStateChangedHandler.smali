.class Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;
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
    name = "BondStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)V

    return-void
.end method

.method private showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v1, "BluetoothEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showUnbondMessage: Not displaying any message for reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    sget v0, Lcom/android/flymexxlib/R$string;->bluetooth_pairing_pin_error_message:I

    :goto_0
    invoke-static {p1, p2, v0}, Lcom/android/flymexxlib/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :pswitch_2
    sget v0, Lcom/android/flymexxlib/R$string;->bluetooth_pairing_rejected_error_message:I

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/android/flymexxlib/R$string;->bluetooth_pairing_device_down_error_message:I

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/android/flymexxlib/R$string;->bluetooth_pairing_error_message:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 9

    const/high16 v8, -0x80000000

    if-nez p3, :cond_0

    const-string/jumbo v5, "BluetoothEventManager"

    const-string/jumbo v6, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v5, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-get2(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CachedBluetoothDevice for device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not found, calling readPairedDevices()."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-virtual {v5}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-get2(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    const-string/jumbo v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Got bonding state changed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", but we have no record of that device."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-get2(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v6}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-get4(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v7}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-get6(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v7

    invoke-virtual {v5, v6, v7, p3}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    iget-object v5, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-virtual {v5, v1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;)V

    :cond_2
    iget-object v5, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-get0(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-get0(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/flymexxlib/bluetooth/BluetoothCallback;

    invoke-interface {v2, v1, v0}, Lcom/android/flymexxlib/bluetooth/BluetoothCallback;->onDeviceBondStateChanged(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_3
    monitor-exit v6

    invoke-virtual {v1, v0}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->onBondingStateChanged(I)V

    const/16 v5, 0xa

    if-ne v0, v5, :cond_4

    const-string/jumbo v5, "android.bluetooth.device.extra.REASON"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5, v4}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_4
    return-void
.end method
