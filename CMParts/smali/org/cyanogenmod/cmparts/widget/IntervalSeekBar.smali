.class public Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;
.super Landroid/widget/SeekBar;
.source "IntervalSeekBar.java"


# instance fields
.field private mDefault:F

.field private mMax:F

.field private mMin:F

.field private mMultiplier:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v3, Lorg/cyanogenmod/cmparts/R$styleable;->IntervalSeekBar:[I

    invoke-virtual {p1, p2, v3, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v3, 0x2

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->mMax:F

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->mMin:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->mDefault:F

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, p0, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->mMultiplier:F

    iget v3, p0, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->mMin:F

    iget v4, p0, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->mMax:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget v2, p0, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->mMax:F

    iget v3, p0, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->mMin:F

    iput v3, p0, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->mMax:F

    iput v2, p0, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->mMin:F

    :cond_0
    iget v3, p0, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->mMax:F

    invoke-direct {p0, v3}, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->convertFloatToProgress(F)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->setMax(I)V

    iget v3, p0, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->mDefault:F

    invoke-virtual {p0, v3}, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->setProgressFloat(F)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private convertFloatToProgress(F)I
    .locals 2

    iget v0, p0, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->mMin:F

    sub-float v0, p1, v0

    iget v1, p0, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->mMultiplier:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getProgressFloat()F
    .locals 2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->mMultiplier:F

    div-float/2addr v0, v1

    iget v1, p0, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->mMin:F

    add-float/2addr v0, v1

    return v0
.end method

.method public setMaximum(F)V
    .locals 1

    iput p1, p0, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->mMax:F

    iget v0, p0, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->mMax:F

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->convertFloatToProgress(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->setMax(I)V

    return-void
.end method

.method public setMinimum(F)V
    .locals 0

    iput p1, p0, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->mMin:F

    return-void
.end method

.method public setProgressFloat(F)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->convertFloatToProgress(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->setProgress(I)V

    return-void
.end method
