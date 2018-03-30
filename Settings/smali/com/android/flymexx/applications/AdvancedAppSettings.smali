.class public Lcom/android/flymexx/applications/AdvancedAppSettings;
.super Lcom/android/flymexx/SettingsPreferenceFragment;
.source "AdvancedAppSettings.java"

# interfaces
.implements Lcom/android/flymexxlib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/flymexx/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/applications/AdvancedAppSettings$1;,
        Lcom/android/flymexx/applications/AdvancedAppSettings$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAppDomainURLsPreference:Landroid/support/v7/preference/Preference;

.field private mAppPermsPreference:Landroid/support/v7/preference/Preference;

.field private mHighPowerPreference:Landroid/support/v7/preference/Preference;

.field private final mPermissionCallback:Lcom/android/flymexx/applications/PermissionsSummaryHelper$PermissionsResultCallback;

.field private mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

.field private mSystemAlertWindowPreference:Landroid/support/v7/preference/Preference;

.field private mWriteSettingsPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/flymexx/applications/AdvancedAppSettings$2;

    invoke-direct {v0}, Lcom/android/flymexx/applications/AdvancedAppSettings$2;-><init>()V

    sput-object v0, Lcom/android/flymexx/applications/AdvancedAppSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/flymexx/applications/AdvancedAppSettings$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/applications/AdvancedAppSettings$1;-><init>(Lcom/android/flymexx/applications/AdvancedAppSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/applications/AdvancedAppSettings;->mPermissionCallback:Lcom/android/flymexx/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x82

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f080008

    invoke-virtual {p0, v3}, Lcom/android/flymexx/applications/AdvancedAppSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AdvancedAppSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v4, "manage_perms"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AdvancedAppSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/applications/AdvancedAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/flymexxlib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/flymexxlib/applications/ApplicationsState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/flymexxlib/applications/ApplicationsState;->newSession(Lcom/android/flymexxlib/applications/ApplicationsState$Callbacks;)Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/applications/AdvancedAppSettings;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    const-string/jumbo v3, "manage_perms"

    invoke-virtual {p0, v3}, Lcom/android/flymexx/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/applications/AdvancedAppSettings;->mAppPermsPreference:Landroid/support/v7/preference/Preference;

    const-string/jumbo v3, "domain_urls"

    invoke-virtual {p0, v3}, Lcom/android/flymexx/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/applications/AdvancedAppSettings;->mAppDomainURLsPreference:Landroid/support/v7/preference/Preference;

    const-string/jumbo v3, "high_power_apps"

    invoke-virtual {p0, v3}, Lcom/android/flymexx/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/applications/AdvancedAppSettings;->mHighPowerPreference:Landroid/support/v7/preference/Preference;

    const-string/jumbo v3, "system_alert_window"

    invoke-virtual {p0, v3}, Lcom/android/flymexx/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/applications/AdvancedAppSettings;->mSystemAlertWindowPreference:Landroid/support/v7/preference/Preference;

    const-string/jumbo v3, "write_settings_apps"

    invoke-virtual {p0, v3}, Lcom/android/flymexx/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/applications/AdvancedAppSettings;->mWriteSettingsPreference:Landroid/support/v7/preference/Preference;

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method
