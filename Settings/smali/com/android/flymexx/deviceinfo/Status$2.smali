.class Lcom/android/flymexx/deviceinfo/Status$2;
.super Landroid/content/BroadcastReceiver;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/flymexx/deviceinfo/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/deviceinfo/Status$2;->this$0:Lcom/android/flymexx/deviceinfo/Status;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/flymexx/deviceinfo/Status;->-get0()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/deviceinfo/Status$2;->this$0:Lcom/android/flymexx/deviceinfo/Status;

    invoke-static {v1}, Lcom/android/flymexx/deviceinfo/Status;->-get3(Lcom/android/flymexx/deviceinfo/Status;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
