.class Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$NameChangedHandler;
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
    name = "NameChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$NameChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$NameChangedHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$NameChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v0}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-get2(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;->onDeviceNameUpdated(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
