.class Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;
.super Ljava/lang/Object;
.source "PictureAdjustment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorSeekBar"
.end annotation


# instance fields
.field private mIndex:I

.field private mRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeekBar:Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;

.field private mValue:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;Landroid/util/Range;Landroid/widget/TextView;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/widget/TextView;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->this$0:Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->mSeekBar:Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;

    iput-object p4, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->mValue:Landroid/widget/TextView;

    iput p5, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->mIndex:I

    iput-object p3, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->mRange:Landroid/util/Range;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->mSeekBar:Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;

    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->setMinimum(F)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->mSeekBar:Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;

    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->setMaximum(F)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->mSeekBar:Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;

    invoke-virtual {v0, p0}, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private getLabel(F)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->mRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const-string/jumbo v0, "%d%%"

    new-array v1, v2, [Ljava/lang/Object;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "%d"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    move-object v1, p1

    check-cast v1, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;

    invoke-virtual {v1}, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->getProgressFloat()F

    move-result v0

    if-eqz p3, :cond_0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->this$0:Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;

    invoke-static {v2}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->-get0(Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;)[F

    move-result-object v3

    iget v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->mIndex:I

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->this$0:Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;

    invoke-static {v2}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->-get1(Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;)Ljava/util/List;

    move-result-object v2

    iget v5, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->mIndex:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v3, v4

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->this$0:Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->this$0:Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;

    invoke-static {v3}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->-get0(Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;)[F

    move-result-object v3

    invoke-static {v2, v3}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->-wrap0(Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;[F)V

    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->mValue:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->this$0:Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;

    invoke-static {v3}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->-get0(Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;)[F

    move-result-object v3

    iget v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->mIndex:I

    aget v3, v3, v4

    invoke-direct {p0, v3}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->getLabel(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public setValue(F)V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->mSeekBar:Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->setProgressFloat(F)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->mValue:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->getLabel(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
