.class Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$3;
.super Ljava/lang/Object;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v0}, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->finish()V

    return-void
.end method
