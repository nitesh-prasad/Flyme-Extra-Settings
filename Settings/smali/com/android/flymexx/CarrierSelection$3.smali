.class Lcom/android/flymexx/CarrierSelection$3;
.super Ljava/lang/Object;
.source "CarrierSelection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/android/flymexx/CarrierSelection$3;->this$0:Lcom/android/flymexx/CarrierSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/CarrierSelection$3;->this$0:Lcom/android/flymexx/CarrierSelection;

    invoke-virtual {v0}, Lcom/android/flymexx/CarrierSelection;->finish()V

    return-void
.end method
