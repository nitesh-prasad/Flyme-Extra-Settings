.class public Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "PrivacyGuardManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;,
        Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$HelpDialogFragment;,
        Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsList:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mNoUserAppsInstalled:Landroid/widget/TextView;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSavedFirstItemOffset:I

.field private mSavedFirstVisiblePosition:I


# direct methods
.method static synthetic -wrap0(Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->doReset()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    return-void
.end method

.method private createAdapter()Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;
    .locals 11

    const/4 v3, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;

    iget-boolean v8, v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->enabled:Z

    if-nez v8, :cond_0

    const-string/jumbo v6, "--"

    :goto_1
    if-eqz v3, :cond_2

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v8, v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->title:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v6, ""

    goto :goto_1

    :cond_1
    iget-object v8, v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->title:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v6

    goto :goto_2

    :cond_3
    new-instance v8, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-direct {v8, v9, v10, v7, v5}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v8
.end method

.method private doReset()V
    .locals 3

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2}, Landroid/app/AppOpsManager;->resetAllModes()V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAdapter:Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;

    invoke-virtual {v2}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private prepareAppAdapter()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mNoUserAppsInstalled:Landroid/widget/TextView;

    const v1, 0x7f080196

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mNoUserAppsInstalled:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mNoUserAppsInstalled:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->createAdapter()Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAdapter:Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAdapter:Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    goto :goto_0
.end method

.method private resetPrivacyGuard()V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->showResetDialog()V

    return-void
.end method

.method private scheduleAppsLoad()V
    .locals 3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method private shouldShowSystemApps()Z
    .locals 3

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "show_system_apps"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private showHelp()V
    .locals 3

    new-instance v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$HelpDialogFragment;

    invoke-direct {v0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$HelpDialogFragment;-><init>()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "help_dialog"

    invoke-virtual {v0, v1, v2}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$HelpDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showResetDialog()V
    .locals 3

    new-instance v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment;

    invoke-direct {v0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "reset_dialog"

    invoke-virtual {v0, v1, v2}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c00cb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mNoUserAppsInstalled:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c00a1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mLoadingContainer:Landroid/view/View;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "privacy_guard_manager"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "first_help_shown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    const-string/jumbo v0, "last_list_pos"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    const-string/jumbo v0, "last_list_offset"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mSavedFirstItemOffset:I

    :goto_1
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->scheduleAppsLoad()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->setHasOptionsMenu(Z)V

    return-void

    :cond_1
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->showHelp()V

    goto :goto_0

    :cond_2
    iput v3, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    iput v2, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mSavedFirstItemOffset:I

    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mLoadingContainer:Landroid/view/View;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mLoadingContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->shouldShowSystemApps()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0f0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0c00ed

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->shouldShowSystemApps()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "appops"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAppOps:Landroid/app/AppOpsManager;

    const v3, 0x7f030058

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardPrefs;->newInstance()Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardPrefs;

    move-result-object v2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string/jumbo v3, "privacy_guard_fragment"

    const v4, 0x7f0c00ca

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;

    iget-boolean v1, v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->uid:I

    iget-object v3, v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    iget-boolean v4, v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AppOpsManager;->setPrivacyGuardSettingForPackage(ILjava/lang/String;Z)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAdapter:Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;

    invoke-virtual {v1}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "package"

    iget-object v4, v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.APP_OPS_DETAILS_SETTINGS"

    const-string/jumbo v4, "package"

    iget-object v5, v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v3, 0x1

    return v3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v3, -0x1

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->prepareAppAdapter()V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mLoadingContainer:Landroid/view/View;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    iget v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    iget v1, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    iget v2, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mSavedFirstItemOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iput v3, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mLoadingContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    :pswitch_0
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->showHelp()V

    return v3

    :pswitch_1
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->resetPrivacyGuard()V

    return v3

    :pswitch_2
    const-string/jumbo v1, "show_system_apps"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v4, "show_system_apps"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->scheduleAppsLoad()V

    return v3

    :cond_0
    move v2, v3

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.APP_OPS_SETTINGS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return v3

    :pswitch_data_0
    .packed-switch 0x7f0c00ec
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onPause()V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    iput v1, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mSavedFirstItemOffset:I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->scheduleAppsLoad()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "last_list_pos"

    iget v1, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "last_list_offset"

    iget v1, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->mSavedFirstItemOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    return-void
.end method
