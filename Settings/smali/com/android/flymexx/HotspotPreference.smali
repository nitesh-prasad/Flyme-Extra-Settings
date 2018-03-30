.class public Lcom/android/flymexx/HotspotPreference;
.super Landroid/support/v7/preference/Preference;
.source "HotspotPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSubSummary:Landroid/widget/TextView;

.field private mSummary:Ljava/lang/CharSequence;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/flymexx/HotspotPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/flymexx/HotspotPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/flymexx/HotspotPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/flymexx/HotspotPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/flymexx/HotspotPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/android/flymexx/HotspotPreference;->mSubSummary:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const v0, 0x7f11014d

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/flymexx/HotspotPreference;->mSubSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/flymexx/HotspotPreference;->mSummary:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/HotspotPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/HotspotPreference;->mSubSummary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/flymexx/HotspotPreference;->mSubSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/flymexx/HotspotPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/HotspotPreference;->mSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_2

    const v0, 0x7f11014e

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/flymexx/HotspotPreference;->mSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/android/flymexx/HotspotPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean v0, p0, Lcom/android/flymexx/HotspotPreference;->mSwitchEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/flymexx/HotspotPreference;->setChecked(Z)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/flymexx/HotspotPreference;->mSubSummary:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/HotspotPreference;->callChangeListener(Ljava/lang/Object;)Z

    iput-boolean p2, p0, Lcom/android/flymexx/HotspotPreference;->mSwitchEnabled:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/flymexx/HotspotPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/HotspotPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/flymexx/HotspotPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/flymexx/HotspotPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/flymexx/HotspotPreference;->mSwitchEnabled:Z

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Lcom/android/flymexx/HotspotPreference;->mSummary:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/flymexx/HotspotPreference;->mSubSummary:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/HotspotPreference;->mSubSummary:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/flymexx/HotspotPreference;->mSubSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
