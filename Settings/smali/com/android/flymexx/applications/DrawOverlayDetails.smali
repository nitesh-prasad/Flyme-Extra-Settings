.class public Lcom/android/flymexx/applications/DrawOverlayDetails;
.super Lcom/android/flymexx/applications/AppInfoWithHeader;
.source "DrawOverlayDetails.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final APP_OPS_OP_CODE:[I


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mOverlayBridge:Lcom/android/flymexx/applications/AppStateOverlayBridge;

.field private mOverlayDesc:Landroid/support/v7/preference/Preference;

.field private mOverlayPrefs:Landroid/support/v7/preference/Preference;

.field private mOverlayState:Lcom/android/flymexx/applications/AppStateOverlayBridge$OverlayState;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSwitchPref:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x18

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/android/flymexx/applications/DrawOverlayDetails;->APP_OPS_OP_CODE:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/flymexx/applications/AppStateOverlayBridge$OverlayState;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p1}, Lcom/android/flymexx/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0db5

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0c0db6

    goto :goto_0
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/flymexx/applications/AppStateOverlayBridge$OverlayState;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/flymexx/applications/AppStateOverlayBridge$OverlayState;

    :goto_0
    invoke-static {p0, v0}, Lcom/android/flymexx/applications/DrawOverlayDetails;->getSummary(Landroid/content/Context;Lcom/android/flymexx/applications/AppStateOverlayBridge$OverlayState;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/flymexx/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/flymexx/applications/AppStateOverlayBridge$OverlayState;

    iget-object v1, p1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/flymexx/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v0, v1}, Lcom/android/flymexx/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/flymexx/applications/AppStateAppOpsBridge$PermissionState;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/flymexx/applications/AppStateOverlayBridge;

    invoke-direct {v1, p0, v2, v2}, Lcom/android/flymexx/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/flymexxlib/applications/ApplicationsState;Lcom/android/flymexx/applications/AppStateBaseBridge$Callback;)V

    iget-object v2, p1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/flymexx/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/flymexx/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v0

    goto :goto_0
.end method

.method private setCanDrawOverlay(Z)V
    .locals 5

    iget-object v1, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v0, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x18

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0xdd

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/flymexx/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/DrawOverlayDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/flymexx/applications/AppStateOverlayBridge;

    iget-object v2, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mState:Lcom/android/flymexxlib/applications/ApplicationsState;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/flymexx/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/flymexxlib/applications/ApplicationsState;Lcom/android/flymexx/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mOverlayBridge:Lcom/android/flymexx/applications/AppStateOverlayBridge;

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const v1, 0x7f08000e

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/DrawOverlayDetails;->addPreferencesFromResource(I)V

    const-string/jumbo v1, "app_ops_settings_switch"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/DrawOverlayDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "app_ops_settings_preference"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/DrawOverlayDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mOverlayPrefs:Landroid/support/v7/preference/Preference;

    const-string/jumbo v1, "app_ops_settings_description"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/DrawOverlayDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mOverlayDesc:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/DrawOverlayDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    const v2, 0x7f0c0da9

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(I)V

    iget-object v1, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    const v2, 0x7f0c0dad

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mOverlayPrefs:Landroid/support/v7/preference/Preference;

    const v2, 0x7f0c0dae

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mOverlayDesc:Landroid/support/v7/preference/Preference;

    const v2, 0x7f0c0daf

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mOverlayPrefs:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mSettingsIntent:Landroid/content/Intent;

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mOverlayState:Lcom/android/flymexx/applications/AppStateOverlayBridge$OverlayState;

    if-eqz v2, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mOverlayState:Lcom/android/flymexx/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v3}, Lcom/android/flymexx/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mOverlayState:Lcom/android/flymexx/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v2}, Lcom/android/flymexx/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/flymexx/applications/DrawOverlayDetails;->setCanDrawOverlay(Z)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/DrawOverlayDetails;->refreshUi()Z

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    iget-object v1, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mOverlayPrefs:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/flymexx/applications/DrawOverlayDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mSettingsIntent:Landroid/content/Intent;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DrawOverlayDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to launch app draw overlay settings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected refreshUi()Z
    .locals 4

    iget-object v1, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mOverlayBridge:Lcom/android/flymexx/applications/AppStateOverlayBridge;

    iget-object v2, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/flymexx/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/flymexx/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mOverlayState:Lcom/android/flymexx/applications/AppStateOverlayBridge$OverlayState;

    iget-object v1, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mOverlayState:Lcom/android/flymexx/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v1}, Lcom/android/flymexx/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v0

    iget-object v1, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mOverlayState:Lcom/android/flymexx/applications/AppStateOverlayBridge$OverlayState;

    iget-boolean v2, v2, Lcom/android/flymexx/applications/AppStateOverlayBridge$OverlayState;->permissionDeclared:Z

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mOverlayPrefs:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/DrawOverlayDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/applications/DrawOverlayDetails;->mOverlayPrefs:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v1, 0x1

    return v1
.end method
