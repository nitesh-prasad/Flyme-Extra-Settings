.class Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/flymexx/TetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/flymexx/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexx/TetherSettings;Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/flymexx/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/16 v10, 0xb

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "availableArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string/jumbo v5, "activeArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v5, "erroredArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v8, p0, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/flymexx/TetherSettings;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-static {v8, v5, v6, v7}, Lcom/android/flymexx/TetherSettings;->-wrap2(Lcom/android/flymexx/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/flymexx/TetherSettings;

    invoke-static {v5}, Lcom/android/flymexx/TetherSettings;->-get5(Lcom/android/flymexx/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    if-ne v5, v10, :cond_0

    iget-object v5, p0, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/flymexx/TetherSettings;

    invoke-static {v5}, Lcom/android/flymexx/TetherSettings;->-get2(Lcom/android/flymexx/TetherSettings;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/flymexx/TetherSettings;

    invoke-static {v5, v9}, Lcom/android/flymexx/TetherSettings;->-set2(Lcom/android/flymexx/TetherSettings;Z)Z

    const-string/jumbo v5, "TetheringSettings"

    const-string/jumbo v6, "Restarting WifiAp due to prior config change."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/flymexx/TetherSettings;

    invoke-static {v5, v9}, Lcom/android/flymexx/TetherSettings;->-wrap0(Lcom/android/flymexx/TetherSettings;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "wifi_state"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v10, :cond_0

    iget-object v5, p0, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/flymexx/TetherSettings;

    invoke-static {v5}, Lcom/android/flymexx/TetherSettings;->-get2(Lcom/android/flymexx/TetherSettings;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/flymexx/TetherSettings;

    invoke-static {v5, v9}, Lcom/android/flymexx/TetherSettings;->-set2(Lcom/android/flymexx/TetherSettings;Z)Z

    const-string/jumbo v5, "TetheringSettings"

    const-string/jumbo v6, "Restarting WifiAp due to prior config change."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/flymexx/TetherSettings;

    invoke-static {v5, v9}, Lcom/android/flymexx/TetherSettings;->-wrap0(Lcom/android/flymexx/TetherSettings;I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/flymexx/TetherSettings;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/flymexx/TetherSettings;->-set1(Lcom/android/flymexx/TetherSettings;Z)Z

    iget-object v5, p0, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/flymexx/TetherSettings;

    invoke-static {v5}, Lcom/android/flymexx/TetherSettings;->-wrap1(Lcom/android/flymexx/TetherSettings;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/flymexx/TetherSettings;

    invoke-static {v5, v9}, Lcom/android/flymexx/TetherSettings;->-set1(Lcom/android/flymexx/TetherSettings;Z)Z

    iget-object v5, p0, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/flymexx/TetherSettings;

    invoke-static {v5}, Lcom/android/flymexx/TetherSettings;->-wrap1(Lcom/android/flymexx/TetherSettings;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/flymexx/TetherSettings;

    const-string/jumbo v6, "connected"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/flymexx/TetherSettings;->-set3(Lcom/android/flymexx/TetherSettings;Z)Z

    iget-object v5, p0, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/flymexx/TetherSettings;

    invoke-static {v5}, Lcom/android/flymexx/TetherSettings;->-wrap1(Lcom/android/flymexx/TetherSettings;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/flymexx/TetherSettings;

    invoke-static {v5}, Lcom/android/flymexx/TetherSettings;->-get0(Lcom/android/flymexx/TetherSettings;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x80000000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/flymexx/TetherSettings;

    invoke-static {v5}, Lcom/android/flymexx/TetherSettings;->-wrap1(Lcom/android/flymexx/TetherSettings;)V

    goto/16 :goto_0

    :sswitch_0
    iget-object v5, p0, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/flymexx/TetherSettings;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/android/flymexx/TetherSettings;->-wrap0(Lcom/android/flymexx/TetherSettings;I)V

    iget-object v5, p0, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/flymexx/TetherSettings;

    invoke-static {v5, v9}, Lcom/android/flymexx/TetherSettings;->-set0(Lcom/android/flymexx/TetherSettings;Z)Z

    goto :goto_1

    :sswitch_1
    iget-object v5, p0, Lcom/android/flymexx/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/flymexx/TetherSettings;

    invoke-static {v5, v9}, Lcom/android/flymexx/TetherSettings;->-set0(Lcom/android/flymexx/TetherSettings;Z)Z

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
