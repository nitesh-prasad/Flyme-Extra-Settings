.class Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ConditionAdapterUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$3;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$3;

.field final synthetic val$detailGroup:Landroid/view/View;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$3;ZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$3$1;->this$1:Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$3;

    iput-boolean p2, p0, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$3$1;->val$visible:Z

    iput-object p3, p0, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$3$1;->val$detailGroup:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$3$1;->val$visible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$3$1;->val$detailGroup:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
