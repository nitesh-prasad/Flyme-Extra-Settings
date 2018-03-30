.class final Lcom/android/flymexx/bluetooth/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/bluetooth/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothManagerInitialized(Landroid/content/Context;Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;)V
    .locals 2

    invoke-virtual {p2}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    move-result-object v0

    new-instance v1, Lcom/android/flymexx/bluetooth/DockService$DockBluetoothCallback;

    invoke-direct {v1, p1}, Lcom/android/flymexx/bluetooth/DockService$DockBluetoothCallback;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/flymexxlib/bluetooth/BluetoothCallback;)V

    invoke-static {}, Lcom/android/flymexx/bluetooth/Utils;->-get0()Lcom/android/flymexxlib/bluetooth/Utils$ErrorListener;

    move-result-object v0

    invoke-static {v0}, Lcom/android/flymexxlib/bluetooth/Utils;->setErrorListener(Lcom/android/flymexxlib/bluetooth/Utils$ErrorListener;)V

    return-void
.end method
