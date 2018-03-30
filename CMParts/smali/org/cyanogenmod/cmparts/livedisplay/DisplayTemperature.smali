.class public Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;
.super Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;
.source "DisplayTemperature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;,
        Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$SavedState;
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


# instance fields
.field private final mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

.field private final mContext:Landroid/content/Context;

.field private mDayTemperature:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

.field private final mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

.field private mNightTemperature:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

.field private mOriginalDayTemperature:I

.field private mOriginalNightTemperature:I


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;)Lcyanogenmod/hardware/LiveDisplayConfig;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->updateTemperature(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcyanogenmod/hardware/LiveDisplayManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/LiveDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayManager;->getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->setDialogLayoutResource(I)V

    return-void
.end method

.method private updateTemperature(Z)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mDayTemperature:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-virtual {v2}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->getTemperature()I

    move-result v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mNightTemperature:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-virtual {v2}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->getTemperature()I

    move-result v1

    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->callChangeListener(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v2, v0}, Lcyanogenmod/hardware/LiveDisplayManager;->setDayColorTemperature(I)Z

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v2, v1}, Lcyanogenmod/hardware/LiveDisplayManager;->setNightColorTemperature(I)Z

    return-void

    :cond_0
    iget v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mOriginalDayTemperature:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mOriginalNightTemperature:I

    goto :goto_1
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v4}, Lcyanogenmod/hardware/LiveDisplayManager;->getDayColorTemperature()I

    move-result v4

    iput v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mOriginalDayTemperature:I

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v4}, Lcyanogenmod/hardware/LiveDisplayManager;->getNightColorTemperature()I

    move-result v4

    iput v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mOriginalNightTemperature:I

    const v4, 0x7f0c008f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    const v4, 0x7f0c008e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-direct {v4, p0, v0, v1}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;-><init>(Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    iput-object v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mDayTemperature:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    const v4, 0x7f0c0092

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    const v4, 0x7f0c0091

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-direct {v4, p0, v2, v3}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;-><init>(Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    iput-object v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mNightTemperature:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mDayTemperature:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    iget v5, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mOriginalDayTemperature:I

    invoke-virtual {v4, v5}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setTemperature(I)V

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mNightTemperature:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    iget v5, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mOriginalNightTemperature:I

    invoke-virtual {v4, v5}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setTemperature(I)V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onDialogClosed(Z)V

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->updateTemperature(Z)V

    return-void
.end method

.method protected onDismissDialog(Landroid/app/AlertDialog;I)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mDayTemperature:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    invoke-virtual {v1}, Lcyanogenmod/hardware/LiveDisplayConfig;->getDefaultDayTemperature()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setTemperature(I)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mNightTemperature:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    invoke-virtual {v1}, Lcyanogenmod/hardware/LiveDisplayConfig;->getDefaultNightTemperature()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setTemperature(I)V

    invoke-direct {p0, v2}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->updateTemperature(Z)V

    const/4 v0, 0x0

    return v0

    :cond_0
    return v2
.end method

.method protected bridge synthetic onDismissDialog(Landroid/content/DialogInterface;I)Z
    .locals 1

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p0, p1, p2}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->onDismissDialog(Landroid/app/AlertDialog;I)Z

    move-result v0

    return v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$1;-><init>(Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;)V

    const v1, 0x7f08017e

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$SavedState;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$SavedState;->originalDayTemperature:I

    iput v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mOriginalDayTemperature:I

    iget v1, v0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$SavedState;->originalNightTemperature:I

    iput v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mOriginalNightTemperature:I

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mDayTemperature:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    iget v2, v0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$SavedState;->currentDayTemperature:I

    invoke-virtual {v1, v2}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setTemperature(I)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mNightTemperature:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    iget v2, v0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$SavedState;->currentNightTemperature:I

    invoke-virtual {v1, v2}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setTemperature(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->updateTemperature(Z)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->getDialog()Landroid/content/DialogInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->getDialog()Landroid/content/DialogInterface;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$SavedState;

    invoke-direct {v0, v1}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mOriginalDayTemperature:I

    iput v2, v0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$SavedState;->originalDayTemperature:I

    iget v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mOriginalNightTemperature:I

    iput v2, v0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$SavedState;->originalNightTemperature:I

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mDayTemperature:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-virtual {v2}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->getTemperature()I

    move-result v2

    iput v2, v0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$SavedState;->currentDayTemperature:I

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->mNightTemperature:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-virtual {v2}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->getTemperature()I

    move-result v2

    iput v2, v0, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature$SavedState;->currentNightTemperature:I

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->updateTemperature(Z)V

    return-object v0

    :cond_0
    return-object v1
.end method

.method roundUp(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x32

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    return v0
.end method
