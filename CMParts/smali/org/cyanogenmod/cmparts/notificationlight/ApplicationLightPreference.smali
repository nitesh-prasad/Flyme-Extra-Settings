.class public Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;
.super Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;
.source "ApplicationLightPreference.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference$ItemLongClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference",
        "<",
        "Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;",
        ">;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mColorValue:I

.field private mDialog:Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;

.field private mLightColorView:Landroid/widget/ImageView;

.field private mLongClickListener:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference$ItemLongClickListener;

.field private mOffValue:I

.field private mOffValueView:Landroid/widget/TextView;

.field private mOnOffChangeable:Z

.field private mOnValue:I

.field private mOnValueView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "AppLightPreference"

    sput-object v0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/16 v4, 0x3e8

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->doLightsSupport(I)Z

    move-result v6

    const v3, 0xffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 7

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->doLightsSupport(I)Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIZ)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput p3, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mColorValue:I

    iput p4, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOnValue:I

    iput p5, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOffValue:I

    iput-boolean p6, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private static createOvalShape(II)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method private mapLengthValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5

    iget-boolean v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v1, v0

    return-object v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private mapSpeedValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, v1, v0

    return-object v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private updatePreferenceViews()V
    .locals 6

    const v5, 0xf0f0f0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mColorValue:I

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_3

    iget v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mColorValue:I

    const v3, 0x101010

    sub-int v0, v2, v3

    :goto_0
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    const/high16 v3, -0x1000000

    add-int/2addr v3, v0

    invoke-static {v1, v3}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->createOvalShape(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    iget v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOnValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mapLengthValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOnValue:I

    if-eq v2, v4, :cond_4

    iget-boolean v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    iget v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOffValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mapSpeedValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mColorValue:I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mColorValue:I

    return v0
.end method

.method public getOffValue()I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOffValue:I

    return v0
.end method

.method public getOnValue()I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOnValue:I

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    const/16 v4, 0x8

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v2, 0x7f0c00bf

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    const v2, 0x7f0c00bd

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    const v2, 0x7f0c00be

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->doLightsSupport(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v6, 0x0

    new-instance v0, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mColorValue:I

    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    iget v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOnValue:I

    iget v4, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOffValue:I

    iget-boolean v5, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    invoke-direct/range {v0 .. v5}, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;-><init>(Landroid/content/Context;IIIZ)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mDialog:Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mDialog:Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;->setAlphaSliderVisible(Z)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mDialog:Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08017a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v6

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2, v0}, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mDialog:Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08017b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v6, Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v1, v6}, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mDialog:Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mDialog:Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;->getColor()I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mColorValue:I

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mDialog:Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;->getPulseSpeedOn()I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOnValue:I

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mDialog:Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;->getPulseSpeedOff()I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOffValue:I

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mLongClickListener:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference$ItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mLongClickListener:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference$ItemLongClickListener;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference$ItemLongClickListener;->onItemLongClick(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getDialog()Landroid/content/DialogInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getDialog()Landroid/content/DialogInterface;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getDialog()Landroid/content/DialogInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->getDialog()Landroid/content/DialogInterface;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;->onStop()V

    :cond_0
    return-void
.end method

.method public setAllValues(III)V
    .locals 0

    iput p1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mColorValue:I

    iput p2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOnValue:I

    iput p3, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOffValue:I

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    return-void
.end method

.method public setAllValues(IIIZ)V
    .locals 0

    iput p1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mColorValue:I

    iput p2, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOnValue:I

    iput p3, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOffValue:I

    iput-boolean p4, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    return-void
.end method

.method public setOnLongClickListener(Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference$ItemLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference;->mLongClickListener:Lorg/cyanogenmod/cmparts/notificationlight/ApplicationLightPreference$ItemLongClickListener;

    return-void
.end method
