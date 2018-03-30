.class Lcom/android/flymexx/BandMode$1;
.super Ljava/lang/Object;
.source "BandMode.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/BandMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/BandMode;


# direct methods
.method constructor <init>(Lcom/android/flymexx/BandMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/BandMode$1;->this$0:Lcom/android/flymexx/BandMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v1, p0, Lcom/android/flymexx/BandMode$1;->this$0:Lcom/android/flymexx/BandMode;

    invoke-virtual {v1}, Lcom/android/flymexx/BandMode;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFeatureInt(II)V

    iget-object v2, p0, Lcom/android/flymexx/BandMode$1;->this$0:Lcom/android/flymexx/BandMode;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/BandMode$BandListItem;

    invoke-static {v2, v1}, Lcom/android/flymexx/BandMode;->-set0(Lcom/android/flymexx/BandMode;Lcom/android/flymexx/BandMode$BandListItem;)Lcom/android/flymexx/BandMode$BandListItem;

    iget-object v1, p0, Lcom/android/flymexx/BandMode$1;->this$0:Lcom/android/flymexx/BandMode;

    invoke-static {v1}, Lcom/android/flymexx/BandMode;->-get1(Lcom/android/flymexx/BandMode;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/BandMode$1;->this$0:Lcom/android/flymexx/BandMode;

    invoke-static {v1}, Lcom/android/flymexx/BandMode;->-get2(Lcom/android/flymexx/BandMode;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/BandMode$1;->this$0:Lcom/android/flymexx/BandMode;

    invoke-static {v2}, Lcom/android/flymexx/BandMode;->-get3(Lcom/android/flymexx/BandMode;)Lcom/android/flymexx/BandMode$BandListItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/flymexx/BandMode$BandListItem;->getBand()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    return-void
.end method
