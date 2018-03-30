.class Lcom/android/flymexx/MasterClear$1;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/flymexx/MasterClear;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/MasterClear$1;->this$0:Lcom/android/flymexx/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/flymexx/Utils;->isCarrierDemoUser(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/android/flymexx/widget/CarrierDemoPasswordDialogFragment;

    invoke-direct {v1}, Lcom/android/flymexx/widget/CarrierDemoPasswordDialogFragment;-><init>()V

    iget-object v2, p0, Lcom/android/flymexx/MasterClear$1;->this$0:Lcom/android/flymexx/MasterClear;

    invoke-virtual {v2}, Lcom/android/flymexx/MasterClear;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1, v0, v3}, Lcom/android/flymexx/widget/CarrierDemoPasswordDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/flymexx/MasterClear$1;->this$0:Lcom/android/flymexx/MasterClear;

    const/16 v3, 0x37

    invoke-static {v2, v3}, Lcom/android/flymexx/MasterClear;->-wrap0(Lcom/android/flymexx/MasterClear;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/MasterClear$1;->this$0:Lcom/android/flymexx/MasterClear;

    invoke-static {v2}, Lcom/android/flymexx/MasterClear;->-wrap1(Lcom/android/flymexx/MasterClear;)V

    goto :goto_0
.end method
