.class Lcom/android/flymexx/PreviewPagerAdapter$PreviewFrameAnimatorListener;
.super Ljava/lang/Object;
.source "PreviewPagerAdapter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/PreviewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewFrameAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/PreviewPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/android/flymexx/PreviewPagerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/PreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/android/flymexx/PreviewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexx/PreviewPagerAdapter;Lcom/android/flymexx/PreviewPagerAdapter$PreviewFrameAnimatorListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/PreviewPagerAdapter$PreviewFrameAnimatorListener;-><init>(Lcom/android/flymexx/PreviewPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/PreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/android/flymexx/PreviewPagerAdapter;

    invoke-static {v0}, Lcom/android/flymexx/PreviewPagerAdapter;->-get0(Lcom/android/flymexx/PreviewPagerAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/flymexx/PreviewPagerAdapter;->-set0(Lcom/android/flymexx/PreviewPagerAdapter;I)I

    iget-object v0, p0, Lcom/android/flymexx/PreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/android/flymexx/PreviewPagerAdapter;

    invoke-static {v0}, Lcom/android/flymexx/PreviewPagerAdapter;->-wrap0(Lcom/android/flymexx/PreviewPagerAdapter;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/PreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/android/flymexx/PreviewPagerAdapter;

    invoke-static {v0}, Lcom/android/flymexx/PreviewPagerAdapter;->-get0(Lcom/android/flymexx/PreviewPagerAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/flymexx/PreviewPagerAdapter;->-set0(Lcom/android/flymexx/PreviewPagerAdapter;I)I

    return-void
.end method
