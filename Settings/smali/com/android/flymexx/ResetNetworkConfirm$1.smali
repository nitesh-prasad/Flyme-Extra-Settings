.class Lcom/android/flymexx/ResetNetworkConfirm$1;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/flymexx/ResetNetworkConfirm;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/ResetNetworkConfirm$1;->this$0:Lcom/android/flymexx/ResetNetworkConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    invoke-static {}, Lcom/android/flymexx/Utils;->isMonkeyRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/flymexx/ResetNetworkConfirm$1;->this$0:Lcom/android/flymexx/ResetNetworkConfirm;

    invoke-virtual {v8}, Lcom/android/flymexx/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v8, "connectivity"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->factoryReset()V

    :cond_1
    const-string/jumbo v8, "wifi"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->factoryReset()V

    :cond_2
    const-string/jumbo v8, "phone"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_3

    iget-object v8, p0, Lcom/android/flymexx/ResetNetworkConfirm$1;->this$0:Lcom/android/flymexx/ResetNetworkConfirm;

    invoke-static {v8}, Lcom/android/flymexx/ResetNetworkConfirm;->-get0(Lcom/android/flymexx/ResetNetworkConfirm;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/telephony/TelephonyManager;->factoryReset(I)V

    :cond_3
    const-string/jumbo v8, "netpolicy"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicyManager;

    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/android/flymexx/ResetNetworkConfirm$1;->this$0:Lcom/android/flymexx/ResetNetworkConfirm;

    invoke-static {v8}, Lcom/android/flymexx/ResetNetworkConfirm;->-get0(Lcom/android/flymexx/ResetNetworkConfirm;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v8, "bluetooth"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    :cond_5
    invoke-static {v3}, Lcom/android/ims/ImsManager;->factoryReset(Landroid/content/Context;)V

    const v8, 0x7f0c0741

    const/4 v9, 0x0

    invoke-static {v3, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    return-void
.end method
