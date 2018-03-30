.class Lcom/android/flymexx/RadioInfo$20;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/flymexx/RadioInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/RadioInfo$20;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/RadioInfo$20;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v1}, Lcom/android/flymexx/RadioInfo;->-get13(Lcom/android/flymexx/RadioInfo;)I

    move-result v1

    if-eq v1, p3, :cond_0

    if-ltz p3, :cond_0

    invoke-static {}, Lcom/android/flymexx/RadioInfo;->-get12()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    if-gt p3, v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/RadioInfo$20;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v1, p3}, Lcom/android/flymexx/RadioInfo;->-set6(Lcom/android/flymexx/RadioInfo;I)I

    iget-object v1, p0, Lcom/android/flymexx/RadioInfo$20;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v1}, Lcom/android/flymexx/RadioInfo;->-get3(Lcom/android/flymexx/RadioInfo;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/RadioInfo$20;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v1}, Lcom/android/flymexx/RadioInfo;->-get15(Lcom/android/flymexx/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/RadioInfo$20;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v2}, Lcom/android/flymexx/RadioInfo;->-get13(Lcom/android/flymexx/RadioInfo;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
