.class final Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$1;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;
.source "ConditionAdapterUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils;->addDismiss(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(IILandroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p3, p0, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getSwipeDirs(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const v1, 0x7f04003f

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    iget-object v2, p0, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/flymexx/dashboard/DashboardAdapter;->getItem(J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/flymexx/dashboard/conditional/Condition;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/flymexx/dashboard/conditional/Condition;

    invoke-virtual {v1}, Lcom/android/flymexx/dashboard/conditional/Condition;->silence()V

    :cond_0
    return-void
.end method
