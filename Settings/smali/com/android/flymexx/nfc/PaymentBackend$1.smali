.class Lcom/android/flymexx/nfc/PaymentBackend$1;
.super Landroid/os/Handler;
.source "PaymentBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/nfc/PaymentBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/nfc/PaymentBackend;


# direct methods
.method constructor <init>(Lcom/android/flymexx/nfc/PaymentBackend;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/nfc/PaymentBackend$1;->this$0:Lcom/android/flymexx/nfc/PaymentBackend;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/nfc/PaymentBackend$1;->this$0:Lcom/android/flymexx/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/flymexx/nfc/PaymentBackend;->refresh()V

    return-void
.end method
