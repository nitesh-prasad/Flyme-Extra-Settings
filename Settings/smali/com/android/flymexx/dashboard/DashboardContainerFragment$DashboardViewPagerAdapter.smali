.class final Lcom/android/flymexx/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "DashboardContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/dashboard/DashboardContainerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DashboardViewPagerAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSupportFeatureProvider:Lcom/android/flymexx/overlay/SupportFeatureProvider;

.field private final mViewPager:Lcom/android/flymexx/widget/RtlCompatibleViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/flymexx/widget/RtlCompatibleViewPager;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    iput-object p1, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/flymexx/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/flymexx/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/flymexx/overlay/FeatureFactory;->getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/flymexx/overlay/SupportFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;->mSupportFeatureProvider:Lcom/android/flymexx/overlay/SupportFeatureProvider;

    iput-object p3, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;->mViewPager:Lcom/android/flymexx/widget/RtlCompatibleViewPager;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;->mSupportFeatureProvider:Lcom/android/flymexx/overlay/SupportFeatureProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 5

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Position %d does not map to a valid dashboard fragment"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/android/flymexx/dashboard/DashboardSummary;

    invoke-direct {v0}, Lcom/android/flymexx/dashboard/DashboardSummary;-><init>()V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/android/flymexx/dashboard/SupportFragment;

    invoke-direct {v0}, Lcom/android/flymexx/dashboard/SupportFragment;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/support/v13/app/FragmentPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0e5b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0e5c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment$DashboardViewPagerAdapter;->mViewPager:Lcom/android/flymexx/widget/RtlCompatibleViewPager;

    invoke-virtual {v0, p2}, Lcom/android/flymexx/widget/RtlCompatibleViewPager;->getRtlAwareIndex(I)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/support/v13/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
