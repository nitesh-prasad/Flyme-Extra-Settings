.class Lcom/android/flymexxlib/wifi/WifiTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexxlib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexxlib/wifi/WifiTracker;


# direct methods
.method constructor <init>(Lcom/android/flymexxlib/wifi/WifiTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexxlib/wifi/WifiTracker$1;->this$0:Lcom/android/flymexxlib/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/flymexxlib/wifi/WifiTracker$1;->this$0:Lcom/android/flymexxlib/wifi/WifiTracker;

    const-string/jumbo v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/flymexxlib/wifi/WifiTracker;->-wrap3(Lcom/android/flymexxlib/wifi/WifiTracker;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/flymexxlib/wifi/WifiTracker$1;->this$0:Lcom/android/flymexxlib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/android/flymexxlib/wifi/WifiTracker;->-get5(Lcom/android/flymexxlib/wifi/WifiTracker;)Lcom/android/flymexxlib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/flymexxlib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/android/flymexxlib/wifi/WifiTracker$1;->this$0:Lcom/android/flymexxlib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/android/flymexxlib/wifi/WifiTracker;->-get0(Lcom/android/flymexxlib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lcom/android/flymexxlib/wifi/WifiTracker$1;->this$0:Lcom/android/flymexxlib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/android/flymexxlib/wifi/WifiTracker;->-get3(Lcom/android/flymexxlib/wifi/WifiTracker;)Lcom/android/flymexxlib/wifi/WifiTracker$MainHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/flymexxlib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/android/flymexxlib/wifi/WifiTracker$1;->this$0:Lcom/android/flymexxlib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/android/flymexxlib/wifi/WifiTracker;->-get5(Lcom/android/flymexxlib/wifi/WifiTracker;)Lcom/android/flymexxlib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/flymexxlib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/android/flymexxlib/wifi/WifiTracker$1;->this$0:Lcom/android/flymexxlib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/android/flymexxlib/wifi/WifiTracker;->-get5(Lcom/android/flymexxlib/wifi/WifiTracker;)Lcom/android/flymexxlib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/flymexxlib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "Auth_password_wrong"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/flymexxlib/R$string;->wifi_auth_password_wrong:I

    invoke-static {p1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
