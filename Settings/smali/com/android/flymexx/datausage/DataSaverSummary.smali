.class public Lcom/android/flymexx/datausage/DataSaverSummary;
.super Lcom/android/flymexx/SettingsPreferenceFragment;
.source "DataSaverSummary.java"

# interfaces
.implements Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/flymexx/datausage/DataSaverBackend$Listener;
.implements Lcom/android/flymexx/applications/AppStateBaseBridge$Callback;
.implements Lcom/android/flymexxlib/applications/ApplicationsState$Callbacks;


# instance fields
.field private mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

.field private mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

.field private mDataUsageBridge:Lcom/android/flymexx/datausage/AppStateDataUsageBridge;

.field private mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

.field private mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

.field private mSwitching:Z

.field private mUnrestrictedAccess:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0c0ba2

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x15c

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataSaverSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/flymexx/SettingsActivity;->getSwitchBar()Lcom/android/flymexx/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/SwitchBar;->show()V

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/android/flymexx/datausage/DataSaverSummary;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "unrestricted_access"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/datausage/DataSaverSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mUnrestrictedAccess:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataSaverSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/android/flymexxlib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/flymexxlib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

    new-instance v0, Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataSaverSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/flymexx/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    new-instance v0, Lcom/android/flymexx/datausage/AppStateDataUsageBridge;

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/flymexx/datausage/AppStateDataUsageBridge;-><init>(Lcom/android/flymexxlib/applications/ApplicationsState;Lcom/android/flymexx/applications/AppStateBaseBridge$Callback;Lcom/android/flymexx/datausage/DataSaverBackend;)V

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/flymexx/datausage/AppStateDataUsageBridge;

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/flymexxlib/applications/ApplicationsState;->newSession(Lcom/android/flymexxlib/applications/ApplicationsState$Callbacks;)Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/widget/SwitchBar;->setChecked(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mSwitching:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onExtraInfoUpdated()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataSaverSummary;->isAdded()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    invoke-virtual {v5}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    sget-object v5, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    invoke-interface {v5, v3}, Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, v3, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v5, v5, Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    if-eqz v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mUnrestrictedAccess:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataSaverSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x7f120022

    invoke-virtual {v6, v8, v2, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

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

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/datausage/DataSaverBackend;->remListener(Lcom/android/flymexx/datausage/DataSaverBackend$Listener;)V

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/flymexx/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/flymexx/datausage/AppStateDataUsageBridge;->pause()V

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->pause()V

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

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-virtual {v0}, Lcom/android/flymexx/datausage/DataSaverBackend;->refreshWhitelist()V

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-virtual {v0}, Lcom/android/flymexx/datausage/DataSaverBackend;->refreshBlacklist()V

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/datausage/DataSaverBackend;->addListener(Lcom/android/flymexx/datausage/DataSaverBackend$Listener;)V

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->resume()V

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/flymexx/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/flymexx/datausage/AppStateDataUsageBridge;->resume()V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mSwitching:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mSwitching:Z

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-virtual {v0, p2}, Lcom/android/flymexx/datausage/DataSaverBackend;->setDataSaverEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0

    return-void
.end method
