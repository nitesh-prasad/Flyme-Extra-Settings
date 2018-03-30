.class Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$DeviceFoundHandler;
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
    name = "DeviceFoundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$DeviceFoundHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    const-string/jumbo v4, "android.bluetooth.device.extra.RSSI"

    const/16 v5, -0x8000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v3

    const-string/jumbo v4, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothClass;

    const-string/jumbo v4, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v4}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-get2(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v4}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-get2(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-get4(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v6}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-get6(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v6

    invoke-virtual {v4, v5, v6, p3}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    const-string/jumbo v4, "BluetoothEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DeviceFoundHandler created new CachedBluetoothDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-virtual {v4, v1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;)V

    :cond_0
    invoke-virtual {v1, v3}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->setRssi(S)V

    invoke-virtual {v1, v0}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    invoke-virtual {v1, v2}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->setNewName(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    return-void
.end method
