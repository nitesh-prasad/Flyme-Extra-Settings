.class Lcom/android/flymexx/datausage/AppDataUsage$1;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/datausage/AppDataUsage;


# direct methods
.method constructor <init>(Lcom/android/flymexx/datausage/AppDataUsage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/datausage/AppDataUsage$1;->this$0:Lcom/android/flymexx/datausage/AppDataUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/flymexx/datausage/AppDataUsage$1;->this$0:Lcom/android/flymexx/datausage/AppDataUsage;

    invoke-static {v1}, Lcom/android/flymexx/datausage/AppDataUsage;->-get2(Lcom/android/flymexx/datausage/AppDataUsage;)Lcom/android/flymexx/datausage/SpinnerPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/flymexx/datausage/SpinnerPreference;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/datausage/CycleAdapter$CycleItem;

    iget-object v1, p0, Lcom/android/flymexx/datausage/AppDataUsage$1;->this$0:Lcom/android/flymexx/datausage/AppDataUsage;

    iget-wide v2, v0, Lcom/android/flymexx/datausage/CycleAdapter$CycleItem;->start:J

    invoke-static {v1, v2, v3}, Lcom/android/flymexx/datausage/AppDataUsage;->-set2(Lcom/android/flymexx/datausage/AppDataUsage;J)J

    iget-object v1, p0, Lcom/android/flymexx/datausage/AppDataUsage$1;->this$0:Lcom/android/flymexx/datausage/AppDataUsage;

    iget-wide v2, v0, Lcom/android/flymexx/datausage/CycleAdapter$CycleItem;->end:J

    invoke-static {v1, v2, v3}, Lcom/android/flymexx/datausage/AppDataUsage;->-set1(Lcom/android/flymexx/datausage/AppDataUsage;J)J

    iget-object v1, p0, Lcom/android/flymexx/datausage/AppDataUsage$1;->this$0:Lcom/android/flymexx/datausage/AppDataUsage;

    invoke-static {v1}, Lcom/android/flymexx/datausage/AppDataUsage;->-wrap2(Lcom/android/flymexx/datausage/AppDataUsage;)V

    return-void
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
