.class public Lcom/android/flymexx/applications/ManageApplications;
.super Lcom/android/flymexx/InstrumentedFragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/applications/ManageApplications$1;,
        Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;,
        Lcom/android/flymexx/applications/ManageApplications$SectionInfo;,
        Lcom/android/flymexx/applications/ManageApplications$SummaryProvider;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field public static final FILTERS:[Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_LABELS:[I

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field public mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mCurrentUid:I

.field public mFilter:I

.field private mFilterAdapter:Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;

.field private mFilterSpinner:Landroid/widget/Spinner;

.field private mFinishAfterDialog:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mListContainer:Landroid/view/View;

.field public mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mNotifBackend:Lcom/android/flymexx/notification/NotificationBackend;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mResetAppsHelper:Lcom/android/flymexx/applications/ResetAppsHelper;

.field private mRootView:Landroid/view/View;

.field private mShowSystem:Z

.field private mSortOrder:I

.field private mSpinnerHeader:Landroid/view/View;

.field private mVolumeName:Ljava/lang/String;

.field private mVolumeUuid:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/applications/ManageApplications;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/applications/ManageApplications;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/flymexx/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/flymexx/applications/ManageApplications;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/flymexx/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/flymexx/applications/ManageApplications;)Lcom/android/flymexx/notification/NotificationBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mNotifBackend:Lcom/android/flymexx/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/flymexx/applications/ManageApplications;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mShowSystem:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/flymexx/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    const/16 v1, 0x10

    const/4 v4, 0x3

    const-string/jumbo v0, "ManageApplications"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/flymexx/applications/ManageApplications;->DEBUG:Z

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/flymexx/applications/ManageApplications;->FILTER_LABELS:[I

    new-array v0, v1, [Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    new-instance v1, Lcom/android/flymexxlib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/flymexx/applications/AppStatePowerBridge;->FILTER_POWER_WHITELISTED:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    sget-object v3, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v2, v3}, Lcom/android/flymexxlib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/flymexxlib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    sget-object v3, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v2, v3}, Lcom/android/flymexxlib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_SILENCED:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_HIDE_SENSITIVE:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_HIDE_ALL:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_PRIORITY:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/applications/AppStateUsageBridge;->FILTER_APP_USAGE:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/applications/AppStateOverlayBridge;->FILTER_SYSTEM_ALERT_WINDOW:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/applications/AppStateWriteSettingsBridge;->FILTER_WRITE_SETTINGS:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/flymexx/applications/ManageApplications;->FILTERS:[Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/flymexx/applications/ManageApplications$1;

    invoke-direct {v0}, Lcom/android/flymexx/applications/ManageApplications$1;-><init>()V

    sput-object v0, Lcom/android/flymexx/applications/ManageApplications;->SUMMARY_PROVIDER_FACTORY:Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void

    :array_0
    .array-data 4
        0x7f0c0d61
        0x7f0c0d24
        0x7f0c0d24
        0x7f0c0d25
        0x7f0c0826
        0x7f0c0d28
        0x7f0c0d2d
        0x7f0c0d2b
        0x7f0c0d2c
        0x7f0c0d2a
        0x7f0c0d26
        0x7f0c0d27
        0x7f0c0d29
        0x7f0c0d24
        0x7f0c0db4
        0x7f0c0dba
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/InstrumentedFragment;-><init>()V

    const v0, 0x7f110345

    iput v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mSortOrder:I

    return-void
.end method

.method private createHeader()V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f1100fe

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04002b

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    const v3, 0x7f110082

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {v2, p0}, Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;-><init>(Lcom/android/flymexx/applications/ManageApplications;)V

    iput-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilterAdapter:Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilterAdapter:Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilterAdapter:Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {p0}, Lcom/android/flymexx/applications/ManageApplications;->getDefaultFilter()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilterAdapter:Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilterAdapter:Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    :cond_0
    iget v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilterAdapter:Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v2, v6}, Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilterAdapter:Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilterAdapter:Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilterAdapter:Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilterAdapter:Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    :cond_1
    iget v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilterAdapter:Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v2, v5}, Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    :cond_2
    iget v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    new-instance v3, Lcom/android/flymexxlib/applications/ApplicationsState$VolumeFilter;

    iget-object v4, p0, Lcom/android/flymexx/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/android/flymexxlib/applications/ApplicationsState$VolumeFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->setOverrideFilter(Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;)V

    :cond_3
    return-void
.end method

.method private getDefaultFilter()I
    .locals 1

    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x2

    return v0

    :pswitch_0
    const/16 v0, 0xd

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_2
    const/16 v0, 0xe

    return v0

    :pswitch_3
    const/16 v0, 0xf

    return v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isFastScrollEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    iget v1, p0, Lcom/android/flymexx/applications/ManageApplications;->mSortOrder:I

    const v2, 0x7f110345

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startAppInfoFragment(Ljava/lang/Class;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mCurrentUid:I

    const/4 v5, 0x1

    move-object v0, p1

    move v1, p2

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/android/flymexx/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;I)V

    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 3

    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-class v0, Lcom/android/flymexx/applications/InstalledAppDetails;

    const v1, 0x7f0c07fa

    invoke-direct {p0, v0, v1}, Lcom/android/flymexx/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    :goto_0
    return-void

    :pswitch_1
    const-class v0, Lcom/android/flymexx/notification/AppNotificationSettings;

    const v1, 0x7f0c0c72

    invoke-direct {p0, v0, v1}, Lcom/android/flymexx/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    :pswitch_2
    const-class v0, Lcom/android/flymexx/applications/UsageAccessDetails;

    const v1, 0x7f0c0d50

    invoke-direct {p0, v0, v1}, Lcom/android/flymexx/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    :pswitch_3
    const-class v0, Lcom/android/flymexx/applications/AppStorageSettings;

    const v1, 0x7f0c0677

    invoke-direct {p0, v0, v1}, Lcom/android/flymexx/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/flymexx/applications/ManageApplications;->mFinishAfterDialog:Z

    const/4 v2, 0x1

    invoke-static {p0, v0, v2, v1}, Lcom/android/flymexx/fuelgauge/HighPowerDetail;->show(Landroid/app/Fragment;Ljava/lang/String;IZ)V

    goto :goto_0

    :pswitch_5
    const-class v0, Lcom/android/flymexx/applications/DrawOverlayDetails;

    const v1, 0x7f0c0db2

    invoke-direct {p0, v0, v1}, Lcom/android/flymexx/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    :pswitch_6
    const-class v0, Lcom/android/flymexx/applications/WriteSettingsDetails;

    const v1, 0x7f0c0dbc

    invoke-direct {p0, v0, v1}, Lcom/android/flymexx/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    const/16 v1, 0xdd

    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/16 v0, 0x41

    return v0

    :pswitch_2
    const/16 v0, 0x85

    return v0

    :pswitch_3
    const/16 v0, 0xb6

    return v0

    :pswitch_4
    const/16 v0, 0x5f

    return v0

    :pswitch_5
    const/16 v0, 0xb8

    return v0

    :pswitch_6
    return v1

    :pswitch_7
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/flymexx/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/flymexx/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mFinishAfterDialog:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mCurrentUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/flymexxlib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/flymexx/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/flymexx/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/flymexx/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/android/flymexx/applications/ManageApplications;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/flymexxlib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/flymexxlib/applications/ApplicationsState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "classname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-class v3, Lcom/android/flymexx/Settings$AllApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v4, p0, Lcom/android/flymexx/applications/ManageApplications;->mShowSystem:Z

    :goto_0
    invoke-direct {p0}, Lcom/android/flymexx/applications/ManageApplications;->getDefaultFilter()I

    move-result v3

    iput v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilter:I

    if-eqz p1, :cond_2

    const-string/jumbo v3, "sortOrder"

    iget v4, p0, Lcom/android/flymexx/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mSortOrder:I

    const-string/jumbo v3, "showSystem"

    iget-boolean v4, p0, Lcom/android/flymexx/applications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mShowSystem:Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0844

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/flymexx/applications/ResetAppsHelper;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/flymexx/applications/ResetAppsHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mResetAppsHelper:Lcom/android/flymexx/applications/ResetAppsHelper;

    return-void

    :cond_3
    const-class v3, Lcom/android/flymexx/Settings$NotificationAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput v4, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    new-instance v3, Lcom/android/flymexx/notification/NotificationBackend;

    invoke-direct {v3}, Lcom/android/flymexx/notification/NotificationBackend;-><init>()V

    iput-object v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mNotifBackend:Lcom/android/flymexx/notification/NotificationBackend;

    goto :goto_0

    :cond_4
    const-class v3, Lcom/android/flymexx/Settings$StorageUseActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_5

    const-string/jumbo v3, "volumeUuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "volumeUuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    const-string/jumbo v3, "volumeName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mVolumeName:Ljava/lang/String;

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    :goto_1
    const v3, 0x7f110346

    iput v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mSortOrder:I

    goto :goto_0

    :cond_5
    iput v5, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    goto :goto_1

    :cond_6
    const-class v3, Lcom/android/flymexx/Settings$UsageAccessSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x4

    iput v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    goto/16 :goto_0

    :cond_7
    const-class v3, Lcom/android/flymexx/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x5

    iput v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    iput-boolean v4, p0, Lcom/android/flymexx/applications/ManageApplications;->mShowSystem:Z

    goto/16 :goto_0

    :cond_8
    const-class v3, Lcom/android/flymexx/Settings$OverlaySettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x6

    iput v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    goto/16 :goto_0

    :cond_9
    const-class v3, Lcom/android/flymexx/Settings$WriteSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x7

    iput v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    goto/16 :goto_0

    :cond_a
    iput v5, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    if-nez v0, :cond_0

    const v0, 0x7f0c0b9a

    :goto_0
    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageApplications;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v0, v2}, Lcom/android/flymexxlib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    iput-object p1, p0, Lcom/android/flymexx/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v0, 0x7f140003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageApplications;->updateOptionsMenu()V

    return-void

    :cond_0
    const v0, 0x7f0c0b99

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/android/flymexx/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04009f

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f11015e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f110167

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mListContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mListContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    iput-object v1, p0, Lcom/android/flymexx/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplicationsState:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget v4, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilter:I

    invoke-direct {v2, v3, p0, v4}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/flymexxlib/applications/ApplicationsState;Lcom/android/flymexx/applications/ManageApplications;I)V

    iput-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    const-string/jumbo v3, "hasEntries"

    invoke-virtual {p3, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->-set2(Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;Z)Z

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    const-string/jumbo v3, "hasBridge"

    invoke-virtual {p3, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->-set1(Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;Z)Z

    :cond_1
    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/flymexx/applications/ManageApplications;->isFastScrollEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v2, v3, v5}, Lcom/android/flymexx/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    :cond_2
    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v6, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_3
    invoke-direct {p0}, Lcom/android/flymexx/applications/ManageApplications;->createHeader()V

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mResetAppsHelper:Lcom/android/flymexx/applications/ResetAppsHelper;

    invoke-virtual {v2, p3}, Lcom/android/flymexx/applications/ResetAppsHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/flymexx/InstrumentedFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->release()V

    :cond_0
    iput-object v1, p0, Lcom/android/flymexx/applications/ManageApplications;->mRootView:Landroid/view/View;

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

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p3, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p3}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iget-object v1, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/flymexx/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/android/flymexx/applications/ManageApplications;->mCurrentUid:I

    invoke-direct {p0}, Lcom/android/flymexx/applications/ManageApplications;->startApplicationDetailsActivity()V

    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilterAdapter:Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0, p3}, Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;->getFilter(I)I

    move-result v0

    iput v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilter:I

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilter:I

    invoke-virtual {v0, v1}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->setFilter(I)V

    sget-boolean v0, Lcom/android/flymexx/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Selecting filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    iput v7, p0, Lcom/android/flymexx/applications/ManageApplications;->mSortOrder:I

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/flymexx/applications/ManageApplications;->isFastScrollEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/flymexx/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageApplications;->updateOptionsMenu()V

    return v8

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mShowSystem:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mShowSystem:Z

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0

    :cond_1
    move v0, v8

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mResetAppsHelper:Lcom/android/flymexx/applications/ResetAppsHelper;

    invoke-virtual {v0}, Lcom/android/flymexx/applications/ResetAppsHelper;->buildResetDialog()V

    return v8

    :pswitch_3
    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    if-ne v0, v8, :cond_2

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    const-class v1, Lcom/android/flymexx/notification/ConfigureNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0c63

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/flymexx/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    return v8

    :cond_2
    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    const-class v1, Lcom/android/flymexx/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0d2f

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/flymexx/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x7f110342
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/InstrumentedFragment;->onPause()V

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->pause()V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageApplications;->updateOptionsMenu()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/flymexx/InstrumentedFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageApplications;->updateView()V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageApplications;->updateOptionsMenu()V

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/flymexx/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->-wrap1(Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mResetAppsHelper:Lcom/android/flymexx/applications/ResetAppsHelper;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/applications/ResetAppsHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "sortOrder"

    iget v1, p0, Lcom/android/flymexx/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "showSystem"

    iget-boolean v1, p0, Lcom/android/flymexx/applications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "hasEntries"

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->-get3(Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "hasBridge"

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications;->mApplications:Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;->-get2(Lcom/android/flymexx/applications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/InstrumentedFragment;->onStop()V

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mResetAppsHelper:Lcom/android/flymexx/applications/ResetAppsHelper;

    invoke-virtual {v0}, Lcom/android/flymexx/applications/ResetAppsHelper;->stop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v2, 0x7f1100fe

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageApplications;->mVolumeName:Ljava/lang/String;

    const/4 v4, -0x1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/flymexx/AppHeader;->createAppHeader(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public setHasDisabled(Z)V
    .locals 2

    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilterAdapter:Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mFilterAdapter:Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/flymexx/applications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    return-void
.end method

.method updateOptionsMenu()V
    .locals 7

    const v6, 0x7f110345

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f110342

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    if-ne v0, v1, :cond_3

    :cond_1
    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    if-ne v0, v4, :cond_5

    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mSortOrder:I

    if-eq v0, v6, :cond_4

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f110346

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    if-ne v0, v4, :cond_7

    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mSortOrder:I

    const v4, 0x7f110346

    if-eq v0, v4, :cond_6

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f110343

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mShowSystem:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    if-eq v0, v5, :cond_8

    move v0, v1

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f110344

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mShowSystem:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/flymexx/applications/ManageApplications;->mListType:I

    if-eq v3, v5, :cond_2

    move v2, v1

    :cond_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_3
.end method

.method public updateView()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageApplications;->updateOptionsMenu()V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method
