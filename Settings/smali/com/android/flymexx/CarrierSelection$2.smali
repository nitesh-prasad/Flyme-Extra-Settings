.class Lcom/android/flymexx/CarrierSelection$2;
.super Ljava/lang/Object;
.source "CarrierSelection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/CarrierSelection;->createDialog(Landroid/content/Context;Ljava/util/List;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/CarrierSelection;


# direct methods
.method constructor <init>(Lcom/android/flymexx/CarrierSelection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/CarrierSelection$2;->this$0:Lcom/android/flymexx/CarrierSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/CarrierSelection$2;->this$0:Lcom/android/flymexx/CarrierSelection;

    invoke-virtual {v0}, Lcom/android/flymexx/CarrierSelection;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
