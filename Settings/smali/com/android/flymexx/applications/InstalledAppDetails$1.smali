.class Lcom/android/flymexx/applications/InstalledAppDetails$1;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/applications/InstalledAppDetails;
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
.field final synthetic this$0:Lcom/android/flymexx/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/flymexx/applications/InstalledAppDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/applications/InstalledAppDetails$1;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

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

    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails$1;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-virtual {v1}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails$1;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/flymexx/applications/InstalledAppDetails;->-get4(Lcom/android/flymexx/applications/InstalledAppDetails;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/flymexxlib/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/flymexxlib/net/ChartData;)V
    .locals 2
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

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails$1;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-static {v0, p2}, Lcom/android/flymexx/applications/InstalledAppDetails;->-set0(Lcom/android/flymexx/applications/InstalledAppDetails;Lcom/android/flymexxlib/net/ChartData;)Lcom/android/flymexxlib/net/ChartData;

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails$1;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/flymexx/applications/InstalledAppDetails;->-get1(Lcom/android/flymexx/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails$1;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-static {v1}, Lcom/android/flymexx/applications/InstalledAppDetails;->-wrap0(Lcom/android/flymexx/applications/InstalledAppDetails;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/flymexxlib/net/ChartData;

    invoke-virtual {p0, p1, p2}, Lcom/android/flymexx/applications/InstalledAppDetails$1;->onLoadFinished(Landroid/content/Loader;Lcom/android/flymexxlib/net/ChartData;)V

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
