.class Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;
.super Ljava/lang/Object;
.source "PerfProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PerfIconAnimator"
.end annotation


# instance fields
.field private final mAnimator:Landroid/animation/AnimatorSet;

.field private final mContext:Landroid/content/Context;

.field private final mDrawable:Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;

.field private final mGradient:Landroid/animation/ValueAnimator;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;)Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;->mDrawable:Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;->mDrawable:Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;

    const/4 v0, 0x3

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;->mGradient:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private getColorAt(F)I
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;->mGradient:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;->mGradient:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public animateRange(FF)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    new-array v2, v6, [F

    aput p1, v2, v4

    aput p2, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [I

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;->getColorAt(F)I

    move-result v3

    aput v3, v2, v4

    sub-float v3, p2, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, p1

    invoke-direct {p0, v3}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;->getColorAt(F)I

    move-result v3

    aput v3, v2, v5

    invoke-direct {p0, p2}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;->getColorAt(F)I

    move-result v3

    aput v3, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator$1;

    invoke-direct {v2, p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator$1;-><init>(Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator$2;

    invoke-direct {v2, p0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator$2;-><init>(Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
