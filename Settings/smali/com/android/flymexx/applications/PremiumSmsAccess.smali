.class public Lcom/android/flymexx/applications/PremiumSmsAccess;
.super Lcom/android/flymexx/notification/EmptyTextSettings;
.source "PremiumSmsAccess.java"

# interfaces
.implements Lcom/android/flymexx/applications/AppStateBaseBridge$Callback;
.implements Lcom/android/flymexxlib/applications/ApplicationsState$Callbacks;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/applications/PremiumSmsAccess$PremiumSmsPreference;
    }
.end annotation


# instance fields
.field private mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

.field private mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

.field private mSmsBackend:Lcom/android/flymexx/applications/AppStateSmsPremBridge;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/applications/PremiumSmsAccess;)Lcom/android/flymexxlib/applications/ApplicationsState;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/PremiumSmsAccess;->mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/notification/EmptyTextSettings;-><init>()V

    return-void
.end method

.method private update()V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/applications/PremiumSmsAccess;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    sget-object v1, Lcom/android/flymexx/applications/AppStateSmsPremBridge;->FILTER_APP_PREMIUM_SMS:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    sget-object v2, Lcom/android/flymexxlib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->rebuild(Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/flymexx/applications/PremiumSmsAccess;->updatePrefs(Ljava/util/ArrayList;)V

    return-void
.end method

.method private updatePrefs(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v4, 0x7f0c0e5f

    invoke-virtual {p0, v4}, Lcom/android/flymexx/applications/PremiumSmsAccess;->setEmptyText(I)V

    invoke-virtual {p0, v6, v7}, Lcom/android/flymexx/applications/PremiumSmsAccess;->setLoading(ZZ)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/PremiumSmsAccess;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/flymexx/applications/PremiumSmsAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    new-instance v2, Lcom/android/flymexx/applications/PremiumSmsAccess$PremiumSmsPreference;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/PremiumSmsAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, p0, v4, v5}, Lcom/android/flymexx/applications/PremiumSmsAccess$PremiumSmsPreference;-><init>(Lcom/android/flymexx/applications/PremiumSmsAccess;Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)V

    invoke-virtual {v2, p0}, Lcom/android/flymexx/applications/PremiumSmsAccess$PremiumSmsPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Lcom/android/flymexx/DividerPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/PremiumSmsAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/flymexx/DividerPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Lcom/android/flymexx/DividerPreference;->setSelectable(Z)V

    const v4, 0x7f0c0e60

    invoke-virtual {v3, v4}, Lcom/android/flymexx/DividerPreference;->setSummary(I)V

    invoke-virtual {v3, v7}, Lcom/android/flymexx/DividerPreference;->setDividerAllowedAbove(Z)V

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/PremiumSmsAccess;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x184

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/flymexx/notification/EmptyTextSettings;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/PremiumSmsAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/android/flymexxlib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/flymexxlib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/PremiumSmsAccess;->mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v0, p0, Lcom/android/flymexx/applications/PremiumSmsAccess;->mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/flymexxlib/applications/ApplicationsState;->newSession(Lcom/android/flymexxlib/applications/ApplicationsState$Callbacks;)Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/PremiumSmsAccess;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    new-instance v0, Lcom/android/flymexx/applications/AppStateSmsPremBridge;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/PremiumSmsAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/applications/PremiumSmsAccess;->mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/flymexx/applications/AppStateSmsPremBridge;-><init>(Landroid/content/Context;Lcom/android/flymexxlib/applications/ApplicationsState;Lcom/android/flymexx/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/flymexx/applications/PremiumSmsAccess;->mSmsBackend:Lcom/android/flymexx/applications/AppStateSmsPremBridge;

    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/applications/PremiumSmsAccess;->update()V

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

    iget-object v0, p0, Lcom/android/flymexx/applications/PremiumSmsAccess;->mSmsBackend:Lcom/android/flymexx/applications/AppStateSmsPremBridge;

    invoke-virtual {v0}, Lcom/android/flymexx/applications/AppStateSmsPremBridge;->pause()V

    iget-object v0, p0, Lcom/android/flymexx/applications/PremiumSmsAccess;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->pause()V

    invoke-super {p0}, Lcom/android/flymexx/notification/EmptyTextSettings;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p1

    check-cast v0, Lcom/android/flymexx/applications/PremiumSmsAccess$PremiumSmsPreference;

    iget-object v1, p0, Lcom/android/flymexx/applications/PremiumSmsAccess;->mSmsBackend:Lcom/android/flymexx/applications/AppStateSmsPremBridge;

    invoke-static {v0}, Lcom/android/flymexx/applications/PremiumSmsAccess$PremiumSmsPreference;->-get0(Lcom/android/flymexx/applications/PremiumSmsAccess$PremiumSmsPreference;)Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/flymexx/applications/AppStateSmsPremBridge;->setSmsState(Ljava/lang/String;I)V

    const/4 v1, 0x1

    return v1
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

    invoke-direct {p0, p1}, Lcom/android/flymexx/applications/PremiumSmsAccess;->updatePrefs(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/notification/EmptyTextSettings;->onResume()V

    iget-object v0, p0, Lcom/android/flymexx/applications/PremiumSmsAccess;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->resume()V

    iget-object v0, p0, Lcom/android/flymexx/applications/PremiumSmsAccess;->mSmsBackend:Lcom/android/flymexx/applications/AppStateSmsPremBridge;

    invoke-virtual {v0}, Lcom/android/flymexx/applications/AppStateSmsPremBridge;->resume()V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/notification/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/flymexx/applications/PremiumSmsAccess;->setLoading(ZZ)V

    return-void
.end method
