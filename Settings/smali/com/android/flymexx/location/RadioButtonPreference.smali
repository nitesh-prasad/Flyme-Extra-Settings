.class public Lcom/android/flymexx/location/RadioButtonPreference;
.super Landroid/support/v7/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/location/RadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/flymexx/location/RadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/flymexx/location/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/flymexx/location/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/flymexx/location/RadioButtonPreference;->mListener:Lcom/android/flymexx/location/RadioButtonPreference$OnClickListener;

    const v0, 0x7f0400e4

    invoke-virtual {p0, v0}, Lcom/android/flymexx/location/RadioButtonPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/location/RadioButtonPreference;->mListener:Lcom/android/flymexx/location/RadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/location/RadioButtonPreference;->mListener:Lcom/android/flymexx/location/RadioButtonPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/android/flymexx/location/RadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/android/flymexx/location/RadioButtonPreference;)V

    :cond_0
    return-void
.end method

.method setOnClickListener(Lcom/android/flymexx/location/RadioButtonPreference$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/location/RadioButtonPreference;->mListener:Lcom/android/flymexx/location/RadioButtonPreference$OnClickListener;

    return-void
.end method
