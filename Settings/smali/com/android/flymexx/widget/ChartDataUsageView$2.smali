.class Lcom/android/flymexx/widget/ChartDataUsageView$2;
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

    iput-object p1, p0, Lcom/android/flymexx/widget/ChartDataUsageView$2;->this$0:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/flymexx/widget/ChartSweepView;Z)V
    .locals 2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView$2;->this$0:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-static {v0, p1}, Lcom/android/flymexx/widget/ChartDataUsageView;->-wrap1(Lcom/android/flymexx/widget/ChartDataUsageView;Lcom/android/flymexx/widget/ChartSweepView;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView$2;->this$0:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->-wrap4(Lcom/android/flymexx/widget/ChartDataUsageView;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView$2;->this$0:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->-get2(Lcom/android/flymexx/widget/ChartDataUsageView;)Lcom/android/flymexx/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView$2;->this$0:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->-get0(Lcom/android/flymexx/widget/ChartDataUsageView;)Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView$2;->this$0:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->-get0(Lcom/android/flymexx/widget/ChartDataUsageView;)Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;->onWarningChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView$2;->this$0:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->-get1(Lcom/android/flymexx/widget/ChartDataUsageView;)Lcom/android/flymexx/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView$2;->this$0:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->-get0(Lcom/android/flymexx/widget/ChartDataUsageView;)Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView$2;->this$0:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->-get0(Lcom/android/flymexx/widget/ChartDataUsageView;)Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;->onLimitChanged()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView$2;->this$0:Lcom/android/flymexx/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/flymexx/widget/ChartDataUsageView;->-wrap2(Lcom/android/flymexx/widget/ChartDataUsageView;Lcom/android/flymexx/widget/ChartSweepView;Z)V

    goto :goto_0
.end method

.method public requestEdit(Lcom/android/flymexx/widget/ChartSweepView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView$2;->this$0:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->-get2(Lcom/android/flymexx/widget/ChartDataUsageView;)Lcom/android/flymexx/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView$2;->this$0:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->-get0(Lcom/android/flymexx/widget/ChartDataUsageView;)Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView$2;->this$0:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->-get0(Lcom/android/flymexx/widget/ChartDataUsageView;)Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;->requestWarningEdit()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView$2;->this$0:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->-get1(Lcom/android/flymexx/widget/ChartDataUsageView;)Lcom/android/flymexx/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView$2;->this$0:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->-get0(Lcom/android/flymexx/widget/ChartDataUsageView;)Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/widget/ChartDataUsageView$2;->this$0:Lcom/android/flymexx/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/flymexx/widget/ChartDataUsageView;->-get0(Lcom/android/flymexx/widget/ChartDataUsageView;)Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;->requestLimitEdit()V

    goto :goto_0
.end method
