.class Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog$1;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog;


# direct methods
.method constructor <init>(Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog$1;->this$0:Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog$1;->this$0:Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog;

    invoke-static {v0, p1}, Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog;->-wrap1(Lcom/android/flymexx/wifi/WriteWifiConfigToNfcDialog;Landroid/nfc/Tag;)V

    return-void
.end method
