.class public final Lcom/android/flymexx/dashboard/DashboardContainerFragment;
.super Lcom/android/flymexx/InstrumentedFragment;
.source "DashboardContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;,
        Lcom/android/flymexx/dashboard/DashboardContainerFragment$TabChangeListener;
    }
.end annotation


# instance fields
.field private mHeaderView:Landroid/view/View;

.field private mPagerAdapter:Lcom/android/flymexx/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;

.field private mViewPager:Lcom/android/flymexx/widget/RtlCompatibleViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1da

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/dashboard/DashboardContainerFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const v2, 0x7f04005b

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f110079

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/flymexx/widget/RtlCompatibleViewPager;

    iput-object v2, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment;->mViewPager:Lcom/android/flymexx/widget/RtlCompatibleViewPager;

    new-instance v2, Lcom/android/flymexx/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardContainerFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardContainerFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment;->mViewPager:Lcom/android/flymexx/widget/RtlCompatibleViewPager;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/flymexx/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/flymexx/widget/RtlCompatibleViewPager;)V

    iput-object v2, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment;->mPagerAdapter:Lcom/android/flymexx/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;

    iget-object v2, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment;->mViewPager:Lcom/android/flymexx/widget/RtlCompatibleViewPager;

    iget-object v3, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment;->mPagerAdapter:Lcom/android/flymexx/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;

    invoke-virtual {v2, v3}, Lcom/android/flymexx/widget/RtlCompatibleViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v3, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment;->mViewPager:Lcom/android/flymexx/widget/RtlCompatibleViewPager;

    new-instance v4, Lcom/android/flymexx/dashboard/DashboardContainerFragment$TabChangeListener;

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardContainerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/flymexx/SettingsActivity;

    invoke-direct {v4, v2}, Lcom/android/flymexx/dashboard/DashboardContainerFragment$TabChangeListener;-><init>(Lcom/android/flymexx/SettingsActivity;)V

    invoke-virtual {v3, v4}, Lcom/android/flymexx/widget/RtlCompatibleViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardContainerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, ":settings:select_settings_tab"

    const-string/jumbo v4, "SUMMARY"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SUPPORT"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment;->mViewPager:Lcom/android/flymexx/widget/RtlCompatibleViewPager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/flymexx/widget/RtlCompatibleViewPager;->setCurrentItem(I)V

    :goto_0
    const v2, 0x7f04005c

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment;->mHeaderView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment;->mHeaderView:Landroid/view/View;

    check-cast v2, Lcom/android/flymexx/widget/SlidingTabLayout;

    iget-object v3, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment;->mViewPager:Lcom/android/flymexx/widget/RtlCompatibleViewPager;

    invoke-virtual {v2, v3}, Lcom/android/flymexx/widget/SlidingTabLayout;->setViewPager(Lcom/android/flymexx/widget/RtlCompatibleViewPager;)V

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment;->mViewPager:Lcom/android/flymexx/widget/RtlCompatibleViewPager;

    invoke-virtual {v2, v6}, Lcom/android/flymexx/widget/RtlCompatibleViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/flymexx/InstrumentedFragment;->onResume()V

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment;->mPagerAdapter:Lcom/android/flymexx/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;

    invoke-virtual {v1}, Lcom/android/flymexx/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardContainerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardContainerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;

    iget-object v2, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->setContentHeaderView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
