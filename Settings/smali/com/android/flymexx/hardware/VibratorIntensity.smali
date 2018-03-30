.class public Lcom/android/flymexx/hardware/VibratorIntensity;
.super Lcom/android/flymexx/CustomDialogPreference;
.source "VibratorIntensity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mDefaultValue:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mOriginalValue:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressThumb:Landroid/graphics/drawable/Drawable;

.field private mRedFilter:Landroid/graphics/LightingColorFilter;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mValueText:Landroid/widget/TextView;

.field private mWarningText:Landroid/widget/TextView;

.field private mWarningValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f04018b

    invoke-virtual {p0, v0}, Lcom/android/flymexx/hardware/VibratorIntensity;->setDialogLayoutResource(I)V

    return-void
.end method

.method private static intensityToPercent(III)I
    .locals 4

    sub-int v1, p2, p0

    int-to-float v1, v1

    sub-int v2, p1, p0

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v2, v3, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    const/16 v0, 0x64

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setVibratorIntensity(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/flymexx/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcyanogenmod/hardware/CMHardwareManager;->setVibratorIntensity(I)Z

    return-void
.end method

.method private testVibration()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/flymexx/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lcom/android/flymexx/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    const v4, 0x10203d7

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    const v4, 0x7f1102b5

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mValueText:Landroid/widget/TextView;

    const v4, 0x7f1102b6

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mWarningText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/flymexx/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorIntensity()I

    move-result v4

    iput v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mOriginalValue:I

    invoke-virtual {v0}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorWarningIntensity()I

    move-result v4

    iput v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mWarningValue:I

    invoke-virtual {v0}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorMinIntensity()I

    move-result v4

    iput v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mMinValue:I

    invoke-virtual {v0}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorMaxIntensity()I

    move-result v4

    iput v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mMaxValue:I

    invoke-virtual {v0}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorDefaultIntensity()I

    move-result v4

    iput v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mDefaultValue:I

    invoke-virtual {p0}, Lcom/android/flymexx/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mMinValue:I

    iget v7, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mMaxValue:I

    iget v8, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mWarningValue:I

    invoke-static {v6, v7, v8}, Lcom/android/flymexx/hardware/VibratorIntensity;->intensityToPercent(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const v6, 0x7f0c0233

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mWarningText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mWarningValue:I

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mWarningText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v4, v3, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_1

    move-object v1, v3

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const v4, 0x102000d

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/LightingColorFilter;

    invoke-virtual {p0}, Lcom/android/flymexx/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/high16 v6, -0x1000000

    invoke-direct {v4, v6, v5}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mRedFilter:Landroid/graphics/LightingColorFilter;

    iget-object v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mMaxValue:I

    iget v6, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mMinValue:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mOriginalValue:I

    iget v6, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mMinValue:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/flymexx/CustomDialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iget v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mMinValue:I

    add-int v0, v3, v4

    iget v3, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mMinValue:I

    iget v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mMaxValue:I

    invoke-static {v3, v4, v0}, Lcom/android/flymexx/hardware/VibratorIntensity;->intensityToPercent(III)I

    move-result v1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "vibrator_intensity"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/android/flymexx/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "vibrator_intensity"

    invoke-static {v3, v4, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mOriginalValue:I

    invoke-direct {p0, v3}, Lcom/android/flymexx/hardware/VibratorIntensity;->setVibratorIntensity(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "vibrator_intensity"

    iget v5, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mOriginalValue:I

    invoke-static {v3, v4, v5}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected onDismissDialog(Landroid/content/DialogInterface;I)Z
    .locals 3

    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mDefaultValue:I

    iget v2, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mMinValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget v0, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mDefaultValue:I

    invoke-direct {p0, v0}, Lcom/android/flymexx/hardware/VibratorIntensity;->setVibratorIntensity(I)V

    invoke-direct {p0}, Lcom/android/flymexx/hardware/VibratorIntensity;->testVibration()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    const v0, 0x7f0c0234

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget v2, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mMinValue:I

    add-int v0, p2, v2

    iget v2, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mWarningValue:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mWarningValue:I

    if-lt v0, v2, :cond_3

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mRedFilter:Landroid/graphics/LightingColorFilter;

    :goto_1
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    iget-object v2, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mRedFilter:Landroid/graphics/LightingColorFilter;

    :cond_1
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    iget-object v2, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mValueText:Landroid/widget/TextView;

    const-string/jumbo v3, "%d%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mMinValue:I

    iget v6, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mMaxValue:I

    invoke-static {v5, v6, v0}, Lcom/android/flymexx/hardware/VibratorIntensity;->intensityToPercent(III)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    move-object v2, v3

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/flymexx/hardware/VibratorIntensity;->mMinValue:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/flymexx/hardware/VibratorIntensity;->setVibratorIntensity(I)V

    invoke-direct {p0}, Lcom/android/flymexx/hardware/VibratorIntensity;->testVibration()V

    return-void
.end method
