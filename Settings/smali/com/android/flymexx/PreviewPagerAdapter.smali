.class public Lcom/android/flymexx/PreviewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PreviewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/PreviewPagerAdapter$PreviewFrameAnimatorListener;
    }
.end annotation


# static fields
.field private static final FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimationCounter:I

.field private mAnimationEndAction:Ljava/lang/Runnable;

.field private mIsLayoutRtl:Z

.field private mPreviewFrames:[Landroid/widget/FrameLayout;

.field private mViewStubInflated:[[Z


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/PreviewPagerAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mAnimationCounter:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/PreviewPagerAdapter;)[[Z
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mViewStubInflated:[[Z

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/flymexx/PreviewPagerAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mAnimationCounter:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/PreviewPagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/PreviewPagerAdapter;->runAnimationEndAction()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/flymexx/PreviewPagerAdapter;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/flymexx/PreviewPagerAdapter;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V
    .locals 13

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    iput-boolean p2, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mIsLayoutRtl:Z

    move-object/from16 v0, p3

    array-length v9, v0

    new-array v9, v9, [Landroid/widget/FrameLayout;

    iput-object v9, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    new-array v10, v10, [I

    move-object/from16 v0, p3

    array-length v11, v0

    const/4 v12, 0x0

    aput v11, v10, v12

    move-object/from16 v0, p4

    array-length v11, v0

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Z

    iput-object v9, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mViewStubInflated:[[Z

    const/4 v5, 0x0

    :goto_0
    move-object/from16 v0, p3

    array-length v9, v0

    if-ge v5, v9, :cond_2

    iget-boolean v9, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mIsLayoutRtl:Z

    if-eqz v9, :cond_0

    move-object/from16 v0, p3

    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    sub-int v7, v9, v5

    :goto_1
    iget-object v9, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    aput-object v10, v9, v7

    iget-object v9, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v9, v9, v7

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    :goto_2
    move-object/from16 v0, p4

    array-length v9, v0

    if-ge v6, v9, :cond_1

    aget-object v9, p4, v6

    invoke-virtual {p1, v9}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getThemeResId()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/content/Context;->setTheme(I)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    new-instance v8, Landroid/view/ViewStub;

    invoke-direct {v8, v1}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    aget v9, p3, v5

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setLayoutResource(I)V

    move v3, v5

    move v4, v6

    new-instance v9, Lcom/android/flymexx/PreviewPagerAdapter$1;

    invoke-direct {v9, p0, v3, v4}, Lcom/android/flymexx/PreviewPagerAdapter$1;-><init>(Lcom/android/flymexx/PreviewPagerAdapter;II)V

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    iget-object v9, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v9, v9, v7

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    move v7, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private runAnimationEndAction()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/PreviewPagerAdapter;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private setVisibility(Landroid/view/View;IZ)V
    .locals 8

    const-wide/16 v6, 0x190

    const/4 v4, 0x0

    if-nez p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    if-nez p3, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    sget-object v1, Lcom/android/flymexx/PreviewPagerAdapter;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_2
    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/flymexx/PreviewPagerAdapter;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/flymexx/PreviewPagerAdapter$PreviewFrameAnimatorListener;

    invoke-direct {v3, p0, v4}, Lcom/android/flymexx/PreviewPagerAdapter$PreviewFrameAnimatorListener;-><init>(Lcom/android/flymexx/PreviewPagerAdapter;Lcom/android/flymexx/PreviewPagerAdapter$PreviewFrameAnimatorListener;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/flymexx/PreviewPagerAdapter$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/flymexx/PreviewPagerAdapter$2;-><init>(Lcom/android/flymexx/PreviewPagerAdapter;Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/android/flymexx/PreviewPagerAdapter;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/flymexx/PreviewPagerAdapter;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/flymexx/PreviewPagerAdapter$PreviewFrameAnimatorListener;

    invoke-direct {v3, p0, v4}, Lcom/android/flymexx/PreviewPagerAdapter$PreviewFrameAnimatorListener;-><init>(Lcom/android/flymexx/PreviewPagerAdapter;Lcom/android/flymexx/PreviewPagerAdapter$PreviewFrameAnimatorListener;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/flymexx/PreviewPagerAdapter$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/flymexx/PreviewPagerAdapter$3;-><init>(Lcom/android/flymexx/PreviewPagerAdapter;Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p2

    return-object v0
.end method

.method isAnimating()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mAnimationCounter:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAnimationEndAction(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method setPreviewLayer(IIIZ)V
    .locals 9

    const/4 v8, 0x4

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_4

    aget-object v2, v5, v3

    if-ltz p2, :cond_0

    invoke-virtual {v2, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v7, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mViewStubInflated:[[Z

    aget-object v7, v7, p3

    aget-boolean v7, v7, p2

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v7, v7, p3

    if-ne v2, v7, :cond_2

    invoke-direct {p0, v0, v8, p4}, Lcom/android/flymexx/PreviewPagerAdapter;->setVisibility(Landroid/view/View;IZ)V

    :cond_0
    :goto_1
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v7, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v7, v7, p3

    if-ne v2, v7, :cond_3

    iget-object v7, p0, Lcom/android/flymexx/PreviewPagerAdapter;->mViewStubInflated:[[Z

    aget-object v7, v7, p3

    aget-boolean v7, v7, p1

    if-nez v7, :cond_1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    invoke-direct {p0, v1, v4, p4}, Lcom/android/flymexx/PreviewPagerAdapter;->setVisibility(Landroid/view/View;IZ)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v8, v4}, Lcom/android/flymexx/PreviewPagerAdapter;->setVisibility(Landroid/view/View;IZ)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1, v4, v4}, Lcom/android/flymexx/PreviewPagerAdapter;->setVisibility(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_4
    return-void
.end method
