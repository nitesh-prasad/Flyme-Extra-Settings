.class public Lcom/android/flymexx/applications/ManageAssist;
.super Lcom/android/flymexx/SettingsPreferenceFragment;
.source "ManageAssist.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/applications/ManageAssist$-boolean_onPreferenceChange_android_support_v7_preference_Preference_preference_java_lang_Object_newValue_LambdaImpl0;
    }
.end annotation


# instance fields
.field private mContextPref:Landroid/support/v14/preference/SwitchPreference;

.field private mDefaultAssitPref:Lcom/android/flymexx/applications/DefaultAssistPreference;

.field private mFlashPref:Landroid/support/v14/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mScreenshotPref:Landroid/support/v14/preference/SwitchPreference;

.field private mVoiceInputPref:Lcom/android/flymexx/voice/VoiceInputListPreference;


# direct methods
.method static synthetic -wrap0(Lcom/android/flymexx/applications/ManageAssist;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/applications/ManageAssist;->setDefaultAssist(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageAssist;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private confirmNewAssist(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v7, p0, Lcom/android/flymexx/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/flymexx/applications/DefaultAssistPreference;

    invoke-virtual {v7, p1}, Lcom/android/flymexx/applications/DefaultAssistPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    iget-object v7, p0, Lcom/android/flymexx/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/flymexx/applications/DefaultAssistPreference;

    invoke-virtual {v7}, Lcom/android/flymexx/applications/DefaultAssistPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v0, v7, v5

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v10

    const v8, 0x7f0c0d44

    invoke-virtual {p0, v8, v7}, Lcom/android/flymexx/applications/ManageAssist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v10

    const v8, 0x7f0c0d45

    invoke-virtual {p0, v8, v7}, Lcom/android/flymexx/applications/ManageAssist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/flymexx/applications/ManageAssist$1;

    invoke-direct {v4, p0, p1}, Lcom/android/flymexx/applications/ManageAssist$1;-><init>(Lcom/android/flymexx/applications/ManageAssist;Ljava/lang/String;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0c0d46

    invoke-virtual {v7, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0c0d47

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private guardFlashPref()V
    .locals 5

    iget-object v4, p0, Lcom/android/flymexx/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/flymexx/applications/DefaultAssistPreference;

    invoke-virtual {v4}, Lcom/android/flymexx/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v4, p0, Lcom/android/flymexx/applications/ManageAssist;->mContextPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/internal/app/AssistUtils;->shouldDisclose(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/internal/app/AssistUtils;->isPreinstalledAssistant(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v2

    iget-object v4, p0, Lcom/android/flymexx/applications/ManageAssist;->mFlashPref:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/flymexx/applications/ManageAssist;->mFlashPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private guardScreenshotPref()V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/flymexx/applications/ManageAssist;->mContextPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "assist_screenshot_enabled"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/flymexx/applications/ManageAssist;->mScreenshotPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/flymexx/applications/ManageAssist;->mScreenshotPref:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private isCurrentAssistVoiceService()Z
    .locals 3

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/flymexx/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/flymexx/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageAssist;->mVoiceInputPref:Lcom/android/flymexx/voice/VoiceInputListPreference;

    invoke-virtual {v2}, Lcom/android/flymexx/voice/VoiceInputListPreference;->getCurrentService()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setDefaultAssist(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/flymexx/applications/DefaultAssistPreference;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/applications/DefaultAssistPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/flymexx/applications/ManageAssist;->updateUi()V

    return-void
.end method

.method private updateUi()V
    .locals 4

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/flymexx/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/flymexx/applications/DefaultAssistPreference;->refreshAssistApps()V

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageAssist;->mVoiceInputPref:Lcom/android/flymexx/voice/VoiceInputListPreference;

    invoke-virtual {v2}, Lcom/android/flymexx/voice/VoiceInputListPreference;->refreshVoiceInputs()V

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/flymexx/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/flymexx/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageAssist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/applications/ManageAssist;->mContextPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageAssist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/applications/ManageAssist;->mScreenshotPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/AssistUtils;->allowDisablingAssistDisclosure(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageAssist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/applications/ManageAssist;->mFlashPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_2
    invoke-direct {p0}, Lcom/android/flymexx/applications/ManageAssist;->isCurrentAssistVoiceService()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageAssist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/applications/ManageAssist;->mVoiceInputPref:Lcom/android/flymexx/voice/VoiceInputListPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_3
    invoke-direct {p0}, Lcom/android/flymexx/applications/ManageAssist;->guardScreenshotPref()V

    invoke-direct {p0}, Lcom/android/flymexx/applications/ManageAssist;->guardFlashPref()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageAssist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/applications/ManageAssist;->mContextPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageAssist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/applications/ManageAssist;->mScreenshotPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageAssist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/applications/ManageAssist;->mFlashPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageAssist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/applications/ManageAssist;->mFlashPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageAssist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/applications/ManageAssist;->mVoiceInputPref:Lcom/android/flymexx/voice/VoiceInputListPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageAssist;->mVoiceInputPref:Lcom/android/flymexx/voice/VoiceInputListPreference;

    invoke-virtual {v2, v0}, Lcom/android/flymexx/voice/VoiceInputListPreference;->setAssistRestrict(Landroid/content/ComponentName;)V

    goto :goto_3
.end method


# virtual methods
.method synthetic -com_android_settings_applications_ManageAssist_lambda$1()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/applications/ManageAssist;->guardScreenshotPref()V

    invoke-direct {p0}, Lcom/android/flymexx/applications/ManageAssist;->guardFlashPref()V

    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0xc9

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ManageAssist;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "default_assist"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/applications/DefaultAssistPreference;

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/flymexx/applications/DefaultAssistPreference;

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/flymexx/applications/DefaultAssistPreference;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/applications/DefaultAssistPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "context"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageAssist;->mContextPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/flymexx/applications/ManageAssist;->mContextPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "assist_structure_enabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageAssist;->mContextPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "screenshot"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageAssist;->mScreenshotPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageAssist;->mScreenshotPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "flash"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageAssist;->mFlashPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageAssist;->mFlashPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "voice_input_settings"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/voice/VoiceInputListPreference;

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageAssist;->mVoiceInputPref:Lcom/android/flymexx/voice/VoiceInputListPreference;

    invoke-direct {p0}, Lcom/android/flymexx/applications/ManageAssist;->updateUi()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/flymexx/applications/ManageAssist;->mContextPref:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assist_structure_enabled"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageAssist;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/flymexx/applications/ManageAssist$-boolean_onPreferenceChange_android_support_v7_preference_Preference_preference_java_lang_Object_newValue_LambdaImpl0;

    invoke-direct {v4, p0}, Lcom/android/flymexx/applications/ManageAssist$-boolean_onPreferenceChange_android_support_v7_preference_Preference_preference_java_lang_Object_newValue_LambdaImpl0;-><init>(Lcom/android/flymexx/applications/ManageAssist;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/flymexx/applications/ManageAssist;->mScreenshotPref:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assist_screenshot_enabled"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3

    :cond_3
    iget-object v4, p0, Lcom/android/flymexx/applications/ManageAssist;->mFlashPref:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v4, :cond_5

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assist_disclosure_enabled"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v3

    :cond_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3

    :cond_5
    iget-object v3, p0, Lcom/android/flymexx/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/flymexx/applications/DefaultAssistPreference;

    if-ne p1, v3, :cond_9

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    const-string/jumbo v3, ""

    invoke-direct {p0, v3}, Lcom/android/flymexx/applications/ManageAssist;->setDefaultAssist(Ljava/lang/String;)V

    return v2

    :cond_7
    iget-object v3, p0, Lcom/android/flymexx/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/flymexx/applications/DefaultAssistPreference;

    invoke-virtual {v3}, Lcom/android/flymexx/applications/DefaultAssistPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_0
    return v2

    :cond_8
    invoke-direct {p0, v1}, Lcom/android/flymexx/applications/ManageAssist;->confirmNewAssist(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    return v2
.end method
