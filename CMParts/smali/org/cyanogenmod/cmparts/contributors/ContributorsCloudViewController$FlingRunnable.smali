.class Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;
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
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mCurrentX:I

.field private mCurrentY:I

.field protected final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 2

    invoke-static {}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ContributorsCloud"

    const-string/jumbo v1, "Cancel Fling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    return-void
.end method

.method public fling(IIII)V
    .locals 12

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v11

    if-nez v11, :cond_0

    return-void

    :cond_0
    iget v0, v11, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v0, p1

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float v3, p1

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    :goto_0
    iget v0, v11, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v0, p2

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    const/4 v7, 0x0

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v0

    int-to-float v3, p2

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    :goto_1
    iput v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->mCurrentX:I

    iput v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->mCurrentY:I

    invoke-static {}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ContributorsCloud"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fling. StartX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " StartY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " MaxX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " MaxY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-ne v1, v6, :cond_2

    if-eq v2, v8, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    :cond_3
    return-void

    :cond_4
    move v6, v1

    move v5, v1

    goto :goto_0

    :cond_5
    move v8, v2

    move v7, v2

    goto :goto_1
.end method

.method public run()V
    .locals 6

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-virtual {v3}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    invoke-static {}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->-get0()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "ContributorsCloud"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fling run(). CurrentX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->mCurrentX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " CurrentY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->mCurrentY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " NewX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " NewY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-static {v3}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->-get3(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->mCurrentX:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->mCurrentY:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-virtual {v4}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->-wrap0(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;Landroid/graphics/Matrix;)V

    iput v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->mCurrentX:I

    iput v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->mCurrentY:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
