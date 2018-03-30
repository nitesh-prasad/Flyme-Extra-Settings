.class public Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;
.super Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;
.source "PictureAdjustment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;,
        Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$SavedState;
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

.field private final mCurrentAdj:[F

.field private final mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

.field private final mOriginalAdj:[F

.field private final mRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSeekBars:[Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;)[F
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mRanges:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->updateAdjustment([F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const v0, 0x7f0c0082

    const v1, 0x7f0c0085

    const v2, 0x7f0c0088

    const v3, 0x7f0c008b

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->SEEKBAR_ID:[I

    const v0, 0x7f0c0081

    const v1, 0x7f0c0084

    const v2, 0x7f0c0087

    const v3, 0x7f0c008a

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->SEEKBAR_VALUE_ID:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x5

    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mSeekBars:[Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;

    new-array v0, v1, [F

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mOriginalAdj:[F

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcyanogenmod/hardware/LiveDisplayManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/LiveDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayManager;->getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayConfig;->getPictureAdjustmentRanges()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mRanges:Ljava/util/List;

    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->setDialogLayoutResource(I)V

    return-void
.end method

.method private updateAdjustment([F)V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-static {p1}, Lcyanogenmod/hardware/HSIC;->fromFloatArray([F)Lcyanogenmod/hardware/HSIC;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/LiveDisplayManager;->setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z

    return-void
.end method

.method private updateBars()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->SEEKBAR_ID:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mSeekBars:[Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;->setValue(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayManager;->getPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/HSIC;->toFloatArray()[F

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mOriginalAdj:[F

    invoke-static {v0, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy([FI[FII)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mOriginalAdj:[F

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    invoke-static {v0, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy([FI[FII)V

    const/4 v5, 0x0

    :goto_0
    sget-object v0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->SEEKBAR_ID:[I

    array-length v0, v0

    if-ge v5, v0, :cond_0

    sget-object v0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->SEEKBAR_ID:[I

    aget v0, v0, v5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;

    sget-object v0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->SEEKBAR_VALUE_ID:[I

    aget v0, v0, v5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mRanges:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mSeekBars:[Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;

    new-instance v0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$ColorSeekBar;-><init>(Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;Lorg/cyanogenmod/cmparts/widget/IntervalSeekBar;Landroid/util/Range;Landroid/widget/TextView;I)V

    aput-object v0, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->updateBars()V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    :goto_0
    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->updateAdjustment([F)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mOriginalAdj:[F

    goto :goto_0
.end method

.method protected onDismissDialog(Landroid/app/AlertDialog;I)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayManager;->getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/HSIC;->toFloatArray()[F

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    const/4 v2, 0x5

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->updateBars()V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->updateAdjustment([F)V

    return v3

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic onDismissDialog(Landroid/content/DialogInterface;I)Z
    .locals 1

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p0, p1, p2}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->onDismissDialog(Landroid/app/AlertDialog;I)Z

    move-result v0

    return v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$1;-><init>(Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;)V

    const v1, 0x7f08017e

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$SavedState;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, v0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$SavedState;->originalAdj:[F

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mOriginalAdj:[F

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy([FI[FII)V

    iget-object v1, v0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$SavedState;->currentAdj:[F

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy([FI[FII)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->updateBars()V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    invoke-direct {p0, v1}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->updateAdjustment([F)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->getDialog()Landroid/content/DialogInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->getDialog()Landroid/content/DialogInterface;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$SavedState;

    invoke-direct {v0, v1}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    iput-object v2, v0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$SavedState;->currentAdj:[F

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mOriginalAdj:[F

    iput-object v2, v0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment$SavedState;->originalAdj:[F

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->mOriginalAdj:[F

    invoke-direct {p0, v2}, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;->updateAdjustment([F)V

    return-object v0

    :cond_0
    return-object v1
.end method
