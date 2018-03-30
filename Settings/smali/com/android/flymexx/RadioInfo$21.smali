.class Lcom/android/flymexx/RadioInfo$21;
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

    iput-object p1, p0, Lcom/android/flymexx/RadioInfo$21;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$21;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0, p3}, Lcom/android/flymexx/RadioInfo;->-set0(Lcom/android/flymexx/RadioInfo;I)I

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$21;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0}, Lcom/android/flymexx/RadioInfo;->-get15(Lcom/android/flymexx/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {}, Lcom/android/flymexx/RadioInfo;->-get0()[I

    move-result-object v1

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$21;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0}, Lcom/android/flymexx/RadioInfo;->-wrap5(Lcom/android/flymexx/RadioInfo;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
