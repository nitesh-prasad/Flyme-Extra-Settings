.class Lcom/android/flymexx/applications/RunningServices$1;
.super Ljava/lang/Object;
.source "RunningServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/applications/RunningServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/applications/RunningServices;


# direct methods
.method constructor <init>(Lcom/android/flymexx/applications/RunningServices;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/applications/RunningServices$1;->this$0:Lcom/android/flymexx/applications/RunningServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/flymexx/applications/RunningServices$1;->this$0:Lcom/android/flymexx/applications/RunningServices;

    invoke-static {v0}, Lcom/android/flymexx/applications/RunningServices;->-get0(Lcom/android/flymexx/applications/RunningServices;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/applications/RunningServices$1;->this$0:Lcom/android/flymexx/applications/RunningServices;

    invoke-static {v1}, Lcom/android/flymexx/applications/RunningServices;->-get1(Lcom/android/flymexx/applications/RunningServices;)Lcom/android/flymexx/applications/RunningProcessesView;

    move-result-object v1

    invoke-static {v0, v1, v2, v2}, Lcom/android/flymexx/Utils;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    return-void
.end method
