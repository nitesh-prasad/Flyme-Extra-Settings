.class public Lcom/android/flymexx/AppProgressPreference;
.super Lcom/android/flymexx/TintablePreference;
.source "AppProgressPreference.java"


# instance fields
.field private mProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/TintablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0400c2

    invoke-virtual {p0, v0}, Lcom/android/flymexx/AppProgressPreference;->setLayoutResource(I)V

    const v0, 0x7f040190

    invoke-virtual {p0, v0}, Lcom/android/flymexx/AppProgressPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/TintablePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x102000d

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/flymexx/AppProgressPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/android/flymexx/AppProgressPreference;->mProgress:I

    invoke-virtual {p0}, Lcom/android/flymexx/AppProgressPreference;->notifyChanged()V

    return-void
.end method
