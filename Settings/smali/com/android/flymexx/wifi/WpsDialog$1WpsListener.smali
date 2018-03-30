.class Lcom/android/flymexx/wifi/WpsDialog$1WpsListener;
.super Landroid/net/wifi/WifiManager$WpsCallback;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/flymexx/wifi/WpsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/flymexx/wifi/WpsDialog;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$WpsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/flymexx/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/flymexx/wifi/WpsDialog;->-get1(Lcom/android/flymexx/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c054e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/flymexx/wifi/WpsDialog;

    sget-object v2, Lcom/android/flymexx/wifi/WpsDialog$DialogState;->WPS_FAILED:Lcom/android/flymexx/wifi/WpsDialog$DialogState;

    invoke-static {v1, v2, v0}, Lcom/android/flymexx/wifi/WpsDialog;->-wrap1(Lcom/android/flymexx/wifi/WpsDialog;Lcom/android/flymexx/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/flymexx/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/flymexx/wifi/WpsDialog;->-get1(Lcom/android/flymexx/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0552

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/flymexx/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/flymexx/wifi/WpsDialog;->-get1(Lcom/android/flymexx/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c054f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/flymexx/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/flymexx/wifi/WpsDialog;->-get1(Lcom/android/flymexx/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0550

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/flymexx/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/flymexx/wifi/WpsDialog;->-get1(Lcom/android/flymexx/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c054d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onStarted(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/flymexx/wifi/WpsDialog;

    sget-object v1, Lcom/android/flymexx/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/flymexx/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/flymexx/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/flymexx/wifi/WpsDialog;

    invoke-static {v2}, Lcom/android/flymexx/wifi/WpsDialog;->-get1(Lcom/android/flymexx/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c054a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/flymexx/wifi/WpsDialog;->-wrap1(Lcom/android/flymexx/wifi/WpsDialog;Lcom/android/flymexx/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/flymexx/wifi/WpsDialog;

    sget-object v1, Lcom/android/flymexx/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/flymexx/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/flymexx/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/flymexx/wifi/WpsDialog;

    invoke-static {v2}, Lcom/android/flymexx/wifi/WpsDialog;->-get1(Lcom/android/flymexx/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0549

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/flymexx/wifi/WpsDialog;->-wrap1(Lcom/android/flymexx/wifi/WpsDialog;Lcom/android/flymexx/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSucceeded()V
    .locals 4

    iget-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/flymexx/wifi/WpsDialog;

    sget-object v1, Lcom/android/flymexx/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/flymexx/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/flymexx/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/flymexx/wifi/WpsDialog;

    invoke-static {v2}, Lcom/android/flymexx/wifi/WpsDialog;->-get1(Lcom/android/flymexx/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c054b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/flymexx/wifi/WpsDialog;->-wrap1(Lcom/android/flymexx/wifi/WpsDialog;Lcom/android/flymexx/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    return-void
.end method
