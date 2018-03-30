.class Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator$2;
.super Ljava/lang/Object;
.source "PerfProfileSettings.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;->animateRange(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator$2;->this$1:Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator$2;->this$1:Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;->-get0(Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$PerfIconAnimator;)Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
