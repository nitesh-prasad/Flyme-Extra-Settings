.class Lcom/android/flymexx/users/AppRestrictionsFragment$AppLoadingTask;
.super Landroid/os/AsyncTask;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppLoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/users/AppRestrictionsFragment;


# direct methods
.method private constructor <init>(Lcom/android/flymexx/users/AppRestrictionsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/users/AppRestrictionsFragment$AppLoadingTask;->this$0:Lcom/android/flymexx/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexx/users/AppRestrictionsFragment;Lcom/android/flymexx/users/AppRestrictionsFragment$AppLoadingTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppLoadingTask;-><init>(Lcom/android/flymexx/users/AppRestrictionsFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppLoadingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/AppRestrictionsFragment$AppLoadingTask;->this$0:Lcom/android/flymexx/users/AppRestrictionsFragment;

    invoke-static {v0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->-get1(Lcom/android/flymexx/users/AppRestrictionsFragment;)Lcom/android/flymexxlib/users/AppRestrictionsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/flymexxlib/users/AppRestrictionsHelper;->fetchAndMergeApps()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppLoadingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/AppRestrictionsFragment$AppLoadingTask;->this$0:Lcom/android/flymexx/users/AppRestrictionsFragment;

    invoke-static {v0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->-wrap3(Lcom/android/flymexx/users/AppRestrictionsFragment;)V

    return-void
.end method
