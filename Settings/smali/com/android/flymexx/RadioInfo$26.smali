.class Lcom/android/flymexx/RadioInfo$26;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/RadioInfo;->updatePingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/RadioInfo;

.field final synthetic val$updatePingResults:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/flymexx/RadioInfo;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/RadioInfo$26;->this$0:Lcom/android/flymexx/RadioInfo;

    iput-object p2, p0, Lcom/android/flymexx/RadioInfo$26;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$26;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0}, Lcom/android/flymexx/RadioInfo;->-wrap1(Lcom/android/flymexx/RadioInfo;)V

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$26;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0}, Lcom/android/flymexx/RadioInfo;->-get3(Lcom/android/flymexx/RadioInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/RadioInfo$26;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
