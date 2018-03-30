.class public Lcom/android/flymexx/applications/ProcessStatsUi;
.super Lcom/android/flymexx/applications/ProcessStatsBase;
.source "ProcessStatsUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/applications/ProcessStatsUi$1;,
        Lcom/android/flymexx/applications/ProcessStatsUi$2;
    }
.end annotation


# static fields
.field public static final BACKGROUND_AND_SYSTEM_PROC_STATES:[I

.field public static final CACHED_PROC_STATES:[I

.field public static final FOREGROUND_PROC_STATES:[I

.field static final sMaxPackageEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/flymexx/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final sPackageEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/flymexx/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mMenuAvg:Landroid/view/MenuItem;

.field private mMenuMax:Landroid/view/MenuItem;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mShowMax:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/flymexx/applications/ProcessStatsUi;->BACKGROUND_AND_SYSTEM_PROC_STATES:[I

    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    sput-object v0, Lcom/android/flymexx/applications/ProcessStatsUi;->FOREGROUND_PROC_STATES:[I

    const/16 v0, 0xb

    const/16 v1, 0xc

    const/16 v2, 0xd

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/flymexx/applications/ProcessStatsUi;->CACHED_PROC_STATES:[I

    new-instance v0, Lcom/android/flymexx/applications/ProcessStatsUi$1;

    invoke-direct {v0}, Lcom/android/flymexx/applications/ProcessStatsUi$1;-><init>()V

    sput-object v0, Lcom/android/flymexx/applications/ProcessStatsUi;->sPackageEntryCompare:Ljava/util/Comparator;

    new-instance v0, Lcom/android/flymexx/applications/ProcessStatsUi$2;

    invoke-direct {v0}, Lcom/android/flymexx/applications/ProcessStatsUi$2;-><init>()V

    sput-object v0, Lcom/android/flymexx/applications/ProcessStatsUi;->sMaxPackageEntryCompare:Ljava/util/Comparator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/applications/ProcessStatsBase;-><init>()V

    return-void
.end method

.method private updateMenu()V
    .locals 2

    iget-object v1, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mMenuMax:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mMenuAvg:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mShowMax:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/applications/ProcessStatsBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mPm:Landroid/content/pm/PackageManager;

    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ProcessStatsUi;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ProcessStatsUi;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ProcessStatsUi;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/applications/ProcessStatsBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v0, 0x1

    const v1, 0x7f0c0d91

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mMenuAvg:Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v1, 0x7f0c0d92

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mMenuMax:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/flymexx/applications/ProcessStatsUi;->updateMenu()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/flymexx/applications/ProcessStatsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mShowMax:Z

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ProcessStatsUi;->refreshUi()V

    invoke-direct {p0}, Lcom/android/flymexx/applications/ProcessStatsUi;->updateMenu()V

    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    instance-of v2, p1, Lcom/android/flymexx/applications/ProcessStatsPreference;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/flymexx/applications/ProcessStatsPreference;

    iget-object v2, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mStatsManager:Lcom/android/flymexx/applications/ProcStatsData;

    invoke-virtual {v2}, Lcom/android/flymexx/applications/ProcStatsData;->getMemInfo()Lcom/android/flymexx/applications/ProcStatsData$MemInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/flymexx/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/flymexx/applications/ProcessStatsPreference;->getEntry()Lcom/android/flymexx/applications/ProcStatsPackageEntry;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v0, v3, v4}, Lcom/android/flymexx/applications/ProcessStatsUi;->launchMemoryDetail(Lcom/android/flymexx/SettingsActivity;Lcom/android/flymexx/applications/ProcStatsData$MemInfo;Lcom/android/flymexx/applications/ProcStatsPackageEntry;Z)V

    invoke-super {p0, p1}, Lcom/android/flymexx/applications/ProcessStatsBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/flymexx/applications/ProcessStatsBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public refreshUi()V
    .locals 15

    iget-object v3, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    iget-object v3, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    iget-object v6, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-boolean v3, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v3, :cond_0

    const v3, 0x7f0c0d8b

    :goto_0
    invoke-virtual {v6, v3}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v3, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mStatsManager:Lcom/android/flymexx/applications/ProcStatsData;

    invoke-virtual {v3}, Lcom/android/flymexx/applications/ProcStatsData;->getMemInfo()Lcom/android/flymexx/applications/ProcStatsData$MemInfo;

    move-result-object v13

    iget-object v3, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mStatsManager:Lcom/android/flymexx/applications/ProcStatsData;

    invoke-virtual {v3}, Lcom/android/flymexx/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object v14

    const/4 v12, 0x0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v12, v0, :cond_1

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/flymexx/applications/ProcStatsPackageEntry;

    invoke-virtual {v2}, Lcom/android/flymexx/applications/ProcStatsPackageEntry;->updateMetrics()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    const v3, 0x7f0c0d8a

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/flymexx/applications/ProcessStatsUi;->sMaxPackageEntryCompare:Ljava/util/Comparator;

    :goto_2
    invoke-static {v14, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-boolean v3, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v3, :cond_3

    iget-wide v4, v13, Lcom/android/flymexx/applications/ProcStatsData$MemInfo;->realTotalRam:D

    :goto_3
    const/4 v12, 0x0

    :goto_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ge v12, v3, :cond_5

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/flymexx/applications/ProcStatsPackageEntry;

    new-instance v1, Lcom/android/flymexx/applications/ProcessStatsPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ProcessStatsUi;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/flymexx/applications/ProcessStatsPreference;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v11, v3}, Lcom/android/flymexx/applications/ProcStatsPackageEntry;->retrieveUiData(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    iget-object v3, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mPm:Landroid/content/pm/PackageManager;

    iget-wide v6, v13, Lcom/android/flymexx/applications/ProcStatsData$MemInfo;->weightToRam:D

    iget-wide v8, v13, Lcom/android/flymexx/applications/ProcStatsData$MemInfo;->totalScale:D

    iget-boolean v10, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    :goto_5
    invoke-virtual/range {v1 .. v10}, Lcom/android/flymexx/applications/ProcessStatsPreference;->init(Lcom/android/flymexx/applications/ProcStatsPackageEntry;Landroid/content/pm/PackageManager;DDDZ)V

    invoke-virtual {v1, v12}, Lcom/android/flymexx/applications/ProcessStatsPreference;->setOrder(I)V

    iget-object v3, p0, Lcom/android/flymexx/applications/ProcessStatsUi;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_2
    sget-object v3, Lcom/android/flymexx/applications/ProcessStatsUi;->sPackageEntryCompare:Ljava/util/Comparator;

    goto :goto_2

    :cond_3
    iget-wide v6, v13, Lcom/android/flymexx/applications/ProcStatsData$MemInfo;->usedWeight:D

    iget-wide v8, v13, Lcom/android/flymexx/applications/ProcStatsData$MemInfo;->weightToRam:D

    mul-double v4, v6, v8

    goto :goto_3

    :cond_4
    const/4 v10, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method
