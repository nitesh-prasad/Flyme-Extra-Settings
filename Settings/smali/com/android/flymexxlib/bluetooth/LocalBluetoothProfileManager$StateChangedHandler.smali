.class Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"

# interfaces
.implements Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateChangedHandler"
.end annotation


# instance fields
.field final mProfile:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;

.field final synthetic this$0:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v3}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->-get0(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v3, "LocalBluetoothProfileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "StateChangedHandler found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v3}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->-get0(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v4}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;->-get1(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3, v4, v5, p3}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    :cond_0
    const-string/jumbo v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v1, :cond_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string/jumbo v3, "LocalBluetoothProfileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to connect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " device"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v3, v1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;I)V

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->refresh()V

    return-void
.end method
