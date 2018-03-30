.class public Lcom/android/flymexx/applications/LinearColorPreference;
.super Landroid/support/v7/preference/Preference;
.source "LinearColorPreference.java"


# instance fields
.field mColoredRegions:I

.field mGreenColor:I

.field mGreenRatio:F

.field mOnRegionTappedListener:Lcom/android/flymexx/applications/LinearColorBar$OnRegionTappedListener;

.field mRedColor:I

.field mRedRatio:F

.field mYellowColor:I

.field mYellowRatio:F


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x7f1101be

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/applications/LinearColorBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/flymexx/applications/LinearColorBar;->setShowIndicator(Z)V

    iget v1, p0, Lcom/android/flymexx/applications/LinearColorPreference;->mRedColor:I

    iget v2, p0, Lcom/android/flymexx/applications/LinearColorPreference;->mYellowColor:I

    iget v3, p0, Lcom/android/flymexx/applications/LinearColorPreference;->mGreenColor:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/flymexx/applications/LinearColorBar;->setColors(III)V

    iget v1, p0, Lcom/android/flymexx/applications/LinearColorPreference;->mRedRatio:F

    iget v2, p0, Lcom/android/flymexx/applications/LinearColorPreference;->mYellowRatio:F

    iget v3, p0, Lcom/android/flymexx/applications/LinearColorPreference;->mGreenRatio:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/flymexx/applications/LinearColorBar;->setRatios(FFF)V

    iget v1, p0, Lcom/android/flymexx/applications/LinearColorPreference;->mColoredRegions:I

    invoke-virtual {v0, v1}, Lcom/android/flymexx/applications/LinearColorBar;->setColoredRegions(I)V

    iget-object v1, p0, Lcom/android/flymexx/applications/LinearColorPreference;->mOnRegionTappedListener:Lcom/android/flymexx/applications/LinearColorBar$OnRegionTappedListener;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/applications/LinearColorBar;->setOnRegionTappedListener(Lcom/android/flymexx/applications/LinearColorBar$OnRegionTappedListener;)V

    return-void
.end method
