.class public Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "ExpandedDesktopSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/flymexxlib/applications/ApplicationsState$Callbacks;
.implements Lorg/cyanogenmod/cmparts/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;,
        Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;,
        Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ModeAdapter;,
        Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivityFilter:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;

.field private mAllPackagesAdapter:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;

.field private mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

.field private mEntryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsGloballyExpanded:Z

.field private mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

.field private mSwitchBar:Lorg/cyanogenmod/cmparts/widget/SwitchBar;

.field private mUserListView:Landroid/widget/ListView;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;)Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mAllPackagesAdapter:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;)Lcom/android/flymexxlib/applications/ApplicationsState;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic -set0(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;)Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mActivityFilter:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;

    return-object p1
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;I)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->getStateDrawable(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->getStateForPackage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->save()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mEntryMap:Ljava/util/Map;

    return-void
.end method

.method private enableForAll()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mIsGloballyExpanded:Z

    const-string/jumbo v0, "immersive.full=*"

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->writeValue(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mAllPackagesAdapter:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->notifyDataSetInvalidated()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->showGlobalUi()V

    return-void
.end method

.method private getStateDrawable(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const v0, 0x7f020062

    return v0

    :pswitch_0
    const v0, 0x7f020063

    return v0

    :pswitch_1
    const v0, 0x7f020061

    return v0

    :pswitch_2
    const v0, 0x7f020060

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getStateForPackage(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/view/WindowManagerPolicyControl;->immersiveStatusFilterMatches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p0}, Landroid/view/WindowManagerPolicyControl;->immersiveNavigationFilterMatches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    const/4 v0, 0x2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private handleAppEntries(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v3, v11, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-boolean v11, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v11, :cond_0

    const-string/jumbo v9, "--"

    :goto_1
    if-eqz v5, :cond_2

    invoke-static {v9, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_2
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string/jumbo v9, ""

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v9

    goto :goto_2

    :cond_3
    iget-object v11, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mAllPackagesAdapter:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;

    invoke-static {v11, p1, v10, v8}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->-wrap0(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget-object v11, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mEntryMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v11, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mEntryMap:Ljava/util/Map;

    iget-object v12, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    iget-boolean v11, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mIsGloballyExpanded:Z

    if-eqz v11, :cond_5

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->showGlobalUi()V

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->showPerAppUi()V

    goto :goto_4
.end method

.method private hideFragment()V
    .locals 3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "expanded_desktop_prefs"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private isGloballyExpanded(Landroid/content/ContentResolver;)Z
    .locals 2

    const-string/jumbo v1, "policy_control"

    invoke-static {p1, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "immersive.full=*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private rebuild()V
    .locals 3

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mActivityFilter:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;

    sget-object v2, Lcom/android/flymexxlib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->rebuild(Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    return-void
.end method

.method private save()V
    .locals 2

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mIsGloballyExpanded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "policy_control"

    invoke-static {v0, v1}, Landroid/view/WindowManagerPolicyControl;->saveToSettings(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showFragment()V
    .locals 3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "expanded_desktop_prefs"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private showGlobalUi()V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mUserListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->showFragment()V

    return-void
.end method

.method private showPerAppUi()V
    .locals 2

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->hideFragment()V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mUserListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method private transactFragment()V
    .locals 4

    invoke-static {}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;->newInstance()Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopPrefs;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "expanded_desktop_prefs"

    const v3, 0x7f0c0098

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private userConfigurableSettings()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mIsGloballyExpanded:Z

    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->writeValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl;->reloadFromSetting(Landroid/content/Context;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mAllPackagesAdapter:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->notifyDataSetInvalidated()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->showPerAppUi()V

    return-void
.end method

.method private writeValue(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "policy_control"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/flymexxlib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/flymexxlib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/flymexxlib/applications/ApplicationsState;->newSession(Lcom/android/flymexxlib/applications/ApplicationsState$Callbacks;)Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->resume()V

    new-instance v0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;-><init>(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;Landroid/content/pm/PackageManager;Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mActivityFilter:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->isGloballyExpanded(Landroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mIsGloballyExpanded:Z

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mIsGloballyExpanded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "policy_control"

    invoke-static {v0, v1}, Landroid/view/WindowManagerPolicyControl;->reloadFromSetting(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;-><init>(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mAllPackagesAdapter:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03002b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onDestroy()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->save()V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->pause()V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->release()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mSwitchBar:Lorg/cyanogenmod/cmparts/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mSwitchBar:Lorg/cyanogenmod/cmparts/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->removeOnSwitchChangeListener(Lorg/cyanogenmod/cmparts/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;->-get1(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->performClick()Z

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->rebuild()V

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mActivityFilter:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;->updateLauncherInfoList()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->rebuild()V

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->handleAppEntries(Ljava/util/List;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mAllPackagesAdapter:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->rebuild()V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->enableForAll()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->userConfigurableSettings()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->transactFragment()V

    const v0, 0x7f0c0099

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mUserListView:Landroid/widget/ListView;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mUserListView:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mAllPackagesAdapter:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mUserListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/PartsActivity;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/PartsActivity;->getSwitchBar()Lorg/cyanogenmod/cmparts/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mSwitchBar:Lorg/cyanogenmod/cmparts/widget/SwitchBar;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mSwitchBar:Lorg/cyanogenmod/cmparts/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->addOnSwitchChangeListener(Lorg/cyanogenmod/cmparts/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mSwitchBar:Lorg/cyanogenmod/cmparts/widget/SwitchBar;

    iget-boolean v1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mIsGloballyExpanded:Z

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->mSwitchBar:Lorg/cyanogenmod/cmparts/widget/SwitchBar;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->show()V

    return-void
.end method
