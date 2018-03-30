.class Lcom/android/flymexx/datausage/AppDataUsage$2;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/flymexxlib/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/datausage/AppDataUsage;


# direct methods
.method constructor <init>(Lcom/android/flymexx/datausage/AppDataUsage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/datausage/AppDataUsage$2;->this$0:Lcom/android/flymexx/datausage/AppDataUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/flymexxlib/net/ChartData;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/flymexxlib/net/ChartDataLoader;

    iget-object v1, p0, Lcom/android/flymexx/datausage/AppDataUsage$2;->this$0:Lcom/android/flymexx/datausage/AppDataUsage;

    invoke-virtual {v1}, Lcom/android/flymexx/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/datausage/AppDataUsage$2;->this$0:Lcom/android/flymexx/datausage/AppDataUsage;

    invoke-static {v2}, Lcom/android/flymexx/datausage/AppDataUsage;->-get5(Lcom/android/flymexx/datausage/AppDataUsage;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/flymexxlib/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/flymexxlib/net/ChartData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/flymexxlib/net/ChartData;",
            ">;",
            "Lcom/android/flymexxlib/net/ChartData;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage$2;->this$0:Lcom/android/flymexx/datausage/AppDataUsage;

    invoke-static {v0, p2}, Lcom/android/flymexx/datausage/AppDataUsage;->-set0(Lcom/android/flymexx/datausage/AppDataUsage;Lcom/android/flymexxlib/net/ChartData;)Lcom/android/flymexxlib/net/ChartData;

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage$2;->this$0:Lcom/android/flymexx/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/flymexx/datausage/AppDataUsage;->-get3(Lcom/android/flymexx/datausage/AppDataUsage;)Lcom/android/flymexx/datausage/CycleAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/datausage/AppDataUsage$2;->this$0:Lcom/android/flymexx/datausage/AppDataUsage;

    invoke-static {v1}, Lcom/android/flymexx/datausage/AppDataUsage;->-get4(Lcom/android/flymexx/datausage/AppDataUsage;)Landroid/net/NetworkPolicy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/datausage/AppDataUsage$2;->this$0:Lcom/android/flymexx/datausage/AppDataUsage;

    invoke-static {v2}, Lcom/android/flymexx/datausage/AppDataUsage;->-get1(Lcom/android/flymexx/datausage/AppDataUsage;)Lcom/android/flymexxlib/net/ChartData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/flymexx/datausage/CycleAdapter;->updateCycleList(Landroid/net/NetworkPolicy;Lcom/android/flymexxlib/net/ChartData;)Z

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsage$2;->this$0:Lcom/android/flymexx/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/flymexx/datausage/AppDataUsage;->-wrap2(Lcom/android/flymexx/datausage/AppDataUsage;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/flymexxlib/net/ChartData;

    invoke-virtual {p0, p1, p2}, Lcom/android/flymexx/datausage/AppDataUsage$2;->onLoadFinished(Landroid/content/Loader;Lcom/android/flymexxlib/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/flymexxlib/net/ChartData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
