.class Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$4;
.super Ljava/lang/Object;
.source "ContributorsCloudFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->animateFadeOutFadeIn(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

.field final synthetic val$dst:Landroid/view/View;

.field final synthetic val$src:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$4;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$4;->val$src:Landroid/view/View;

    iput-object p3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$4;->val$dst:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$4;->val$src:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$4;->val$src:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$4;->val$dst:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$4;->val$src:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$4;->val$dst:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
