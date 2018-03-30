.class public abstract Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lorg/cyanogenmod/cmparts/widget/DialogCreatable;
.implements Lorg/cyanogenmod/cmparts/PartsUpdater$Refreshable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$1;,
        Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;,
        Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# instance fields
.field private mAdapter:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;

.field private mAnimationAllowed:Z

.field private mButtonBar:Landroid/view/ViewGroup;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mDataSetObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private mDialogFragment:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mEmptyView:Landroid/view/View;

.field private mFloatingActionButton:Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;

.field private mFooter:Lorg/cyanogenmod/cmparts/widget/LayoutPreference;

.field private mHeader:Lorg/cyanogenmod/cmparts/widget/LayoutPreference;

.field private mIsDataSetObserverRegistered:Z

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

.field private mPreferenceHighlighted:Z

.field private mPreferenceKey:Ljava/lang/String;

.field private final mTriggerUris:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;)Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mAdapter:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;)Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mDialogFragment:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method static synthetic -set0(Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$SettingsDialogFragment;)Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mDialogFragment:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    new-instance v0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$1;-><init>(Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mDataSetObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mTriggerUris:Landroid/util/ArraySet;

    return-void
.end method

.method private addPreferenceToTop(Lorg/cyanogenmod/cmparts/widget/LayoutPreference;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/cyanogenmod/cmparts/widget/LayoutPreference;->setOrder(I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private canUseListViewForHighLighting(Ljava/lang/String;)I
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/support/v7/preference/PreferenceGroupAdapter;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/support/v7/preference/PreferenceGroupAdapter;

    invoke-direct {p0, v0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->findListPositionFromKey(Landroid/support/v7/preference/PreferenceGroupAdapter;Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_1
    return v3
.end method

.method private findListPositionFromKey(Landroid/support/v7/preference/PreferenceGroupAdapter;Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->getItem(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method private highlightPreference(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->canUseListViewForHighLighting(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$3;

    invoke-direct {v2, p0, v0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$3;-><init>(Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;I)V

    const-wide/16 v4, 0x258

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private setFooterView(Lorg/cyanogenmod/cmparts/widget/LayoutPreference;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mFooter:Lorg/cyanogenmod/cmparts/widget/LayoutPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mFooter:Lorg/cyanogenmod/cmparts/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    if-eqz p1, :cond_2

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mFooter:Lorg/cyanogenmod/cmparts/widget/LayoutPreference;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mFooter:Lorg/cyanogenmod/cmparts/widget/LayoutPreference;

    const v1, 0x7ffffffe

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/widget/LayoutPreference;->setOrder(I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mFooter:Lorg/cyanogenmod/cmparts/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-object v2, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mFooter:Lorg/cyanogenmod/cmparts/widget/LayoutPreference;

    goto :goto_0
.end method

.method private updateEmptyView()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mHeader:Lorg/cyanogenmod/cmparts/widget/LayoutPreference;

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    sub-int v1, v4, v1

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mFooter:Lorg/cyanogenmod/cmparts/widget/LayoutPreference;

    if-eqz v4, :cond_2

    :goto_1
    sub-int/2addr v1, v2

    if-gtz v1, :cond_3

    const/4 v0, 0x1

    :goto_2
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    const/16 v3, 0x8

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public final finishFragment()V
    .locals 1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public final finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/PartsActivity;

    invoke-virtual {v0, p1, p2, p3}, Lorg/cyanogenmod/cmparts/PartsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    return-void
.end method

.method protected getBackButton()Landroid/widget/Button;
    .locals 1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/PartsActivity;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/PartsActivity;->getBackButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v1
.end method

.method public getFloatingActionButton()Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mFloatingActionButton:Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/PartsActivity;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/PartsActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected final getPrefContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public highlightPreferenceIfNeeded()V
    .locals 1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->highlightPreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mTriggerUris:Landroid/util/ArraySet;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcyanogenmod/preference/SettingsHelper;->get(Landroid/content/Context;)Lcyanogenmod/preference/SettingsHelper;

    move-result-object v2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mTriggerUris:Landroid/util/ArraySet;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mTriggerUris:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    invoke-virtual {v2, p0, v0}, Lcyanogenmod/preference/SettingsHelper;->startWatching(Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;[Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected onBindPreferences()V
    .locals 0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->registerObserverIfNeeded()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "android:preference_highlighted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    :cond_0
    return-void
.end method

.method protected onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    new-instance v0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;

    invoke-direct {v0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;-><init>(Landroid/support/v7/preference/PreferenceGroup;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mAdapter:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mAdapter:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;

    return-object v0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/support/v14/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0c00c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mFloatingActionButton:Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;

    const v1, 0x7f0c0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mButtonBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->updateEmptyView()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mDialogFragment:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mDialogFragment:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mDialogFragment:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$SettingsDialogFragment;

    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mTriggerUris:Landroid/util/ArraySet;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/preference/SettingsHelper;->get(Landroid/content/Context;)Lcyanogenmod/preference/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcyanogenmod/preference/SettingsHelper;->stopWatching(Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mTriggerUris:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onDetach()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDialogShowing()V
    .locals 0

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    instance-of v1, p1, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog_preference"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onDialogShowing()V

    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "android:preference_highlighted"

    iget-boolean v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cyanogenmod/cmparts/PartsUpdater;->notifyChanged(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    return-void
.end method

.method public registerObserverIfNeeded()V
    .locals 2

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mDataSetObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mDataSetObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onDataSetChanged()V

    :cond_1
    return-void
.end method

.method protected removePreference(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iput-object p1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->updateEmptyView()V

    return-void
.end method

.method protected setFooterView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Lorg/cyanogenmod/cmparts/widget/LayoutPreference;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/cyanogenmod/cmparts/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->setFooterView(Lorg/cyanogenmod/cmparts/widget/LayoutPreference;)V

    return-void
.end method

.method protected setHeaderView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lorg/cyanogenmod/cmparts/widget/LayoutPreference;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/cyanogenmod/cmparts/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mHeader:Lorg/cyanogenmod/cmparts/widget/LayoutPreference;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mHeader:Lorg/cyanogenmod/cmparts/widget/LayoutPreference;

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->addPreferenceToTop(Lorg/cyanogenmod/cmparts/widget/LayoutPreference;)V

    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mDialogFragment:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mDialogFragment:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-static {v0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$SettingsDialogFragment;->-set1(Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    :cond_0
    return-void
.end method

.method public setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mHeader:Lorg/cyanogenmod/cmparts/widget/LayoutPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mHeader:Lorg/cyanogenmod/cmparts/widget/LayoutPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mFooter:Lorg/cyanogenmod/cmparts/widget/LayoutPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mFooter:Lorg/cyanogenmod/cmparts/widget/LayoutPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    return-void

    :cond_3
    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mAnimationAllowed:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->setShouldUseGeneratedIds(Z)V

    goto :goto_0
.end method

.method protected showButtonBar(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/PartsActivity;

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/cmparts/PartsActivity;->showButtonBar(Z)V

    return-void
.end method

.method protected showDialog(I)V
    .locals 3

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mDialogFragment:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SettingsPreference"

    const-string/jumbo v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lorg/cyanogenmod/cmparts/widget/DialogCreatable;I)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mDialogFragment:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$SettingsDialogFragment;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mDialogFragment:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z
    .locals 8

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v1, v7, Lorg/cyanogenmod/cmparts/PartsActivity;

    if-eqz v1, :cond_0

    move-object v0, v7

    check-cast v0, Lorg/cyanogenmod/cmparts/PartsActivity;

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p5

    move v3, p3

    move-object v5, p1

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/cyanogenmod/cmparts/PartsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string/jumbo v1, "SettingsPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parent isn\'t PartsActivity! (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public unregisterObserverIfNeeded()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mDataSetObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    :cond_1
    return-void
.end method

.method protected varargs watch([Landroid/net/Uri;)V
    .locals 4

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mTriggerUris:Landroid/util/ArraySet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mTriggerUris:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/preference/SettingsHelper;->get(Landroid/content/Context;)Lcyanogenmod/preference/SettingsHelper;

    move-result-object v2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mTriggerUris:Landroid/util/ArraySet;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->mTriggerUris:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    invoke-virtual {v2, p0, v0}, Lcyanogenmod/preference/SettingsHelper;->startWatching(Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;[Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
