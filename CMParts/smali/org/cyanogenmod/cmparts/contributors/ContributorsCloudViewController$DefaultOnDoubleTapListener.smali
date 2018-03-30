.class public Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;
.super Ljava/lang/Object;
.source "ContributorsCloudViewController.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultOnDoubleTapListener"
.end annotation


# instance fields
.field private controller:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

.field final synthetic this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->setController(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    if-nez v4, :cond_0

    return v5

    :cond_0
    :try_start_0
    iget-object v4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-virtual {v4}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getScale()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-static {v4}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->-get1(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-virtual {v4}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getMediumScale()F

    move-result v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-virtual {v5}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getMediumScale()F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v3, v6}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->setScale(FFFZ)V

    :goto_0
    iget-object v4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->-set0(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;Z)Z

    :goto_1
    return v7

    :cond_1
    iget-object v4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-static {v4}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->-get1(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-virtual {v4}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getMediumScale()F

    move-result v4

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-virtual {v4}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getMaximumScale()F

    move-result v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-virtual {v5}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getMaximumScale()F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v3, v6}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->setScale(FFFZ)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-virtual {v5}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getMinimumScale()F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v3, v6}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->setScale(FFFZ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    if-nez v6, :cond_0

    return v9

    :cond_0
    iget-object v6, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-virtual {v6}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-virtual {v6}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getOnPhotoTapListener()Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnPhotoTapListener;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-virtual {v6}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v0, Landroid/graphics/RectF;->left:F

    sub-float v6, v2, v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float v3, v6, v7

    iget v6, v0, Landroid/graphics/RectF;->top:F

    sub-float v6, v4, v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float v5, v6, v7

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-virtual {v6}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getOnPhotoTapListener()Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnPhotoTapListener;

    move-result-object v6

    invoke-interface {v6, v1, v3, v5}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnPhotoTapListener;->onPhotoTap(Landroid/view/View;FF)V

    const/4 v6, 0x1

    return v6

    :cond_1
    iget-object v6, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-virtual {v6}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getOnViewTapListener()Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnViewTapListener;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-virtual {v6}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getOnViewTapListener()Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnViewTapListener;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-interface {v6, v1, v7, v8}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnViewTapListener;->onViewTap(Landroid/view/View;FF)V

    :cond_2
    return v9
.end method

.method public setController(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    return-void
.end method
