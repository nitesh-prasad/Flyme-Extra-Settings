.class Lcom/android/flymexx/wifi/WifiStatusTest$4;
.super Ljava/lang/Object;
.source "WifiStatusTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/wifi/WifiStatusTest;->updatePingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/wifi/WifiStatusTest;


# direct methods
.method constructor <init>(Lcom/android/flymexx/wifi/WifiStatusTest;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/wifi/WifiStatusTest$4;->this$0:Lcom/android/flymexx/wifi/WifiStatusTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiStatusTest$4;->this$0:Lcom/android/flymexx/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/flymexx/wifi/WifiStatusTest;->-get8(Lcom/android/flymexx/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiStatusTest$4;->this$0:Lcom/android/flymexx/wifi/WifiStatusTest;

    invoke-static {v1}, Lcom/android/flymexx/wifi/WifiStatusTest;->-get9(Lcom/android/flymexx/wifi/WifiStatusTest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiStatusTest$4;->this$0:Lcom/android/flymexx/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/flymexx/wifi/WifiStatusTest;->-get2(Lcom/android/flymexx/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiStatusTest$4;->this$0:Lcom/android/flymexx/wifi/WifiStatusTest;

    invoke-static {v1}, Lcom/android/flymexx/wifi/WifiStatusTest;->-get3(Lcom/android/flymexx/wifi/WifiStatusTest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
