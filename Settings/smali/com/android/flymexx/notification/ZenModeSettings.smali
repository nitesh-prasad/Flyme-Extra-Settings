.class public Lcom/android/flymexx/notification/ZenModeSettings;
.super Lcom/android/flymexx/notification/ZenModeSettingsBase;
.source "ZenModeSettings.java"


# instance fields
.field private mPolicy:Landroid/app/NotificationManager$Policy;

.field private mPrioritySettings:Landroid/support/v7/preference/Preference;

.field private mVisualSettings:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isEffectSuppressed(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/flymexx/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateControls()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/notification/ZenModeSettings;->updatePrioritySettingsSummary()V

    invoke-direct {p0}, Lcom/android/flymexx/notification/ZenModeSettings;->updateVisualSettingsSummary()V

    return-void
.end method

.method private updatePrioritySettingsSummary()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f0c0cc6

    invoke-virtual {p0, v1}, Lcom/android/flymexx/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/flymexx/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/flymexx/notification/ZenModeSettings;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c0276

    invoke-virtual {p0, v1}, Lcom/android/flymexx/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/flymexx/notification/ZenModeSettings;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0c0277

    invoke-virtual {p0, v1}, Lcom/android/flymexx/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/flymexx/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/flymexx/notification/ZenModeSettings;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/flymexx/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-nez v1, :cond_4

    const v1, 0x7f0c027b

    invoke-virtual {p0, v1}, Lcom/android/flymexx/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/flymexx/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/android/flymexx/notification/ZenModeSettings;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/flymexx/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez v1, :cond_5

    const v1, 0x7f0c0278

    invoke-virtual {p0, v1}, Lcom/android/flymexx/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/flymexx/notification/ZenModeSettings;->mPrioritySettings:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/flymexx/Utils;->join(Landroid/content/res/Resources;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    const v1, 0x7f0c027c

    invoke-virtual {p0, v1}, Lcom/android/flymexx/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const v1, 0x7f0c0279

    invoke-virtual {p0, v1}, Lcom/android/flymexx/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/flymexx/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    const/16 v2, 0x10

    invoke-direct {p0, v1, v2}, Lcom/android/flymexx/notification/ZenModeSettings;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0c027a

    invoke-virtual {p0, v1}, Lcom/android/flymexx/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private updateVisualSettingsSummary()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const v1, 0x7f0c0cdc

    invoke-virtual {p0, v1}, Lcom/android/flymexx/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/android/flymexx/notification/ZenModeSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/flymexx/notification/ZenModeSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0c0cdf

    invoke-virtual {p0, v1}, Lcom/android/flymexx/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/flymexx/notification/ZenModeSettings;->mVisualSettings:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/flymexx/notification/ZenModeSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0c0cdd

    invoke-virtual {p0, v1}, Lcom/android/flymexx/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/flymexx/notification/ZenModeSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c0cde

    invoke-virtual {p0, v1}, Lcom/android/flymexx/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0c0b97

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f080087

    invoke-virtual {p0, v1}, Lcom/android/flymexx/notification/ZenModeSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/notification/ZenModeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "priority_settings"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/notification/ZenModeSettings;->mPrioritySettings:Landroid/support/v7/preference/Preference;

    const-string/jumbo v1, "visual_interruptions_settings"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/notification/ZenModeSettings;->mVisualSettings:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/flymexx/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/notification/ZenModeSettingsBase;->onResume()V

    invoke-virtual {p0}, Lcom/android/flymexx/notification/ZenModeSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/notification/ZenModeSettings;->updateControls()V

    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-direct {p0}, Lcom/android/flymexx/notification/ZenModeSettings;->updateControls()V

    return-void
.end method
