.class final Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$2;
.super Ljava/lang/Object;
.source "ConditionAdapterUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils;->bindViews(Lcom/android/flymexx/dashboard/conditional/Condition;Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$condition:Lcom/android/flymexx/dashboard/conditional/Condition;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/flymexx/dashboard/conditional/Condition;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$2;->val$condition:Lcom/android/flymexx/dashboard/conditional/Condition;

    iput p2, p0, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$2;->val$condition:Lcom/android/flymexx/dashboard/conditional/Condition;

    invoke-virtual {v1}, Lcom/android/flymexx/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v1

    const/16 v2, 0x178

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$2;->val$condition:Lcom/android/flymexx/dashboard/conditional/Condition;

    iget v1, p0, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$2;->val$index:I

    invoke-virtual {v0, v1}, Lcom/android/flymexx/dashboard/conditional/Condition;->onActionClick(I)V

    return-void
.end method
