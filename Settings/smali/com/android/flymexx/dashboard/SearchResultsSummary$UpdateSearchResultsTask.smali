.class Lcom/android/flymexx/dashboard/SearchResultsSummary$UpdateSearchResultsTask;
.super Landroid/os/AsyncTask;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/dashboard/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSearchResultsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/dashboard/SearchResultsSummary;


# direct methods
.method private constructor <init>(Lcom/android/flymexx/dashboard/SearchResultsSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/flymexx/dashboard/SearchResultsSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexx/dashboard/SearchResultsSummary;Lcom/android/flymexx/dashboard/SearchResultsSummary$UpdateSearchResultsTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/dashboard/SearchResultsSummary$UpdateSearchResultsTask;-><init>(Lcom/android/flymexx/dashboard/SearchResultsSummary;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/flymexx/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/flymexx/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/flymexx/search/Index;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/flymexx/search/Index;->search(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->doInBackground([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/flymexx/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/flymexx/dashboard/SearchResultsSummary;

    invoke-virtual {v1}, Lcom/android/flymexx/dashboard/SearchResultsSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/16 v3, 0xe2

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    iget-object v1, p0, Lcom/android/flymexx/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/flymexx/dashboard/SearchResultsSummary;

    invoke-static {v1, p1}, Lcom/android/flymexx/dashboard/SearchResultsSummary;->-wrap1(Lcom/android/flymexx/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/android/flymexx/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/flymexx/dashboard/SearchResultsSummary;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/android/flymexx/dashboard/SearchResultsSummary;->-wrap2(Lcom/android/flymexx/dashboard/SearchResultsSummary;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
