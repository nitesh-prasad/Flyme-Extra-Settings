.class public Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;
.super Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;
.source "DisplayColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;,
        Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference",
        "<",
        "Landroid/app/AlertDialog;",
        ">;"
    }
.end annotation


# static fields
.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_VALUE_ID:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentColors:[F

.field private final mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

.field private final mOriginalColors:[F

.field private mSeekBars:[Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;)[F
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mCurrentColors:[F

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->updateColors([F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const v0, 0x7f0c0078

    const v1, 0x7f0c007b

    const v2, 0x7f0c007e

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->SEEKBAR_ID:[I

    const v0, 0x7f0c0077

    const v1, 0x7f0c007a

    const v2, 0x7f0c007d

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->SEEKBAR_VALUE_ID:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mSeekBars:[Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;

    new-array v0, v1, [F

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mCurrentColors:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mOriginalColors:[F

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcyanogenmod/hardware/LiveDisplayManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/LiveDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->setDialogLayoutResource(I)V

    return-void
.end method

.method private updateColors([F)V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v0, p1}, Lcyanogenmod/hardware/LiveDisplayManager;->setColorAdjustment([F)Z

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v4}, Lcyanogenmod/hardware/LiveDisplayManager;->getColorAdjustment()[F

    move-result-object v4

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mOriginalColors:[F

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([FI[FII)V

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mOriginalColors:[F

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mCurrentColors:[F

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([FI[FII)V

    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->SEEKBAR_ID:[I

    array-length v4, v4

    if-ge v0, v4, :cond_0

    sget-object v4, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->SEEKBAR_ID:[I

    aget v4, v4, v0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;

    sget-object v4, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->SEEKBAR_VALUE_ID:[I

    aget v4, v4, v0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mSeekBars:[Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;

    new-instance v5, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;

    invoke-direct {v5, p0, v2, v3, v0}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;-><init>(Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;Landroid/widget/TextView;I)V

    aput-object v5, v4, v0

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mSeekBars:[Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;

    aget-object v4, v4, v0

    invoke-static {v4}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;->-get0(Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;)Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;

    move-result-object v4

    const v5, 0x3dcccccd    # 0.1f

    invoke-virtual {v4, v5}, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->setMinimum(F)V

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mSeekBars:[Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;

    aget-object v4, v4, v0

    invoke-static {v4}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;->-get0(Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;)Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->setMaximum(F)V

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mSeekBars:[Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;

    aget-object v4, v4, v0

    invoke-static {v4}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;->-get0(Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;)Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;

    move-result-object v4

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mCurrentColors:[F

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->setProgressFloat(F)V

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mCurrentColors:[F

    aget v4, v4, v0

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    const-string/jumbo v4, "%d%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mCurrentColors:[F

    :goto_0
    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->updateColors([F)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mOriginalColors:[F

    goto :goto_0
.end method

.method protected onDismissDialog(Landroid/app/AlertDialog;I)Z
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, -0x3

    if-ne p2, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mSeekBars:[Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mSeekBars:[Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;->-get0(Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;)Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->setProgressFloat(F)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mCurrentColors:[F

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mCurrentColors:[F

    invoke-direct {p0, v1}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->updateColors([F)V

    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method protected bridge synthetic onDismissDialog(Landroid/content/DialogInterface;I)Z
    .locals 1

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p0, p1, p2}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->onDismissDialog(Landroid/app/AlertDialog;I)Z

    move-result v0

    return v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$1;-><init>(Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;)V

    const v1, 0x7f08017e

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$SavedState;

    invoke-virtual {v1}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v2, v1, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$SavedState;->originalColors:[F

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mOriginalColors:[F

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    iget-object v2, v1, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$SavedState;->currentColors:[F

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mCurrentColors:[F

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mSeekBars:[Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mSeekBars:[Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;->-get0(Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$ColorSeekBar;)Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;

    move-result-object v2

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mCurrentColors:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;->setProgressFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_1
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mCurrentColors:[F

    invoke-direct {p0, v2}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->updateColors([F)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->getDialog()Landroid/content/DialogInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->getDialog()Landroid/content/DialogInterface;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$SavedState;

    invoke-direct {v0, v1}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mCurrentColors:[F

    iput-object v2, v0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$SavedState;->currentColors:[F

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mOriginalColors:[F

    iput-object v2, v0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor$SavedState;->originalColors:[F

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->mOriginalColors:[F

    invoke-direct {p0, v2}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;->updateColors([F)V

    return-object v0

    :cond_0
    return-object v1
.end method
