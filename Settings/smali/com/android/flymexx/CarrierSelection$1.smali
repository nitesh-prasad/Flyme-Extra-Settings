.class Lcom/android/flymexx/CarrierSelection$1;
.super Ljava/lang/Object;
.source "CarrierSelection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$subInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/flymexx/CarrierSelection;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/CarrierSelection$1;->this$0:Lcom/android/flymexx/CarrierSelection;

    iput-object p2, p0, Lcom/android/flymexx/CarrierSelection$1;->val$subInfoList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/CarrierSelection$1;->val$subInfoList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    iget-object v1, p0, Lcom/android/flymexx/CarrierSelection$1;->this$0:Lcom/android/flymexx/CarrierSelection;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/flymexx/CarrierSelection;->-wrap0(Lcom/android/flymexx/CarrierSelection;I)V

    return-void
.end method
