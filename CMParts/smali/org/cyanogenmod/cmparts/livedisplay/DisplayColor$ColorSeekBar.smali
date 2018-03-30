.class Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;
.super Ljava/lang/Object;
.source "DisplayColor.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorSeekBar"
.end annotation


# instance fields
.field private mIndex:I

.field private final mSeekBar:Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;

.field private mValue:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;)Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;

    return-object v0
.end method

.method public constructor <init>(Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;Landroid/widget/TextView;I)V
    .locals 1

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;->this$0:Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;

    iput-object p3, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;->mValue:Landroid/widget/TextView;

    iput p4, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;->mIndex:I

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;

    invoke-virtual {v0, p0}, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v1, p1

    check-cast v1, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;

    invoke-virtual {v1}, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->getProgressFloat()F

    move-result v0

    if-eqz p3, :cond_0

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;->this$0:Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;

    invoke-static {v4}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->-get0(Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;)[F

    move-result-object v4

    iget v5, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;->mIndex:I

    cmpl-float v6, v0, v3

    if-lez v6, :cond_1

    :goto_0
    aput v3, v4, v5

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;->this$0:Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;->this$0:Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;

    invoke-static {v4}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->-get0(Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;)[F

    move-result-object v4

    invoke-static {v3, v4}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->-wrap0(Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;[F)V

    :cond_0
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;->mValue:Landroid/widget/TextView;

    const-string/jumbo v4, "%d%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    move v3, v0

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
