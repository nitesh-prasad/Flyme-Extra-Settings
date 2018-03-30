.class public Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;
.super Landroid/support/v7/preference/CheckBoxPreference;
.source "ProfilesPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mFragment:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;

.field private mProfilesPref:Landroid/view/View;

.field private mProfilesSettingsButton:Landroid/widget/ImageView;

.field private final mSettingsBundle:Landroid/os/Bundle;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d0194

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f030051

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->setLayoutResource(I)V

    const v0, 0x7f030052

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->setWidgetLayoutResource(I)V

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mFragment:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mSettingsBundle:Landroid/os/Bundle;

    return-void
.end method

.method private disablePreferenceViews()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method private startProfileConfigActivity()V
    .locals 7

    const/4 v4, 0x0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mFragment:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/PartsActivity;

    const-class v1, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mSettingsBundle:Landroid/os/Bundle;

    const v3, 0x7f08028f

    const/4 v6, 0x1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lorg/cyanogenmod/cmparts/PartsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method private updatePreferenceViews()V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->isChecked()Z

    move-result v0

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    :cond_0
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->isEnabled()Z

    move-result v1

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    if-eqz v1, :cond_3

    move-object v2, p0

    :cond_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v1, :cond_4

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0c00c6

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c00c7

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mTitleText:Landroid/widget/TextView;

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mSummaryText:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mSettingsBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->updatePreferenceViews()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    :try_start_0
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->startProfileConfigActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->setEnabled(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->updatePreferenceViews()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->disablePreferenceViews()V

    goto :goto_0
.end method
