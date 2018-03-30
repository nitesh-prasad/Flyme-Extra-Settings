.class Lcom/android/flymexx/CryptKeeper$DecryptTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecryptTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/flymexx/CryptKeeper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/CryptKeeper$DecryptTask;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexx/CryptKeeper;Lcom/android/flymexx/CryptKeeper$DecryptTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/CryptKeeper$DecryptTask;-><init>(Lcom/android/flymexx/CryptKeeper;)V

    return-void
.end method

.method private hide(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/flymexx/CryptKeeper$DecryptTask;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-virtual {v1, p1}, Lcom/android/flymexx/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    iget-object v2, p0, Lcom/android/flymexx/CryptKeeper$DecryptTask;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v2}, Lcom/android/flymexx/CryptKeeper;->-wrap0(Lcom/android/flymexx/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v3, "Error while decrypting..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/CryptKeeper$DecryptTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/flymexx/CryptKeeper$DecryptTask;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v3}, Lcom/android/flymexx/CryptKeeper;->-get3(Lcom/android/flymexx/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/flymexx/CryptKeeper$DecryptTask;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v3}, Lcom/android/flymexx/CryptKeeper;->-get3(Lcom/android/flymexx/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexx/CryptKeeper$DecryptTask;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v4}, Lcom/android/flymexx/CryptKeeper;->-get0(Lcom/android/flymexx/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/android/flymexx/CryptKeeper$DecryptTask;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v3}, Lcom/android/flymexx/CryptKeeper;->-get3(Lcom/android/flymexx/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexx/CryptKeeper$DecryptTask;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v4}, Lcom/android/flymexx/CryptKeeper;->-get0(Lcom/android/flymexx/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v3, p0, Lcom/android/flymexx/CryptKeeper$DecryptTask;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v3}, Lcom/android/flymexx/CryptKeeper;->-get6(Lcom/android/flymexx/CryptKeeper;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0c0a98

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f1100d4

    invoke-direct {p0, v3}, Lcom/android/flymexx/CryptKeeper$DecryptTask;->hide(I)V

    const v3, 0x7f1100e4

    invoke-direct {p0, v3}, Lcom/android/flymexx/CryptKeeper$DecryptTask;->hide(I)V

    const v3, 0x7f1100b5

    invoke-direct {p0, v3}, Lcom/android/flymexx/CryptKeeper$DecryptTask;->hide(I)V

    const v3, 0x7f1100e3

    invoke-direct {p0, v3}, Lcom/android/flymexx/CryptKeeper$DecryptTask;->hide(I)V

    const v3, 0x7f1100d3

    invoke-direct {p0, v3}, Lcom/android/flymexx/CryptKeeper$DecryptTask;->hide(I)V

    const v3, 0x7f1100d5

    invoke-direct {p0, v3}, Lcom/android/flymexx/CryptKeeper$DecryptTask;->hide(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/flymexx/CryptKeeper$DecryptTask;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v3}, Lcom/android/flymexx/CryptKeeper;->-get4(Lcom/android/flymexx/CryptKeeper;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "CryptKeeper"

    const-string/jumbo v4, "  CryptKeeper.MAX_FAILED_ATTEMPTS, calling encryptStorage with wipe"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/android/flymexx/CryptKeeper$DecryptTask;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v3}, Lcom/android/flymexx/CryptKeeper;->-wrap0(Lcom/android/flymexx/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v2

    const-string/jumbo v3, ""

    const/4 v4, 0x1

    invoke-interface {v2, v4, v3}, Landroid/os/storage/IMountService;->encryptWipeStorage(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "CryptKeeper"

    const-string/jumbo v4, "Unable to call MountService properly"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.REASON"

    const-string/jumbo v4, "CryptKeeper.MAX_FAILED_ATTEMPTS"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/flymexx/CryptKeeper$DecryptTask;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-virtual {v3, v1}, Lcom/android/flymexx/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/flymexx/CryptKeeper$DecryptTask;->this$0:Lcom/android/flymexx/CryptKeeper;

    const v4, 0x7f040054

    invoke-virtual {v3, v4}, Lcom/android/flymexx/CryptKeeper;->setContentView(I)V

    iget-object v3, p0, Lcom/android/flymexx/CryptKeeper$DecryptTask;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v3, v6, v5}, Lcom/android/flymexx/CryptKeeper;->-wrap10(Lcom/android/flymexx/CryptKeeper;ZZ)V

    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/flymexx/CryptKeeper$DecryptTask;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v3, p1}, Lcom/android/flymexx/CryptKeeper;->-wrap4(Lcom/android/flymexx/CryptKeeper;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/CryptKeeper$DecryptTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/android/flymexx/CryptKeeper$DecryptTask;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v0}, Lcom/android/flymexx/CryptKeeper;->-get3(Lcom/android/flymexx/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/CryptKeeper$DecryptTask;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v0}, Lcom/android/flymexx/CryptKeeper;->-get3(Lcom/android/flymexx/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/CryptKeeper$DecryptTask;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v1}, Lcom/android/flymexx/CryptKeeper;->-get2(Lcom/android/flymexx/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/CryptKeeper$DecryptTask;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v0}, Lcom/android/flymexx/CryptKeeper;->-wrap1(Lcom/android/flymexx/CryptKeeper;)V

    return-void
.end method
