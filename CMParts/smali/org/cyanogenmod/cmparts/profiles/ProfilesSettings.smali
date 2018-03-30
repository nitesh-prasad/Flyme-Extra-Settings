.class public Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "ProfilesSettings.java"

# interfaces
.implements Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings$1;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER:Lorg/cyanogenmod/cmparts/PartsUpdater$Refreshable$SummaryProvider;


# instance fields
.field mContainer:Landroid/view/ViewGroup;

.field private mEnabled:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mProfileEnabler:Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;

.field private mProfileManager:Lcyanogenmod/app/ProfileManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;)Lcyanogenmod/app/ProfileManager;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->addProfile()V

    return-void
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->updateProfilesEnabledState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings$1;

    invoke-direct {v0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings$1;-><init>()V

    sput-object v0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->SUMMARY_PROVIDER:Lorg/cyanogenmod/cmparts/PartsUpdater$Refreshable$SummaryProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "cyanogenmod.platform.app.profiles.PROFILES_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings$2;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings$2;-><init>(Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method private addProfile()V
    .locals 7

    const/4 v3, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "new_profile_mode"

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "Profile"

    new-instance v4, Lcyanogenmod/app/Profile;

    const v5, 0x7f08027e

    invoke-virtual {p0, v5}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcyanogenmod/app/Profile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/PartsActivity;

    const-class v1, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lorg/cyanogenmod/cmparts/PartsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method private resetAll()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080282

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080283

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings$4;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings$4;-><init>(Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08017b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private setSelectedProfile(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v2, v1}, Lcyanogenmod/app/ProfileManager;->setActiveProfile(Ljava/util/UUID;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateProfilesEnabledState()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "system_profiles_enabled"

    invoke-static {v3, v4, v1}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mEnabled:Z

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->getFloatingActionButton()Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;

    move-result-object v1

    iget-boolean v3, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mEnabled:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;->setVisibility(I)V

    iget-boolean v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mEnabled:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :goto_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->onSettingsChanged(Landroid/net/Uri;)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->refreshList()V

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050011

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v0, 0x1

    const v1, 0x7f080282

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x2

    const v1, 0x7f0802a0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mProfileEnabler:Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mProfileEnabler:Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->teardownSwitchBar()V

    :cond_0
    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onEnablerChanged(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "cyanogenmod.platform.app.profiles.PROFILES_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "profile_state"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->resetAll()V

    return v6

    :pswitch_1
    const-class v0, Lorg/cyanogenmod/cmparts/profiles/AppGroupList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0802a0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mProfileEnabler:Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mProfileEnabler:Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->pause()V

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->setSelectedProfile(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->refreshList()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mProfileEnabler:Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mProfileEnabler:Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->resume(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->updateProfilesEnabledState()V

    return-void
.end method

.method public onStart()V
    .locals 6

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lorg/cyanogenmod/cmparts/PartsActivity;

    new-instance v0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;

    invoke-virtual {v1}, Lorg/cyanogenmod/cmparts/PartsActivity;->getSwitchBar()Lorg/cyanogenmod/cmparts/widget/SwitchBar;

    move-result-object v2

    const-string/jumbo v3, "system_profiles_enabled"

    const/4 v4, 0x1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;-><init>(Landroid/content/Context;Lorg/cyanogenmod/cmparts/widget/SwitchBar;Ljava/lang/String;ZLorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mProfileEnabler:Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1, p2}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030028

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->setFooterView(Landroid/view/View;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    check-cast p1, Landroid/view/ViewGroup;

    const v4, 0x7f030029

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0c0094

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->getFloatingActionButton()Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;

    move-result-object v3

    const v4, 0x7f020076

    invoke-virtual {v3, v4}, Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;->setImageResource(I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->getFloatingActionButton()Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;

    move-result-object v3

    const v4, 0x7f080264

    invoke-virtual {p0, v4}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->getFloatingActionButton()Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;

    move-result-object v3

    new-instance v4, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings$3;

    invoke-direct {v4, p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings$3;-><init>(Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;)V

    invoke-virtual {v3, v4}, Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public refreshList()V
    .locals 12

    const/4 v11, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v6}, Lcyanogenmod/app/ProfileManager;->getActiveProfile()Lcyanogenmod/app/Profile;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    iget-object v6, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v6}, Lcyanogenmod/app/ProfileManager;->getProfiles()[Lcyanogenmod/app/Profile;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_1
    if-ge v6, v9, :cond_2

    aget-object v4, v8, v6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v10, "Profile"

    invoke-virtual {v0, v10, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v10, "new_profile_mode"

    invoke-virtual {v0, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;

    invoke-direct {v2, p0, v0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;-><init>(Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;Landroid/os/Bundle;)V

    invoke-virtual {v4}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->setPersistent(Z)V

    invoke-virtual {v2, p0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v2, v11}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->setSelectable(Z)V

    invoke-virtual {v2, v11}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->setEnabled(Z)V

    invoke-virtual {v2}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v2, v11}, Lorg/cyanogenmod/cmparts/profiles/ProfilesPreference;->setChecked(Z)V

    :cond_0
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method
