.class public Lcom/android/flymexx/datausage/UnrestrictedDataAccess;
.super Lcom/android/flymexx/SettingsPreferenceFragment;
.source "UnrestrictedDataAccess.java"

# interfaces
.implements Lcom/android/flymexxlib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/flymexx/applications/AppStateBaseBridge$Callback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;
    }
.end annotation


# instance fields
.field private mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

.field private mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

.field private mDataUsageBridge:Lcom/android/flymexx/datausage/AppStateDataUsageBridge;

.field private mExtraLoaded:Z

.field private mFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

.field private mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

.field private mShowSystem:Z


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/datausage/UnrestrictedDataAccess;)Lcom/android/flymexxlib/applications/ApplicationsState;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/datausage/UnrestrictedDataAccess;)Lcom/android/flymexx/datausage/DataSaverBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private rebuild()V
    .locals 4

    iget-object v1, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    iget-object v2, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    sget-object v3, Lcom/android/flymexxlib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v1, v2, v3}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->rebuild(Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->onRebuildComplete(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0c0ba3

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x15d

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->setAnimationAllowed(Z)V

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/android/flymexxlib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/flymexxlib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

    new-instance v0, Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/flymexx/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    new-instance v0, Lcom/android/flymexx/datausage/AppStateDataUsageBridge;

    iget-object v1, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/flymexx/datausage/AppStateDataUsageBridge;-><init>(Lcom/android/flymexxlib/applications/ApplicationsState;Lcom/android/flymexx/applications/AppStateBaseBridge$Callback;Lcom/android/flymexx/datausage/DataSaverBackend;)V

    iput-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/flymexx/datausage/AppStateDataUsageBridge;

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/flymexxlib/applications/ApplicationsState;->newSession(Lcom/android/flymexxlib/applications/ApplicationsState$Callbacks;)Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    if-eqz p1, :cond_0

    const-string/jumbo v0, "show_system"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    iget-boolean v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    :goto_1
    iput-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    invoke-virtual {p0, v3}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->setHasOptionsMenu(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c09d9

    :goto_0
    const/16 v1, 0x2b

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_0
    const v0, 0x7f0c09d8

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->release()V

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/flymexx/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/flymexx/datausage/AppStateDataUsageBridge;->release()V

    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mExtraLoaded:Z

    invoke-direct {p0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->rebuild()V

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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    iget-boolean v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0c09d9

    :goto_2
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    :goto_3
    iput-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    iget-boolean v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mExtraLoaded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->rebuild()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const v0, 0x7f0c09d8

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
    .end packed-switch
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

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/flymexx/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/flymexx/datausage/AppStateDataUsageBridge;->pause()V

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->pause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v3, 0x0

    instance-of v2, p1, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;

    invoke-static {v0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->-get1(Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;

    move-result-object v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p2, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-static {v0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->-get0(Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->-get0(Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/flymexx/datausage/DataSaverBackend;->setIsWhitelisted(ILjava/lang/String;Z)V

    invoke-static {v0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->-get1(Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;

    move-result-object v2

    iput-boolean v1, v2, Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    return v3
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5, v1}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;-><init>(Lcom/android/flymexx/datausage/UnrestrictedDataAccess;Landroid/content/Context;Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)V

    invoke-virtual {v4, v3}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->setOrder(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->reuse()V

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->setLoading(ZZ)V

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->resume()V

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/flymexx/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/flymexx/datausage/AppStateDataUsageBridge;->resume()V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "show_system"

    iget-boolean v1, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->setLoading(ZZ)V

    return-void
.end method
