.class public Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static mDensity:F


# instance fields
.field private ALPHA_PANEL_HEIGHT:F

.field private HUE_PANEL_WIDTH:F

.field private PALETTE_CIRCLE_TRACKER_RADIUS:F

.field private PANEL_SPACING:F

.field private RECTANGLE_TRACKER_OFFSET:F

.field private mAlpha:I

.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mAlphaPattern:Lorg/cyanogenmod/cmparts/notificationlight/AlphaPatternDrawable;

.field private mAlphaRect:Landroid/graphics/RectF;

.field private mAlphaShader:Landroid/graphics/Shader;

.field private mAlphaSliderText:Ljava/lang/String;

.field private mAlphaTextPaint:Landroid/graphics/Paint;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mDrawingOffset:F

.field private mDrawingRect:Landroid/graphics/RectF;

.field private mHue:F

.field private mHuePaint:Landroid/graphics/Paint;

.field private mHueRect:Landroid/graphics/RectF;

.field private mHueShader:Landroid/graphics/Shader;

.field private mHueTrackerPaint:Landroid/graphics/Paint;

.field private mLastTouchedPanel:I

.field private mListener:Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView$OnColorChangedListener;

.field private mSat:F

.field private mSatShader:Landroid/graphics/Shader;

.field private mSatValPaint:Landroid/graphics/Paint;

.field private mSatValRect:Landroid/graphics/RectF;

.field private mSatValTrackerPaint:Landroid/graphics/Paint;

.field private mShowAlphaPanel:Z

.field private mSliderTrackerColor:I

.field private mStartTouchPoint:Landroid/graphics/Point;

.field private mVal:F

.field private mValShader:Landroid/graphics/Shader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDensity:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->HUE_PANEL_WIDTH:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->PANEL_SPACING:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    const/16 v0, 0xff

    iput v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlpha:I

    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHue:F

    iput v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSat:F

    iput v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mVal:F

    const-string/jumbo v0, "Alpha"

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    const v0, -0xe3e3e4

    iput v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSliderTrackerColor:I

    const v0, -0x919192

    iput v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mBorderColor:I

    iput-boolean v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    iput v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mLastTouchedPanel:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->init()V

    return-void
.end method

.method private alphaToPoint(I)Landroid/graphics/Point;
    .locals 5

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    int-to-float v3, p1

    mul-float/2addr v3, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    sub-float v3, v2, v3

    iget v4, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method private buildHueColorArray()[I
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v3, 0x169

    new-array v1, v3, [I

    const/4 v0, 0x0

    array-length v3, v1

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_0

    const/4 v3, 0x3

    new-array v3, v3, [F

    int-to-float v4, v2

    aput v4, v3, v6

    const/4 v4, 0x1

    aput v5, v3, v4

    const/4 v4, 0x2

    aput v5, v3, v4

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v1, v0

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private calculateRequiredOffset()F
    .locals 3

    iget v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sget v1, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v0

    return v1
.end method

.method private chooseHeight(II)I
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_1

    :cond_0
    return p2

    :cond_1
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->getPrefferedHeight()I

    move-result v0

    return v0
.end method

.method private chooseWidth(II)I
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_1

    :cond_0
    return p2

    :cond_1
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->getPrefferedWidth()I

    move-result v0

    return v0
.end method

.method private drawAlphaPanel(Landroid/graphics/Canvas;)V
    .locals 13

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaPattern:Lorg/cyanogenmod/cmparts/notificationlight/AlphaPatternDrawable;

    if-eqz v0, :cond_0

    iget-object v11, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v11, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    iget v0, v11, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v0, v2

    iget v0, v11, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v0

    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaPattern:Lorg/cyanogenmod/cmparts/notificationlight/AlphaPatternDrawable;

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/cmparts/notificationlight/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x3

    new-array v8, v0, [F

    iget v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHue:F

    const/4 v1, 0x0

    aput v0, v8, v1

    iget v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSat:F

    const/4 v1, 0x1

    aput v0, v8, v1

    iget v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mVal:F

    const/4 v1, 0x2

    aput v0, v8, v1

    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    const/4 v0, 0x0

    invoke-static {v0, v8}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v11, Landroid/graphics/RectF;->left:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    iget v3, v11, Landroid/graphics/RectF;->right:F

    iget v4, v11, Landroid/graphics/RectF;->top:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    const-string/jumbo v1, ""

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sget v3, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDensity:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    sget v0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDensity:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v12, v0, v1

    iget v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlpha:I

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->alphaToPoint(I)Landroid/graphics/Point;

    move-result-object v9

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sub-float/2addr v0, v12

    iput v0, v10, Landroid/graphics/RectF;->left:F

    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    add-float/2addr v0, v12

    iput v0, v10, Landroid/graphics/RectF;->right:F

    iget v0, v11, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v0, v1

    iput v0, v10, Landroid/graphics/RectF;->top:F

    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v0, v1

    iput v0, v10, Landroid/graphics/RectF;->bottom:F

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x40000000    # 2.0f

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawHuePanel(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v6, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v10, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v4

    iget v0, v10, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v4

    iget v0, v10, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v4

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->left:F

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->buildHueColorArray()[I

    move-result-object v5

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    sget v0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDensity:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    div-float v11, v0, v12

    iget v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHue:F

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->hueToPoint(F)Landroid/graphics/Point;

    move-result-object v8

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iget v0, v10, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v0, v1

    iput v0, v9, Landroid/graphics/RectF;->left:F

    iget v0, v10, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v0, v1

    iput v0, v9, Landroid/graphics/RectF;->right:F

    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    sub-float/2addr v0, v11

    iput v0, v9, Landroid/graphics/RectF;->top:F

    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    add-float/2addr v0, v11

    iput v0, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v12, v12, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSatValPanel(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHue:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v1, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v11

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v0, v10, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v0

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->left:F

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, -0x1

    const/high16 v6, -0x1000000

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    :cond_1
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->right:F

    iget v4, v10, Landroid/graphics/RectF;->top:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, -0x1

    move v6, v11

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    new-instance v8, Landroid/graphics/ComposeShader;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v0, v1, v2}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSat:F

    iget v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mVal:F

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->satValToPoint(FF)Landroid/graphics/Point;

    move-result-object v9

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    sget v3, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getPrefferedHeight()I
    .locals 4

    sget v1, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDensity:F

    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    iget-boolean v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->PANEL_SPACING:F

    iget v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    :cond_0
    return v0
.end method

.method private getPrefferedWidth()I
    .locals 4

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->getPrefferedHeight()I

    move-result v0

    iget-boolean v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->PANEL_SPACING:F

    iget v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    :cond_0
    int-to-float v1, v0

    iget v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v1, v2

    iget v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private hueToPoint(F)Landroid/graphics/Point;
    .locals 5

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    mul-float v3, p1, v0

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    return-object v1
.end method

.method private init()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDensity:F

    iget v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    sget v1, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sget v1, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    iget v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->HUE_PANEL_WIDTH:F

    sget v1, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->HUE_PANEL_WIDTH:F

    iget v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sget v1, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    iget v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->PANEL_SPACING:F

    sget v1, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->PANEL_SPACING:F

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->calculateRequiredOffset()F

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDrawingOffset:F

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->initPaintTools()V

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->setClickable(Z)V

    return-void
.end method

.method private initPaintTools()V
    .locals 4

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    sget v1, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSliderTrackerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    sget v1, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const v1, -0xe3e3e4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    sget v1, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDensity:F

    const/high16 v2, 0x41600000    # 14.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method private moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    if-nez v4, :cond_0

    return v7

    :cond_0
    const/4 v3, 0x0

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v1, v4, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v2, v4, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v8, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mLastTouchedPanel:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v4}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->pointToHue(F)F

    move-result v4

    iput v4, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHue:F

    const/4 v3, 0x1

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget-object v4, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_3

    iput v7, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mLastTouchedPanel:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->pointToSatVal(FF)[F

    move-result-object v0

    aget v4, v0, v7

    iput v4, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSat:F

    aget v4, v0, v8

    iput v4, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mVal:F

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    iput v4, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mLastTouchedPanel:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->pointToAlpha(I)I

    move-result v4

    iput v4, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlpha:I

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private pointToAlpha(I)I
    .locals 4

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v1, v2

    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 p1, 0x0

    :goto_0
    mul-int/lit16 v2, p1, 0xff

    div-int/2addr v2, v1

    rsub-int v2, v2, 0xff

    return v2

    :cond_0
    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    sub-int/2addr p1, v2

    goto :goto_0
.end method

.method private pointToHue(F)F
    .locals 4

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v2, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    const/4 p1, 0x0

    :goto_0
    mul-float v2, p1, v3

    div-float/2addr v2, v0

    sub-float v2, v3, v2

    return v2

    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v2

    goto :goto_0
.end method

.method private pointToSatVal(FF)[F
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    const/4 v4, 0x2

    new-array v2, v4, [F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v4, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    const/4 p1, 0x0

    :goto_0
    iget v4, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v4, p2, v4

    if-gez v4, :cond_2

    const/4 p2, 0x0

    :goto_1
    div-float v4, v6, v3

    mul-float/2addr v4, p1

    const/4 v5, 0x0

    aput v4, v2, v5

    div-float v4, v6, v0

    mul-float/2addr v4, p2

    sub-float v4, v6, v4

    const/4 v5, 0x1

    aput v4, v2, v5

    return-object v2

    :cond_0
    iget v4, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    iget v4, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v4

    goto :goto_0

    :cond_2
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_3

    move p2, v0

    goto :goto_1

    :cond_3
    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v4

    goto :goto_1
.end method

.method private satValToPoint(FF)Landroid/graphics/Point;
    .locals 6

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    mul-float v4, p1, v3

    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->x:I

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p2

    mul-float/2addr v4, v0

    iget v5, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->y:I

    return-object v1
.end method

.method private setUpAlphaRect()V
    .locals 10

    const/high16 v7, 0x3f800000    # 1.0f

    iget-boolean v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v5, v7

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v5, v6

    add-float v4, v5, v7

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v5, v7

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v7

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    new-instance v5, Lorg/cyanogenmod/cmparts/notificationlight/AlphaPatternDrawable;

    sget v6, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDensity:F

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v5, v6}, Lorg/cyanogenmod/cmparts/notificationlight/AlphaPatternDrawable;-><init>(I)V

    iput-object v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaPattern:Lorg/cyanogenmod/cmparts/notificationlight/AlphaPatternDrawable;

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaPattern:Lorg/cyanogenmod/cmparts/notificationlight/AlphaPatternDrawable;

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/cyanogenmod/cmparts/notificationlight/AlphaPatternDrawable;->setBounds(IIII)V

    return-void
.end method

.method private setUpHueRect()V
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v5, v6

    add-float v2, v5, v8

    iget v5, v1, Landroid/graphics/RectF;->top:F

    add-float v4, v5, v8

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v5, v8

    iget-boolean v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->PANEL_SPACING:F

    iget v7, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v5, v7

    :goto_0
    sub-float v0, v6, v5

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v8

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setUpSatValRect()V
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    sub-float v3, v6, v7

    iget-boolean v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->PANEL_SPACING:F

    iget v7, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v6, v7

    sub-float/2addr v3, v6

    :cond_0
    iget v6, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v6, v8

    iget v6, v1, Landroid/graphics/RectF;->top:F

    add-float v5, v6, v8

    add-float v0, v5, v3

    add-float v4, v2, v3

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v2, v5, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 4

    iget v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlpha:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    iget v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHue:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSat:F

    const/4 v3, 0x1

    aput v2, v1, v3

    iget v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mVal:F

    const/4 v3, 0x2

    aput v2, v1, v3

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public isAlphaSliderVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->drawSatValPanel(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->drawHuePanel(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->drawAlphaPanel(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-direct {p0, v5, v4}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->chooseWidth(II)I

    move-result v4

    invoke-direct {p0, v2, v1}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->chooseHeight(II)I

    move-result v1

    iget-boolean v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v6, :cond_1

    int-to-float v6, v4

    iget v7, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->PANEL_SPACING:F

    sub-float/2addr v6, v7

    iget v7, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v6, v7

    float-to-int v0, v6

    if-le v0, v1, :cond_0

    if-eqz v2, :cond_0

    move v0, v1

    int-to-float v6, v1

    iget v7, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v6, v7

    iget v7, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v6, v7

    float-to-int v3, v6

    :goto_0
    invoke-virtual {p0, v3, v0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    int-to-float v6, v1

    iget v7, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v6, v7

    iget v7, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v6, v7

    float-to-int v3, v6

    if-le v3, v4, :cond_2

    if-eqz v5, :cond_2

    move v3, v4

    int-to-float v6, v4

    iget v7, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v6, v7

    iget v7, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v6, v7

    float-to-int v0, v6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDrawingOffset:F

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    iget v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDrawingOffset:F

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    iget v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->setUpSatValRect()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->setUpHueRect()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->setUpAlphaRect()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->requestFocus()Z

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mListener:Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView$OnColorChangedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mListener:Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView$OnColorChangedListener;

    iget v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlpha:I

    const/4 v3, 0x3

    new-array v3, v3, [F

    iget v4, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHue:F

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSat:F

    aput v4, v3, v6

    iget v4, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mVal:F

    const/4 v5, 0x2

    aput v4, v3, v5

    invoke-static {v2, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v2

    invoke-interface {v1, v2}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->invalidate()V

    return v6

    :pswitch_0
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iput-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v13, 0x0

    const/high16 v12, 0x42480000    # 50.0f

    const/high16 v11, 0x41200000    # 10.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    iget v7, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mLastTouchedPanel:I

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v3, :cond_c

    iget-object v7, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mListener:Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView$OnColorChangedListener;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mListener:Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView$OnColorChangedListener;

    iget v8, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlpha:I

    const/4 v9, 0x3

    new-array v9, v9, [F

    iget v10, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHue:F

    aput v10, v9, v13

    iget v10, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSat:F

    const/4 v11, 0x1

    aput v10, v9, v11

    iget v10, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mVal:F

    const/4 v11, 0x2

    aput v10, v9, v11

    invoke-static {v8, v9}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v8

    invoke-interface {v7, v8}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    :cond_1
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->invalidate()V

    const/4 v7, 0x1

    return v7

    :pswitch_0
    iget v7, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSat:F

    div-float v8, v5, v12

    add-float v2, v7, v8

    iget v7, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mVal:F

    div-float v8, v6, v12

    sub-float v4, v7, v8

    cmpg-float v7, v2, v9

    if-gez v7, :cond_4

    const/4 v2, 0x0

    :cond_2
    :goto_1
    cmpg-float v7, v4, v9

    if-gez v7, :cond_5

    const/4 v4, 0x0

    :cond_3
    :goto_2
    iput v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSat:F

    iput v4, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mVal:F

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    cmpl-float v7, v2, v10

    if-lez v7, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    cmpl-float v7, v4, v10

    if-lez v7, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :pswitch_1
    iget v7, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHue:F

    mul-float v8, v6, v11

    sub-float v1, v7, v8

    cmpg-float v7, v1, v9

    if-gez v7, :cond_7

    const/4 v1, 0x0

    :cond_6
    :goto_3
    iput v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHue:F

    const/4 v3, 0x1

    goto :goto_0

    :cond_7
    const/high16 v7, 0x43b40000    # 360.0f

    cmpl-float v7, v1, v7

    if-lez v7, :cond_6

    const/high16 v1, 0x43b40000    # 360.0f

    goto :goto_3

    :pswitch_2
    iget-boolean v7, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-nez v7, :cond_9

    :cond_8
    const/4 v3, 0x0

    goto :goto_0

    :cond_9
    iget v7, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlpha:I

    int-to-float v7, v7

    mul-float v8, v5, v11

    sub-float/2addr v7, v8

    float-to-int v0, v7

    if-gez v0, :cond_b

    const/4 v0, 0x0

    :cond_a
    :goto_4
    iput v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlpha:I

    const/4 v3, 0x1

    goto :goto_0

    :cond_b
    const/16 v7, 0xff

    if-le v0, v7, :cond_a

    const/16 v0, 0xff

    goto :goto_4

    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mShowAlphaPanel:Z

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->setColor(IZ)V

    return-void
.end method

.method public setColor(IZ)V
    .locals 12

    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    new-array v3, v7, [F

    invoke-static {v4, v2, v1, v3}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    iput v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlpha:I

    aget v5, v3, v9

    iput v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHue:F

    aget v5, v3, v10

    iput v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSat:F

    aget v5, v3, v11

    iput v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mVal:F

    if-eqz p2, :cond_0

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mListener:Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView$OnColorChangedListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mListener:Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView$OnColorChangedListener;

    iget v6, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mAlpha:I

    new-array v7, v7, [F

    iget v8, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mHue:F

    aput v8, v7, v9

    iget v8, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mSat:F

    aput v8, v7, v10

    iget v8, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mVal:F

    aput v8, v7, v11

    invoke-static {v6, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    invoke-interface {v5, v6}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setOnColorChangedListener(Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView;->mListener:Lorg/cyanogenmod/cmparts/notificationlight/ColorPickerView$OnColorChangedListener;

    return-void
.end method
