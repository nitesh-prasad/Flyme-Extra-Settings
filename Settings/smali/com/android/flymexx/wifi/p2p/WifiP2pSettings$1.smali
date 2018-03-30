.class Lcom/android/flymexx/wifi/p2p/WifiP2pSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;

    const-string/jumbo v7, "wifi_p2p_state"

    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1

    :goto_0
    invoke-static {v6, v4}, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;->-set4(Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;Z)Z

    iget-object v4, p0, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;

    invoke-static {v4}, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;->-wrap0(Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v5, p0, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;

    const-string/jumbo v4, "wifiP2pDeviceList"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-static {v5, v4}, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;->-set1(Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDeviceList;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, p0, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;

    invoke-static {v4}, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;->-wrap1(Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v6, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v4, p0, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;

    invoke-static {v4}, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;->-get4(Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    if-nez v4, :cond_4

    return-void

    :cond_4
    const-string/jumbo v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    const-string/jumbo v4, "wifiP2pInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;

    iget-boolean v5, v3, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    invoke-static {v4, v5}, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;->-set0(Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;Z)Z

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;

    invoke-static {v4}, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;->-get2(Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;

    invoke-static {v4}, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;->-wrap2(Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;)V

    goto :goto_2

    :cond_7
    const-string/jumbo v6, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v5, p0, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;

    const-string/jumbo v4, "wifiP2pDevice"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v5, v4}, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;->-set3(Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, p0, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;

    invoke-static {v4}, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;->-wrap3(Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;)V

    goto :goto_1

    :cond_8
    const-string/jumbo v6, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string/jumbo v6, "discoveryState"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v8, :cond_9

    iget-object v5, p0, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;

    invoke-static {v5, v4}, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;->-wrap4(Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;Z)V

    goto/16 :goto_1

    :cond_9
    iget-object v4, p0, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;

    invoke-static {v4, v5}, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;->-wrap4(Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;Z)V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v4, "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;

    invoke-static {v4}, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;->-get4(Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;

    invoke-static {v4}, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;->-get4(Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;

    invoke-static {v5}, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;->-get0(Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    iget-object v6, p0, Lcom/android/flymexx/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/flymexx/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPersistentGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;)V

    goto/16 :goto_1
.end method
