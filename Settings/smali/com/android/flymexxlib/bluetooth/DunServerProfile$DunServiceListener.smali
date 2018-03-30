.class final Lcom/android/flymexxlib/bluetooth/DunServerProfile$DunServiceListener;
.super Ljava/lang/Object;
.source "DunServerProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexxlib/bluetooth/DunServerProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DunServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexxlib/bluetooth/DunServerProfile;


# direct methods
.method private constructor <init>(Lcom/android/flymexxlib/bluetooth/DunServerProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexxlib/bluetooth/DunServerProfile$DunServiceListener;->this$0:Lcom/android/flymexxlib/bluetooth/DunServerProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexxlib/bluetooth/DunServerProfile;Lcom/android/flymexxlib/bluetooth/DunServerProfile$DunServiceListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexxlib/bluetooth/DunServerProfile$DunServiceListener;-><init>(Lcom/android/flymexxlib/bluetooth/DunServerProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    invoke-static {}, Lcom/android/flymexxlib/bluetooth/DunServerProfile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DunServerProfile"

    const-string/jumbo v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/DunServerProfile$DunServiceListener;->this$0:Lcom/android/flymexxlib/bluetooth/DunServerProfile;

    check-cast p2, Landroid/bluetooth/BluetoothDun;

    invoke-static {v0, p2}, Lcom/android/flymexxlib/bluetooth/DunServerProfile;->-set1(Lcom/android/flymexxlib/bluetooth/DunServerProfile;Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothDun;

    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/DunServerProfile$DunServiceListener;->this$0:Lcom/android/flymexxlib/bluetooth/DunServerProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/flymexxlib/bluetooth/DunServerProfile;->-set0(Lcom/android/flymexxlib/bluetooth/DunServerProfile;Z)Z

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    invoke-static {}, Lcom/android/flymexxlib/bluetooth/DunServerProfile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DunServerProfile"

    const-string/jumbo v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/flymexxlib/bluetooth/DunServerProfile$DunServiceListener;->this$0:Lcom/android/flymexxlib/bluetooth/DunServerProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/flymexxlib/bluetooth/DunServerProfile;->-set0(Lcom/android/flymexxlib/bluetooth/DunServerProfile;Z)Z

    return-void
.end method
