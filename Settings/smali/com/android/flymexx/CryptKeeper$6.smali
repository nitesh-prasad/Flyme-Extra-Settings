.class Lcom/android/flymexx/CryptKeeper$6;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/CryptKeeper;->showFactoryReset(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/CryptKeeper;

.field final synthetic val$corrupt:Z

.field final synthetic val$mdtp_activated:Z


# direct methods
.method constructor <init>(Lcom/android/flymexx/CryptKeeper;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/CryptKeeper$6;->this$0:Lcom/android/flymexx/CryptKeeper;

    iput-boolean p2, p0, Lcom/android/flymexx/CryptKeeper$6;->val$mdtp_activated:Z

    iput-boolean p3, p0, Lcom/android/flymexx/CryptKeeper$6;->val$corrupt:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-boolean v3, p0, Lcom/android/flymexx/CryptKeeper$6;->val$mdtp_activated:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "CryptKeeper"

    const-string/jumbo v4, "  Calling encryptStorage with wipe"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/android/flymexx/CryptKeeper$6;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v3}, Lcom/android/flymexx/CryptKeeper;->-wrap0(Lcom/android/flymexx/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v2

    const-string/jumbo v3, ""

    const/4 v4, 0x1

    invoke-interface {v2, v4, v3}, Landroid/os/storage/IMountService;->encryptWipeStorage(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "CryptKeeper"

    const-string/jumbo v4, "Unable to call MountService properly"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.REASON"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CryptKeeper.showFactoryReset() corrupt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/flymexx/CryptKeeper$6;->val$corrupt:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/flymexx/CryptKeeper$6;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-virtual {v3, v1}, Lcom/android/flymexx/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
