.class public Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "ExpandedDesktopPrefs.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;


# instance fields
.field private final DEFAULT_WINDOW_POLICY_STYLE:Landroid/net/Uri;

.field private mExpandedDesktopStyle:I

.field private mExpandedDesktopStylePref:Landroid/support/v7/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    const-string/jumbo v0, "policy_control_style"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->DEFAULT_WINDOW_POLICY_STYLE:Landroid/net/Uri;

    return-void
.end method

.method private createPreferences()V
    .locals 1

    const-string/jumbo v0, "expanded_desktop_style"

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->mExpandedDesktopStylePref:Landroid/support/v7/preference/ListPreference;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->mExpandedDesktopStylePref:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->updateExpandedDesktopStyle()V

    return-void
.end method

.method private getDesktopSummary(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const v0, 0x7f080338

    return v0

    :pswitch_0
    const v0, 0x7f080336

    return v0

    :pswitch_1
    const v0, 0x7f080337

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getExpandedDesktopStyle()I
    .locals 3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "policy_control_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static newInstance()Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;
    .locals 1

    new-instance v0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;

    invoke-direct {v0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;-><init>()V

    return-object v0
.end method

.method private removePreferences()V
    .locals 3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "expanded_desktop_options"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method private updateExpandedDesktopStyle()V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->mExpandedDesktopStylePref:Landroid/support/v7/preference/ListPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->getExpandedDesktopStyle()I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->mExpandedDesktopStyle:I

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->mExpandedDesktopStylePref:Landroid/support/v7/preference/ListPreference;

    iget v1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->mExpandedDesktopStyle:I

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->mExpandedDesktopStylePref:Landroid/support/v7/preference/ListPreference;

    iget v1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->mExpandedDesktopStyle:I

    invoke-direct {p0, v1}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->getDesktopSummary(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(I)V

    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->writeValue(Ljava/lang/String;)V

    const-string/jumbo v0, "immersive.full=*"

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->writeValue(Ljava/lang/String;)V

    return-void
.end method

.method private writeValue(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "policy_control"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f050007

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->addPreferencesFromResource(I)V

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->getExpandedDesktopStyle()I

    move-result v2

    iput v2, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->mExpandedDesktopStyle:I

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->createPreferences()V

    :goto_1
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->DEFAULT_WINDOW_POLICY_STYLE:Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->watch([Landroid/net/Uri;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->removePreferences()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/WindowManagerPolicyControl;->saveStyleToSettings(Landroid/content/Context;I)V

    const/4 v1, 0x1

    return v1
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onSettingsChanged(Landroid/net/Uri;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->updateExpandedDesktopStyle()V

    return-void
.end method
