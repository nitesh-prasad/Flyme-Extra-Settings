.class Lcom/android/flymexx/wfd/WifiDisplaySettings$1;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/flymexx/wfd/WifiDisplaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/flymexx/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/flymexx/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/flymexx/wfd/WifiDisplaySettings;->-get5(Lcom/android/flymexx/wfd/WifiDisplaySettings;)I

    move-result v0

    iget-object v1, p0, Lcom/android/flymexx/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/flymexx/wfd/WifiDisplaySettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/flymexx/wfd/WifiDisplaySettings;->-set4(Lcom/android/flymexx/wfd/WifiDisplaySettings;I)I

    iget-object v1, p0, Lcom/android/flymexx/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/flymexx/wfd/WifiDisplaySettings;

    invoke-static {v1, v0}, Lcom/android/flymexx/wfd/WifiDisplaySettings;->-wrap8(Lcom/android/flymexx/wfd/WifiDisplaySettings;I)V

    return-void
.end method
