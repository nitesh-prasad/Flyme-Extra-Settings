.class final Lcom/android/flymexxlib/bluetooth/A2dpProfile$A2dpServiceListener;
.super Ljava/lang/Object;
.source "A2dpProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexxlib/bluetooth/A2dpProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "A2dpServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexxlib/bluetooth/A2dpProfile;


# direct methods
.method private constructor <init>(Lcom/android/flymexxlib/bluetooth/A2dpProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexxlib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/flymexxlib/bluetooth/A2dpProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexxlib/bluetooth/A2dpProfile;Lcom/android/flymexxlib/bluetooth/A2dpProfile$A2dpServiceListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexxlib/bluetooth/A2dpProfile$A2dpServiceListener;-><init>(Lcom/android/flymexxlib/bluetooth/A2dpProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6

    invoke-static {}, Lcom/android/flymexxlib/bluetooth/A2dpProfile;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "A2dpProfile"

    const-string/jumbo v4, "Bluetooth service connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/flymexxlib/bluetooth/A2dpProfile;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v3, p2}, Lcom/android/flymexxlib/bluetooth/A2dpProfile;->-set1(Lcom/android/flymexxlib/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/flymexxlib/bluetooth/A2dpProfile;

    invoke-static {v3}, Lcom/android/flymexxlib/bluetooth/A2dpProfile;->-get4(Lcom/android/flymexxlib/bluetooth/A2dpProfile;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/flymexxlib/bluetooth/A2dpProfile;

    invoke-static {v3}, Lcom/android/flymexxlib/bluetooth/A2dpProfile;->-get1(Lcom/android/flymexxlib/bluetooth/A2dpProfile;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v3, "A2dpProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "A2dpProfile found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/flymexxlib/bluetooth/A2dpProfile;

    invoke-static {v3}, Lcom/android/flymexxlib/bluetooth/A2dpProfile;->-get1(Lcom/android/flymexxlib/bluetooth/A2dpProfile;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexxlib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/flymexxlib/bluetooth/A2dpProfile;

    invoke-static {v4}, Lcom/android/flymexxlib/bluetooth/A2dpProfile;->-get2(Lcom/android/flymexxlib/bluetooth/A2dpProfile;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/flymexxlib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/flymexxlib/bluetooth/A2dpProfile;

    invoke-static {v5}, Lcom/android/flymexxlib/bluetooth/A2dpProfile;->-get3(Lcom/android/flymexxlib/bluetooth/A2dpProfile;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    :cond_1
    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/flymexxlib/bluetooth/A2dpProfile;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;I)V

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/flymexxlib/bluetooth/A2dpProfile;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/flymexxlib/bluetooth/A2dpProfile;->-set0(Lcom/android/flymexxlib/bluetooth/A2dpProfile;Z)Z

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    invoke-static {}, Lcom/android/flymexxlib/bluetooth/A2dpProfile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "A2dpProfile"

    const-string/jumbo v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/flymexxlib/bluetooth/A2dpProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/flymexxlib/bluetooth/A2dpProfile;->-set0(Lcom/android/flymexxlib/bluetooth/A2dpProfile;Z)Z

    return-void
.end method
