.class public Lorg/cyanogenmod/cmparts/input/PowerMenuActions;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "PowerMenuActions.java"


# instance fields
.field private mAirplanePref:Landroid/support/v7/preference/CheckBoxPreference;

.field private mAllActions:[Ljava/lang/String;

.field private mBugReportPref:Landroid/support/v7/preference/CheckBoxPreference;

.field mContext:Landroid/content/Context;

.field private mLocalUserConfig:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRebootPref:Landroid/support/v7/preference/CheckBoxPreference;

.field private mScreenshotPref:Landroid/support/v7/preference/CheckBoxPreference;

.field private mSilentPref:Landroid/support/v7/preference/CheckBoxPreference;

.field private mUsersPref:Landroid/support/v7/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    return-void
.end method

.method private getUserConfig()V
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "power_menu_actions"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Lcyanogenmod/providers/CMSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "\\|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private saveUserConfig()V
    .locals 8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mAllActions:[Ljava/lang/String;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_2

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "power_menu_actions"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Lcyanogenmod/providers/CMSettings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->updatePowerMenuDialog()V

    return-void
.end method

.method private settingsArrayContains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updatePowerMenuDialog()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.UPDATE_POWER_MENU"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private updatePreferences()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mBugReportPref:Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mBugReportPref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setEnabled(Z)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mBugReportPref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mBugReportPref:Landroid/support/v7/preference/CheckBoxPreference;

    const v2, 0x7f08023e

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1
.end method

.method private updateUserConfig(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->saveUserConfig()V

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f05000c

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/util/cm/PowerMenuConstants;->getAllActions()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mAllActions:[Ljava/lang/String;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mAllActions:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_6

    aget-object v0, v3, v2

    const-string/jumbo v1, "restart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "restart"

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mRebootPref:Landroid/support/v7/preference/CheckBoxPreference;

    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "screenshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "screenshot"

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mScreenshotPref:Landroid/support/v7/preference/CheckBoxPreference;

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "airplane"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "airplane"

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mAirplanePref:Landroid/support/v7/preference/CheckBoxPreference;

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "users"

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mUsersPref:Landroid/support/v7/preference/CheckBoxPreference;

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "bugreport"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "bugreport"

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mBugReportPref:Landroid/support/v7/preference/CheckBoxPreference;

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "silent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "silent"

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mSilentPref:Landroid/support/v7/preference/CheckBoxPreference;

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->getUserConfig()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mRebootPref:Landroid/support/v7/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mRebootPref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const-string/jumbo v1, "restart"

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mScreenshotPref:Landroid/support/v7/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mScreenshotPref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const-string/jumbo v1, "screenshot"

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mAirplanePref:Landroid/support/v7/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mAirplanePref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const-string/jumbo v1, "airplane"

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mUsersPref:Landroid/support/v7/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mUsersPref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const-string/jumbo v1, "users"

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mBugReportPref:Landroid/support/v7/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mBugReportPref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const-string/jumbo v1, "bugreport"

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mSilentPref:Landroid/support/v7/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mSilentPref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const-string/jumbo v1, "silent"

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->updatePreferences()V

    return-void
.end method

.method public onStart()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onStart()V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mRebootPref:Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mRebootPref:Landroid/support/v7/preference/CheckBoxPreference;

    const-string/jumbo v3, "restart"

    invoke-direct {p0, v3}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mScreenshotPref:Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mScreenshotPref:Landroid/support/v7/preference/CheckBoxPreference;

    const-string/jumbo v3, "screenshot"

    invoke-direct {p0, v3}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mAirplanePref:Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mAirplanePref:Landroid/support/v7/preference/CheckBoxPreference;

    const-string/jumbo v3, "airplane"

    invoke-direct {p0, v3}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_2
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mUsersPref:Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mUsersPref:Landroid/support/v7/preference/CheckBoxPreference;

    const-string/jumbo v2, "users"

    invoke-direct {p0, v2}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mUsersPref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_3
    :goto_2
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mBugReportPref:Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mBugReportPref:Landroid/support/v7/preference/CheckBoxPreference;

    const-string/jumbo v3, "bugreport"

    invoke-direct {p0, v3}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_4
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mSilentPref:Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mSilentPref:Landroid/support/v7/preference/CheckBoxPreference;

    const-string/jumbo v3, "silent"

    invoke-direct {p0, v3}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_5
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->updatePreferences()V

    return-void

    :cond_6
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "users"

    invoke-virtual {p0, v3}, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v4, p0, Lorg/cyanogenmod/cmparts/input/PowerMenuActions;->mUsersPref:Landroid/support/v7/preference/CheckBoxPreference;

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    goto :goto_1
.end method
