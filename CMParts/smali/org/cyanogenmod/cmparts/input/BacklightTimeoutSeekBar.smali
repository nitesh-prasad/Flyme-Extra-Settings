.class public Lorg/cyanogenmod/cmparts/input/BacklightTimeoutSeekBar;
.super Landroid/widget/SeekBar;
.source "BacklightTimeoutSeekBar.java"


# instance fields
.field private mGap:I

.field private mMax:I

.field private mUpdatingThumb:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/input/BacklightTimeoutSeekBar;->mUpdatingThumb:Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/input/BacklightTimeoutSeekBar;->mUpdatingThumb:Z

    return-void
.end method

.method public setMax(I)V
    .locals 1

    iput p1, p0, Lorg/cyanogenmod/cmparts/input/BacklightTimeoutSeekBar;->mMax:I

    div-int/lit8 v0, p1, 0xa

    iput v0, p0, Lorg/cyanogenmod/cmparts/input/BacklightTimeoutSeekBar;->mGap:I

    iget v0, p0, Lorg/cyanogenmod/cmparts/input/BacklightTimeoutSeekBar;->mGap:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/input/BacklightTimeoutSeekBar;->mUpdatingThumb:Z

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/input/BacklightTimeoutSeekBar;->mUpdatingThumb:Z

    return-void
.end method

.method protected updateTouchProgress(II)I
    .locals 2

    iget v0, p0, Lorg/cyanogenmod/cmparts/input/BacklightTimeoutSeekBar;->mMax:I

    if-ge p2, v0, :cond_0

    return p2

    :cond_0
    iget v0, p0, Lorg/cyanogenmod/cmparts/input/BacklightTimeoutSeekBar;->mMax:I

    iget v1, p0, Lorg/cyanogenmod/cmparts/input/BacklightTimeoutSeekBar;->mGap:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_1

    iget v0, p0, Lorg/cyanogenmod/cmparts/input/BacklightTimeoutSeekBar;->mMax:I

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/BacklightTimeoutSeekBar;->getMax()I

    move-result v0

    return v0
.end method
