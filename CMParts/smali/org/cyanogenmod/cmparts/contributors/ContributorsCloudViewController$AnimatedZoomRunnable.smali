.class Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "ContributorsCloudViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedZoomRunnable"
.end annotation


# instance fields
.field private final mFocalX:F

.field private final mFocalY:F

.field private final mStartTime:J

.field private final mZoomEnd:F

.field private final mZoomStart:F

.field final synthetic this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;FFFF)V
    .locals 2

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mFocalX:F

    iput p5, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mFocalY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mStartTime:J

    iput p2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mZoomStart:F

    iput p3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mZoomEnd:F

    return-void
.end method

.method private interpolate()F
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    mul-float/2addr v1, v6

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    iget v2, v2, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->ZOOM_DURATION:I

    int-to-float v2, v2

    div-float v0, v1, v2

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sget-object v1, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-virtual {v4}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->interpolate()F

    move-result v3

    iget v4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mZoomStart:F

    iget v5, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mZoomEnd:F

    iget v6, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mZoomStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float v2, v4, v5

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-virtual {v4}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getScale()F

    move-result v4

    div-float v0, v2, v4

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    iget v5, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mFocalX:F

    iget v6, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;->mFocalY:F

    invoke-virtual {v4, v0, v5, v6}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->onScale(FFF)V

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
