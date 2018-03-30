.class Lcom/android/flymexx/datausage/DataUsageList$4;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Lcom/android/flymexx/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/datausage/DataUsageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/flymexx/datausage/DataUsageList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/datausage/DataUsageList$4;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspectRangeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList$4;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/flymexx/datausage/DataUsageList;->-wrap4(Lcom/android/flymexx/datausage/DataUsageList;)V

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList$4;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/flymexx/datausage/DataUsageList;->-get3(Lcom/android/flymexx/datausage/DataUsageList;)Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->setInspectRangeChanged()V

    return-void
.end method

.method public onLimitChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList$4;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList$4;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/flymexx/datausage/DataUsageList;->-get3(Lcom/android/flymexx/datausage/DataUsageList;)Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->getLimitBytes()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/flymexx/datausage/DataUsageList;->-wrap0(Lcom/android/flymexx/datausage/DataUsageList;J)V

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList$4;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/flymexx/datausage/DataUsageList;->-wrap3(Lcom/android/flymexx/datausage/DataUsageList;)V

    return-void
.end method

.method public onWarningChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList$4;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList$4;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/flymexx/datausage/DataUsageList;->-get3(Lcom/android/flymexx/datausage/DataUsageList;)Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->getWarningBytes()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/flymexx/datausage/DataUsageList;->-wrap1(Lcom/android/flymexx/datausage/DataUsageList;J)V

    return-void
.end method

.method public requestLimitEdit()V
    .locals 0

    return-void
.end method

.method public requestWarningEdit()V
    .locals 0

    return-void
.end method
