.class public Lcom/android/flymexx/GearPreference;
.super Lcom/android/flymexxlib/RestrictedPreference;
.source "GearPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/GearPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mOnGearClickListener:Lcom/android/flymexx/GearPreference$OnGearClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/flymexxlib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0400e5

    invoke-virtual {p0, v0}, Lcom/android/flymexx/GearPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexxlib/RestrictedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x7f1101ca

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1101ca

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/GearPreference;->mOnGearClickListener:Lcom/android/flymexx/GearPreference$OnGearClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/GearPreference;->mOnGearClickListener:Lcom/android/flymexx/GearPreference$OnGearClickListener;

    invoke-interface {v0, p0}, Lcom/android/flymexx/GearPreference$OnGearClickListener;->onGearClick(Lcom/android/flymexx/GearPreference;)V

    :cond_0
    return-void
.end method

.method public setOnGearClickListener(Lcom/android/flymexx/GearPreference$OnGearClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/GearPreference;->mOnGearClickListener:Lcom/android/flymexx/GearPreference$OnGearClickListener;

    invoke-virtual {p0}, Lcom/android/flymexx/GearPreference;->notifyChanged()V

    return-void
.end method
