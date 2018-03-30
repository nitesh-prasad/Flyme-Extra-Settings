.class Lcom/android/flymexx/datausage/DataUsageList$1;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    iput-object p1, p0, Lcom/android/flymexx/datausage/DataUsageList$1;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList$1;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/flymexx/datausage/DataUsageList;->-get4(Lcom/android/flymexx/datausage/DataUsageList;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/datausage/CycleAdapter$CycleItem;

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList$1;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/flymexx/datausage/DataUsageList;->-get5(Lcom/android/flymexx/datausage/DataUsageList;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList$1;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/flymexx/datausage/DataUsageList;->-get3(Lcom/android/flymexx/datausage/DataUsageList;)Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/flymexx/datausage/CycleAdapter$CycleItem;->start:J

    iget-wide v4, v0, Lcom/android/flymexx/datausage/CycleAdapter$CycleItem;->end:J

    invoke-static {}, Lcom/android/flymexx/datausage/DataUsageList;->-get6()J

    move-result-wide v6

    invoke-static {}, Lcom/android/flymexx/datausage/DataUsageList;->-get7()J

    move-result-wide v8

    invoke-virtual/range {v1 .. v9}, Lcom/android/flymexx/datausage/ChartDataUsageDeprecatedPreference;->setVisibleRange(JJJJ)V

    :goto_0
    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList$1;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/flymexx/datausage/DataUsageList;->-wrap4(Lcom/android/flymexx/datausage/DataUsageList;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList$1;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/flymexx/datausage/DataUsageList;->-get1(Lcom/android/flymexx/datausage/DataUsageList;)Lcom/android/flymexx/datausage/ChartDataUsagePreference;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/flymexx/datausage/CycleAdapter$CycleItem;->start:J

    iget-wide v4, v0, Lcom/android/flymexx/datausage/CycleAdapter$CycleItem;->end:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/flymexx/datausage/ChartDataUsagePreference;->setVisibleRange(JJ)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
