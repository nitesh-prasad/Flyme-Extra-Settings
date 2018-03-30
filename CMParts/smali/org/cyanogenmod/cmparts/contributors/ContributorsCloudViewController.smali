.class public Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;
.super Ljava/lang/Object;
.source "ContributorsCloudViewController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;,
        Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;,
        Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;,
        Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnMatrixChangedListener;,
        Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnPhotoTapListener;,
        Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnScaleChangeListener;,
        Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnViewTapListener;
    }
.end annotation


# static fields
.field private static final synthetic -android-widget-ImageView$ScaleTypeSwitchesValues:[I

.field private static final DEBUG:Z

.field static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field ZOOM_DURATION:I

.field private mActivePointerId:I

.field private mActivePointerIndex:I

.field private mAllowParentInterceptOnEdge:Z

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mBlockParentIntercept:Z

.field private mCurrentFlingRunnable:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIgnoreDoubleTapScale:Z

.field private mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDragging:Z

.field private mIvBottom:I

.field private mIvLeft:I

.field private mIvRight:I

.field private mIvTop:I

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrixChangeListener:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnMatrixChangedListener;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private final mMinimumVelocity:F

.field private mPhotoTapListener:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnPhotoTapListener;

.field private mScaleChangeListener:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnScaleChangeListener;

.field private mScaleDragDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mScrollEdge:I

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private final mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewTapListener:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnViewTapListener;

.field private mZoomEnabled:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mIgnoreDoubleTapScale:Z

    return v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;)Landroid/view/View$OnLongClickListener;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic -get3(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mSuppMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private static synthetic -getandroid-widget-ImageView$ScaleTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->-android-widget-ImageView$ScaleTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->-android-widget-ImageView$ScaleTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->-android-widget-ImageView$ScaleTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mIgnoreDoubleTapScale:Z

    return p1
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;Landroid/graphics/Matrix;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ContributorsCloud"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->DEBUG:Z

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;-><init>(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0xc8

    iput v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->ZOOM_DURATION:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMinScale:F

    const/high16 v3, 0x3fe00000    # 1.75f

    iput v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMidScale:F

    const/high16 v3, 0x40400000    # 3.0f

    iput v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMaxScale:F

    iput-boolean v5, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mAllowParentInterceptOnEdge:Z

    iput-boolean v4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mBlockParentIntercept:Z

    const/4 v3, -0x1

    iput v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mActivePointerId:I

    iput v4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mActivePointerIndex:I

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mDrawMatrix:Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mSuppMatrix:Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mDisplayRect:Landroid/graphics/RectF;

    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMatrixValues:[F

    const/4 v3, 0x2

    iput v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScrollEdge:I

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMinimumVelocity:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mTouchSlop:F

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    invoke-static {p1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    new-instance v1, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$1;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$1;-><init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;)V

    new-instance v3, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScaleDragDetector:Landroid/view/ScaleGestureDetector;

    new-instance v3, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$2;

    invoke-direct {v5, p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$2;-><init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;)V

    invoke-direct {v3, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v4, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;

    invoke-direct {v4, p0, p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;-><init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;)V

    invoke-virtual {v3, v4}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    invoke-virtual {p0, p2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->setZoomable(Z)V

    return-void
.end method

.method private cancelFling()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mCurrentFlingRunnable:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mCurrentFlingRunnable:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->cancelFling()V

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mCurrentFlingRunnable:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;

    :cond_0
    return-void
.end method

.method private checkAndDisplayMatrix()V
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->checkMatrixBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method private checkImageViewScaleType()V
    .locals 3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "The ImageView\'s ScaleType has been changed since attaching to this controller"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private checkMatrixBounds()Z
    .locals 14

    const/4 v13, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    if-nez v3, :cond_0

    return v10

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v4

    if-nez v4, :cond_1

    return v10

    :cond_1
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v3}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v5

    int-to-float v8, v5

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_3

    invoke-static {}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->-getandroid-widget-ImageView$ScaleTypeSwitchesValues()[I

    move-result-object v8

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    int-to-float v8, v5

    sub-float/2addr v8, v2

    div-float/2addr v8, v12

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    :cond_2
    :goto_0
    invoke-direct {p0, v3}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v6

    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_5

    invoke-static {}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->-getandroid-widget-ImageView$ScaleTypeSwitchesValues()[I

    move-result-object v8

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v12

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    :goto_1
    const/4 v8, 0x2

    iput v8, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScrollEdge:I

    :goto_2
    iget-object v8, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v13

    :pswitch_0
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_0

    :pswitch_1
    int-to-float v8, v5

    sub-float/2addr v8, v2

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    goto :goto_0

    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_4

    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_0

    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    int-to-float v8, v5

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_0

    :pswitch_2
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_1

    :pswitch_3
    int-to-float v8, v6

    sub-float/2addr v8, v7

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    goto :goto_1

    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_6

    iput v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScrollEdge:I

    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_2

    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_7

    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    iput v13, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScrollEdge:I

    goto :goto_2

    :cond_7
    const/4 v8, -0x1

    iput v8, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScrollEdge:I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static checkZoomLevels(FFF)V
    .locals 2

    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MinZoom has to be less than MidZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MidZoom has to be less than MaxZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private getActiveX(Landroid/view/MotionEvent;)F
    .locals 2

    :try_start_0
    iget v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mActivePointerIndex:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    return v1
.end method

.method private getActiveY(Landroid/view/MotionEvent;)F
    .locals 2

    :try_start_0
    iget v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mActivePointerIndex:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    return v1
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mDisplayRect:Landroid/graphics/RectF;

    return-object v2

    :cond_0
    return-object v2
.end method

.method private getImageViewHeight(Landroid/widget/ImageView;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getImageViewWidth(Landroid/widget/ImageView;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method private static hasDrawable(Landroid/widget/ImageView;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private resetMatrix()V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->checkMatrixBounds()Z

    return-void
.end method

.method private setImageViewMatrix(Landroid/graphics/Matrix;)V
    .locals 3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->checkImageViewScaleType()V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMatrixChangeListener:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnMatrixChangedListener;

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMatrixChangeListener:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnMatrixChangedListener;

    invoke-interface {v2, v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method private static setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .locals 14

    const/4 v12, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v3}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v10

    int-to-float v8, v10

    invoke-direct {p0, v3}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v10

    int-to-float v7, v10

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    int-to-float v10, v1

    div-float v9, v8, v10

    int-to-float v10, v0

    div-float v2, v7, v10

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_2

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v1

    sub-float v11, v8, v11

    div-float/2addr v11, v13

    int-to-float v12, v0

    sub-float v12, v7, v12

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_0
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->resetMatrix()V

    return-void

    :cond_2
    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_3

    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v1

    mul-float/2addr v11, v6

    sub-float v11, v8, v11

    div-float/2addr v11, v13

    int-to-float v12, v0

    mul-float/2addr v12, v6

    sub-float v12, v7, v12

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_4

    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v1

    mul-float/2addr v11, v6

    sub-float v11, v8, v11

    div-float/2addr v11, v13

    int-to-float v12, v0

    mul-float/2addr v12, v6

    sub-float v12, v7, v12

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_4
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v10, v1

    int-to-float v11, v0

    invoke-direct {v5, v12, v12, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v12, v12, v8, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->-getandroid-widget-ImageView$ScaleTypeSwitchesValues()[I

    move-result-object v10

    iget-object v11, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    :pswitch_1
    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    :pswitch_2
    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    :pswitch_3
    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public cleanup()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mImageView:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->cancelFling()V

    :cond_2
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :cond_3
    iput-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMatrixChangeListener:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnMatrixChangedListener;

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mPhotoTapListener:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnPhotoTapListener;

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mViewTapListener:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnViewTapListener;

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mImageView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->checkMatrixBounds()Z

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getDrawMatrix()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mImageView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->cleanup()V

    const-string/jumbo v1, "ContributorsCloud"

    const-string/jumbo v2, "ImageView no longer exists. You should not use this reference any more."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMaxScale:F

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMidScale:F

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMinScale:F

    return v0
.end method

.method public getOnPhotoTapListener()Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnPhotoTapListener;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mPhotoTapListener:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnPhotoTapListener;

    return-object v0
.end method

.method public getOnViewTapListener()Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnViewTapListener;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mViewTapListener:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnViewTapListener;

    return-object v0
.end method

.method public getScale()F
    .locals 6

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getValue(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public onDrag(FF)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScaleDragDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    sget-boolean v2, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ContributorsCloud"

    const-string/jumbo v3, "onDrag: dx: %.2f. dy: %.2f"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->checkAndDisplayMatrix()V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-boolean v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mAllowParentInterceptOnEdge:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScaleDragDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    :goto_0
    iput-boolean v6, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mIgnoreDoubleTapScale:Z

    return-void

    :cond_4
    iget-boolean v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mBlockParentIntercept:Z

    if-nez v2, :cond_2

    iget v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScrollEdge:I

    if-eq v2, v8, :cond_5

    iget v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScrollEdge:I

    if-nez v2, :cond_6

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_6

    :cond_5
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_6
    iget v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScrollEdge:I

    if-ne v2, v7, :cond_3

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_3

    goto :goto_1
.end method

.method public onFling(FFFF)V
    .locals 6

    sget-boolean v1, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ContributorsCloud"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFling. sX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " sY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Vx: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Vy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;-><init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mCurrentFlingRunnable:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mCurrentFlingRunnable:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v3

    float-to-int v4, p3

    float-to-int v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;->fling(IIII)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mCurrentFlingRunnable:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$FlingRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mIgnoreDoubleTapScale:Z

    return-void
.end method

.method public onGlobalLayout()V
    .locals 6

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v5, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mZoomEnabled:Z

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    iget v5, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mIvTop:I

    if-ne v4, v5, :cond_0

    iget v5, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mIvBottom:I

    if-eq v0, v5, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    iput v4, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mIvTop:I

    iput v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mIvRight:I

    iput v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mIvBottom:I

    iput v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mIvLeft:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v5, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mIvLeft:I

    if-ne v2, v5, :cond_0

    iget v5, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mIvRight:I

    if-eq v3, v5, :cond_1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public onScale(FFF)V
    .locals 5

    sget-boolean v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ContributorsCloud"

    const-string/jumbo v1, "onScale: scale: %.2f. fX: %.2f. fY: %.2f"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getScale()F

    move-result v0

    iget v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMaxScale:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScaleChangeListener:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnScaleChangeListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScaleChangeListener:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnScaleChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$OnScaleChangeListener;->onScaleChange(FFF)V

    :cond_2
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->checkAndDisplayMatrix()V

    :cond_3
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 v8, 0x0

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mZoomEnabled:Z

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScaleDragDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScaleDragDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v12

    iget-boolean v11, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mIsDragging:Z

    invoke-virtual {p0, p2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-nez v12, :cond_1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScaleDragDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-nez v11, :cond_2

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mIsDragging:Z

    if-eqz v0, :cond_7

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz v7, :cond_8

    :goto_3
    iput-boolean v6, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mBlockParentIntercept:Z

    :cond_3
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    :cond_4
    return v8

    :pswitch_1
    if-eqz v9, :cond_5

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_4
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->cancelFling()V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "ContributorsCloud"

    const-string/jumbo v1, "onTouch getParent() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_2
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getScale()F

    move-result v0

    iget v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMinScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v10

    if-eqz v10, :cond_0

    new-instance v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getScale()F

    move-result v2

    iget v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMinScale:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;-><init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;FFFF)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v8, 0x1

    goto :goto_0

    :cond_6
    const/4 v7, 0x1

    goto :goto_1

    :cond_7
    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mScaleDragDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v10, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mActivePointerId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    iget v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mActivePointerId:I

    :goto_1
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    iput v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mActivePointerIndex:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_1

    :cond_1
    :goto_2
    const/4 v10, 0x1

    return v10

    :pswitch_1
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mActivePointerId:I

    goto :goto_0

    :pswitch_2
    const/4 v10, -0x1

    iput v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mActivePointerId:I

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const v11, 0xff00

    and-int/2addr v10, v11

    shr-int/lit8 v5, v10, 0x8

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mActivePointerId:I

    if-ne v4, v10, :cond_0

    if-nez v5, :cond_2

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    iput v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mLastTouchX:F

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    iput v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mLastTouchY:F

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    :pswitch_4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :goto_4
    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v10

    iput v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mLastTouchX:F

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v10

    iput v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mLastTouchY:F

    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mIsDragging:Z

    goto :goto_2

    :cond_4
    const-string/jumbo v10, "ContributorsCloud"

    const-string/jumbo v11, "Velocity tracker is null"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_5
    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v8

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v9

    iget v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mLastTouchX:F

    sub-float v1, v8, v10

    iget v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mLastTouchY:F

    sub-float v2, v9, v10

    iget-boolean v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mIsDragging:Z

    if-nez v10, :cond_5

    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    iget v12, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mTouchSlop:F

    float-to-double v12, v12

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_6

    const/4 v10, 0x1

    :goto_5
    iput-boolean v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mIsDragging:Z

    :cond_5
    iget-boolean v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mIsDragging:Z

    if-eqz v10, :cond_1

    invoke-virtual {p0, v1, v2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->onDrag(FF)V

    iput v8, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mLastTouchX:F

    iput v9, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mLastTouchY:F

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_6
    const/4 v10, 0x0

    goto :goto_5

    :pswitch_6
    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v10, 0x0

    iput-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_2

    :pswitch_7
    iget-boolean v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mIsDragging:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_7

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v10

    iput v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mLastTouchX:F

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v10

    iput v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mLastTouchY:F

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget v11, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMinimumVelocity:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_7

    iget v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mLastTouchX:F

    iget v11, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mLastTouchY:F

    neg-float v12, v6

    neg-float v13, v7

    invoke-virtual {p0, v10, v11, v12, v13}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->onFling(FFFF)V

    :cond_7
    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v10, 0x0

    iput-object v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setMaximumScale(F)V
    .locals 2

    iget v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMinScale:F

    iget v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMidScale:F

    invoke-static {v0, v1, p1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->checkZoomLevels(FFF)V

    iput p1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMaxScale:F

    return-void
.end method

.method public setMediumScale(F)V
    .locals 2

    iget v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMinScale:F

    iget v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMaxScale:F

    invoke-static {v0, p1, v1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->checkZoomLevels(FFF)V

    iput p1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMidScale:F

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 7

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    if-eqz v6, :cond_2

    iget v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMinScale:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mMaxScale:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "ContributorsCloud"

    const-string/jumbo v1, "Scale must be within the range of minScale and maxScale"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p4, :cond_3

    new-instance v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getScale()F

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$AnimatedZoomRunnable;-><init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;FFFF)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getMediumScale()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mIgnoreDoubleTapScale:Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->checkAndDisplayMatrix()V

    goto :goto_0
.end method

.method public setZoomTransitionDuration(I)V
    .locals 0

    if-gez p1, :cond_0

    const/16 p1, 0xc8

    :cond_0
    iput p1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->ZOOM_DURATION:I

    return-void
.end method

.method public setZoomable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mZoomEnabled:Z

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->update()V

    return-void
.end method

.method public update()V
    .locals 2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->mZoomEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->resetMatrix()V

    goto :goto_0
.end method
