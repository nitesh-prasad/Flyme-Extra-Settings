.class Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;
.super Ljava/lang/Object;
.source "DisplayTemperature.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorTemperatureSeekBar"
.end annotation


# instance fields
.field private final mBalanceCurve:[D

.field private final mBalanceMax:I

.field private final mBalanceMin:I

.field private final mBarMax:I

.field private final mMax:I

.field private final mMin:I

.field private final mSeekBar:Landroid/widget/SeekBar;

.field private final mUseBalance:Z

.field private final mValue:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;Landroid/widget/SeekBar;Landroid/widget/TextView;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v7, 0x0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->this$0:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iput-object p3, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mValue:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->-get0(Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayConfig;->getColorTemperatureRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mMin:I

    invoke-static {p1}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->-get0(Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayConfig;->getColorTemperatureRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mMax:I

    invoke-static {p1}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->-get0(Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayConfig;->getColorBalanceRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceMin:I

    invoke-static {p1}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->-get0(Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayConfig;->getColorBalanceRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceMax:I

    invoke-static {p1}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->-get0(Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceMin:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceMax:I

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mUseBalance:Z

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mUseBalance:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mMin:I

    int-to-double v0, v0

    invoke-static {p1}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->-get0(Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcyanogenmod/hardware/LiveDisplayConfig;->getDefaultDayTemperature()I

    move-result v2

    int-to-double v2, v2

    iget v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mMax:I

    int-to-double v4, v4

    invoke-static/range {v0 .. v5}, Lorg/cyanogenmod/internal/util/MathUtils;->powerCurve(DDD)[D

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceCurve:[D

    iget v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceMax:I

    iget v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceMin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBarMax:I

    :goto_1
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBarMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0, v6, v7}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    return-void

    :cond_1
    move v0, v7

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceCurve:[D

    iget v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mMax:I

    iget v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mMin:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBarMax:I

    goto :goto_1
.end method


# virtual methods
.method public getTemperature()I
    .locals 6

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mUseBalance:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceCurve:[D

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-double v2, v1

    iget v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBarMax:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lorg/cyanogenmod/internal/util/MathUtils;->linearToPowerCurve([DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mMin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 9

    const/4 v8, 0x1

    if-eqz p3, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->this$0:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;

    invoke-static {v1, v8}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->-wrap0(Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;Z)V

    :cond_0
    iget-boolean v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mUseBalance:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->this$0:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceCurve:[D

    int-to-double v4, p2

    iget v3, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBarMax:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    invoke-static {v2, v4, v5}, Lorg/cyanogenmod/internal/util/MathUtils;->linearToPowerCurve([DD)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->roundUp(I)I

    move-result v0

    :goto_0
    const-string/jumbo v1, "DisplayTemperature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProgressChanged: progress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " displayValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mValue:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->this$0:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;

    invoke-static {v2}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->-get1(Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0801cd

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    mul-int/lit8 v1, p2, 0x64

    iget v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mMin:I

    add-int v0, v1, v2

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public setTemperature(I)V
    .locals 6

    iget-boolean v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mUseBalance:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceCurve:[D

    int-to-double v4, p1

    invoke-static {v1, v4, v5}, Lorg/cyanogenmod/internal/util/MathUtils;->powerCurveToLinear([DD)D

    move-result-wide v2

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBarMax:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void

    :cond_0
    iget v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mMin:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mMin:I

    sub-int v0, v1, v4

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    int-to-float v4, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
