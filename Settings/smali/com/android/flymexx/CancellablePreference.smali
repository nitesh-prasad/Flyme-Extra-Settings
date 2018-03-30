.class public Lcom/android/flymexx/CancellablePreference;
.super Landroid/support/v7/preference/Preference;
.source "CancellablePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/CancellablePreference$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancellable:Z

.field private mListener:Lcom/android/flymexx/CancellablePreference$OnCancelListener;


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x7f1100a2

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/flymexx/CancellablePreference;->mCancellable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/CancellablePreference;->mListener:Lcom/android/flymexx/CancellablePreference$OnCancelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/CancellablePreference;->mListener:Lcom/android/flymexx/CancellablePreference$OnCancelListener;

    invoke-interface {v0, p0}, Lcom/android/flymexx/CancellablePreference$OnCancelListener;->onCancel(Lcom/android/flymexx/CancellablePreference;)V

    :cond_0
    return-void
.end method

.method public setCancellable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/flymexx/CancellablePreference;->mCancellable:Z

    invoke-virtual {p0}, Lcom/android/flymexx/CancellablePreference;->notifyChanged()V

    return-void
.end method

.method public setOnCancelListener(Lcom/android/flymexx/CancellablePreference$OnCancelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/CancellablePreference;->mListener:Lcom/android/flymexx/CancellablePreference$OnCancelListener;

    return-void
.end method
