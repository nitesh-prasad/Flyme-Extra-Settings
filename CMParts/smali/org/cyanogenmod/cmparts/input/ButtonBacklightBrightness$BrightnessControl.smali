.class Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;
.super Ljava/lang/Object;
.source "ButtonBacklightBrightness.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessControl"
.end annotation


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDefaultBrightness:I

.field private mIsSingleValue:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSetting:Ljava/lang/String;

.field private mValue:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;Ljava/lang/String;Z)V
    .locals 1

    const/16 v0, 0xff

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;-><init>(Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;Ljava/lang/String;ZI)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->this$0:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mSetting:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mIsSingleValue:Z

    iput p4, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mDefaultBrightness:I

    return-void
.end method

.method private handleBrightnessUpdate(I)V
    .locals 5

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->this$0:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->-wrap0(Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mValue:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mValue:Landroid/widget/TextView;

    const-string/jumbo v1, "%d%%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    mul-int/lit8 v3, p1, 0x64

    div-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->this$0:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->-wrap1(Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;)V

    return-void
.end method


# virtual methods
.method public applyBrightness()V
    .locals 3

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->this$0:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->-get0(Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mSetting:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public getBrightness(Z)I
    .locals 3

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->this$0:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->-get0(Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mSetting:Ljava/lang/String;

    iget v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mDefaultBrightness:I

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mDefaultBrightness:I

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public init(Landroid/view/ViewGroup;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v0

    iget-boolean v1, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mIsSingleValue:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0c0059

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0c0058

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_1
    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->handleBrightnessUpdate(I)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    const v1, 0x7f0c0057

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0c005c

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    const v1, 0x7f0c005b

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mValue:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->this$0:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;

    invoke-static {v0, p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->-set0(Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;)Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->this$0:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->-wrap0(Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->this$0:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->-wrap1(Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->handleBrightnessUpdate(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->this$0:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;

    invoke-static {v0, p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->-set0(Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;)Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mDefaultBrightness:I

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->setBrightness(I)V

    return-void
.end method

.method public setBrightness(I)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mIsSingleValue:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
