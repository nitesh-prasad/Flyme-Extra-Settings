.class Lcom/android/flymexx/widget/ChartDataUsageView$1;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/flymexx/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/flymexx/widget/ChartDataUsageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/widget/ChartDataUsageView$1;->this$0:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/flymexx/widget/ChartSweepView;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView$1;->this$0:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->-wrap5(Lcom/android/flymexx/widget/ChartDataUsageView;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView$1;->this$0:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->-get0(Lcom/android/flymexx/widget/ChartDataUsageView;)Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView$1;->this$0:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->-get0(Lcom/android/flymexx/widget/ChartDataUsageView;)Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;->onInspectRangeChanged()V

    :cond_0
    return-void
.end method

.method public requestEdit(Lcom/android/flymexx/widget/ChartSweepView;)V
    .locals 0

    return-void
.end method
