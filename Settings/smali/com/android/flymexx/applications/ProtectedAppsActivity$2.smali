.class Lcom/android/flymexx/applications/ProtectedAppsActivity$2;
.super Landroid/os/AsyncTask;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/applications/ProtectedAppsActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/flymexx/applications/ProtectedAppsActivity$AppEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/applications/ProtectedAppsActivity;


# direct methods
.method constructor <init>(Lcom/android/flymexx/applications/ProtectedAppsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity$2;->this$0:Lcom/android/flymexx/applications/ProtectedAppsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/applications/ProtectedAppsActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexx/applications/ProtectedAppsActivity$AppEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity$2;->this$0:Lcom/android/flymexx/applications/ProtectedAppsActivity;

    invoke-static {v0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->-wrap1(Lcom/android/flymexx/applications/ProtectedAppsActivity;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/applications/ProtectedAppsActivity$2;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexx/applications/ProtectedAppsActivity$AppEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity$2;->this$0:Lcom/android/flymexx/applications/ProtectedAppsActivity;

    invoke-static {v0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->-get1(Lcom/android/flymexx/applications/ProtectedAppsActivity;)Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;->clear()V

    iget-object v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity$2;->this$0:Lcom/android/flymexx/applications/ProtectedAppsActivity;

    invoke-static {v0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->-get1(Lcom/android/flymexx/applications/ProtectedAppsActivity;)Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method
