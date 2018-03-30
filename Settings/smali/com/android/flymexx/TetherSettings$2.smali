.class Lcom/android/flymexx/TetherSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/TetherSettings;->registerConfigureReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/flymexx/TetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/TetherSettings$2;->this$0:Lcom/android/flymexx/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Hotspot_PreConfigure_Response"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PreConfigure_result"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/flymexx/TetherSettings$2;->this$0:Lcom/android/flymexx/TetherSettings;

    iget-object v3, p0, Lcom/android/flymexx/TetherSettings$2;->this$0:Lcom/android/flymexx/TetherSettings;

    invoke-static {v3}, Lcom/android/flymexx/TetherSettings;->-get3(Lcom/android/flymexx/TetherSettings;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/flymexx/TetherSettings;->-wrap0(Lcom/android/flymexx/TetherSettings;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/flymexx/TetherSettings$2;->this$0:Lcom/android/flymexx/TetherSettings;

    invoke-static {v2}, Lcom/android/flymexx/TetherSettings;->-get4(Lcom/android/flymexx/TetherSettings;)Lcom/android/flymexx/wifi/WifiApEnabler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/flymexx/wifi/WifiApEnabler;->setChecked(Z)V

    goto :goto_0
.end method
