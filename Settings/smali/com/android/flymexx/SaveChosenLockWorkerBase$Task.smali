.class Lcom/android/flymexx/SaveChosenLockWorkerBase$Task;
.super Landroid/os/AsyncTask;
.source "SaveChosenLockWorkerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/SaveChosenLockWorkerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/SaveChosenLockWorkerBase;


# direct methods
.method private constructor <init>(Lcom/android/flymexx/SaveChosenLockWorkerBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/SaveChosenLockWorkerBase$Task;->this$0:Lcom/android/flymexx/SaveChosenLockWorkerBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexx/SaveChosenLockWorkerBase;Lcom/android/flymexx/SaveChosenLockWorkerBase$Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/SaveChosenLockWorkerBase$Task;-><init>(Lcom/android/flymexx/SaveChosenLockWorkerBase;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/SaveChosenLockWorkerBase$Task;->this$0:Lcom/android/flymexx/SaveChosenLockWorkerBase;

    invoke-virtual {v0}, Lcom/android/flymexx/SaveChosenLockWorkerBase;->saveAndVerifyInBackground()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/SaveChosenLockWorkerBase$Task;->doInBackground([Ljava/lang/Void;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/SaveChosenLockWorkerBase$Task;->this$0:Lcom/android/flymexx/SaveChosenLockWorkerBase;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/SaveChosenLockWorkerBase;->finish(Landroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/SaveChosenLockWorkerBase$Task;->onPostExecute(Landroid/content/Intent;)V

    return-void
.end method
