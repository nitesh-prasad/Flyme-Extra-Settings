.class Lcom/android/flymexx/widget/DotsPageIndicator$PendingRevealAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DotsPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/widget/DotsPageIndicator$PendingRevealAnimator;-><init>(Lcom/android/flymexx/widget/DotsPageIndicator;ILcom/android/flymexx/widget/DotsPageIndicator$StartPredicate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/flymexx/widget/DotsPageIndicator$PendingRevealAnimator;


# direct methods
.method constructor <init>(Lcom/android/flymexx/widget/DotsPageIndicator$PendingRevealAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/widget/DotsPageIndicator$PendingRevealAnimator$2;->this$1:Lcom/android/flymexx/widget/DotsPageIndicator$PendingRevealAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/widget/DotsPageIndicator$PendingRevealAnimator$2;->this$1:Lcom/android/flymexx/widget/DotsPageIndicator$PendingRevealAnimator;

    iget-object v0, v0, Lcom/android/flymexx/widget/DotsPageIndicator$PendingRevealAnimator;->this$0:Lcom/android/flymexx/widget/DotsPageIndicator;

    iget-object v1, p0, Lcom/android/flymexx/widget/DotsPageIndicator$PendingRevealAnimator$2;->this$1:Lcom/android/flymexx/widget/DotsPageIndicator$PendingRevealAnimator;

    invoke-static {v1}, Lcom/android/flymexx/widget/DotsPageIndicator$PendingRevealAnimator;->-get0(Lcom/android/flymexx/widget/DotsPageIndicator$PendingRevealAnimator;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/flymexx/widget/DotsPageIndicator;->-wrap2(Lcom/android/flymexx/widget/DotsPageIndicator;IF)V

    iget-object v0, p0, Lcom/android/flymexx/widget/DotsPageIndicator$PendingRevealAnimator$2;->this$1:Lcom/android/flymexx/widget/DotsPageIndicator$PendingRevealAnimator;

    iget-object v0, v0, Lcom/android/flymexx/widget/DotsPageIndicator$PendingRevealAnimator;->this$0:Lcom/android/flymexx/widget/DotsPageIndicator;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    return-void
.end method
