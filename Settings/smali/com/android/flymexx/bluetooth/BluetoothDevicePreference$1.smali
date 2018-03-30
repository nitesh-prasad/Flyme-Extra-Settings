.class Lcom/android/flymexx/bluetooth/BluetoothDevicePreference$1;
.super Ljava/lang/Object;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->askDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;

    invoke-static {v0}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->-get0(Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->disconnect()V

    return-void
.end method
