.class public Lcom/android/flymexx/fuelgauge/PowerUsageSummary;
.super Lcom/android/flymexx/fuelgauge/PowerUsageBase;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/fuelgauge/PowerUsageSummary$1;,
        Lcom/android/flymexx/fuelgauge/PowerUsageSummary$2;,
        Lcom/android/flymexx/fuelgauge/PowerUsageSummary$SummaryProvider;
    }
.end annotation


# static fields
.field static final MENU_ADDITIONAL_BATTERY_INFO:I = 0x5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

.field mHandler:Landroid/os/Handler;

.field private mHistPref:Lcom/android/flymexx/fuelgauge/BatteryHistoryPreference;

.field private mStatsType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary$2;-><init>()V

    sput-object v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/fuelgauge/PowerUsageBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mStatsType:I

    new-instance v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/flymexx/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 3

    const-string/jumbo v0, "not_available"

    const-string/jumbo v2, "not_available"

    invoke-virtual {p0, v2}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "not_available"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    const v2, 0x7f0c095a

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    iget-object v2, p0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private static getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v11

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v11, :cond_b

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    if-lez v17, :cond_a

    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v13

    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->isSharedGid(I)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v13

    :cond_0
    invoke-static {v13}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->isSystemUid(I)Z

    move-result v17

    if-eqz v17, :cond_1

    const-string/jumbo v17, "mediaserver"

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    :cond_1
    :goto_1
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    move/from16 v0, v17

    if-eq v13, v0, :cond_2

    new-instance v10, Lcom/android/internal/os/BatterySipper;

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/flymexx/fuelgauge/FakeUid;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lcom/android/flymexx/fuelgauge/FakeUid;-><init>(I)V

    const-wide/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v10, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object v15, v10

    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_5

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_4
    const/16 v13, 0x3e8

    goto :goto_1

    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v5, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    :cond_6
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    :goto_3
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v8, v0

    :goto_4
    if-lez v8, :cond_3

    add-int v17, v4, v8

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    if-lez v4, :cond_7

    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v9, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v9, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    goto :goto_4

    :cond_a
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v12, :cond_c

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/os/BatterySipper;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_c
    new-instance v17, Lcom/android/flymexx/fuelgauge/PowerUsageSummary$3;

    invoke-direct/range {v17 .. v17}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary$3;-><init>()V

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v14
.end method

.method private static isSharedGid(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isSystemUid(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-lt p0, v1, :cond_0

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0c0ba7

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x36

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->setAnimationAllowed(Z)V

    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "battery_history"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/fuelgauge/BatteryHistoryPreference;

    iput-object v0, p0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/flymexx/fuelgauge/BatteryHistoryPreference;

    const-string/jumbo v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x4

    const v2, 0x7f0c0d5f

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/flymexx/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/flymexx/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/flymexx/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/flymexx/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/flymexx/fuelgauge/PowerUsageFeatureProvider;->isAdditionalBatteryInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    const v2, 0x7f0c0d60

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/flymexx/fuelgauge/PowerUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/fuelgauge/PowerUsageBase;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/flymexx/fuelgauge/BatteryEntry;->clearUidCache()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/flymexx/fuelgauge/PowerUsageBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_1
    iget v1, p0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v1, :cond_0

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mStatsType:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->refreshStats()V

    return v7

    :cond_0
    iput v6, p0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_0

    :pswitch_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "classname"

    const-class v3, Lcom/android/flymexx/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/android/flymexx/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0d5f

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/flymexx/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return v7

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/flymexx/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/flymexx/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/flymexx/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/flymexx/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/flymexx/fuelgauge/PowerUsageFeatureProvider;->getAdditionalBatteryInfoIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->startActivity(Landroid/content/Intent;)V

    return v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/android/flymexx/fuelgauge/BatteryEntry;->stopRequestQueue()V

    iget-object v0, p0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Lcom/android/flymexx/fuelgauge/PowerUsageBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7

    const/4 v4, 0x1

    instance-of v0, p1, Lcom/android/flymexx/fuelgauge/PowerGaugePreference;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/flymexx/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :cond_0
    move-object v6, p1

    check-cast v6, Lcom/android/flymexx/fuelgauge/PowerGaugePreference;

    invoke-virtual {v6}, Lcom/android/flymexx/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/flymexx/fuelgauge/BatteryEntry;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    iget-object v1, p0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget v2, p0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/flymexx/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Lcom/android/flymexx/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/flymexx/fuelgauge/BatteryEntry;ZZ)V

    invoke-super {p0, p1}, Lcom/android/flymexx/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/flymexx/fuelgauge/PowerUsageBase;->onResume()V

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->refreshStats()V

    return-void
.end method

.method protected refreshStats()V
    .locals 36

    invoke-super/range {p0 .. p0}, Lcom/android/flymexx/fuelgauge/PowerUsageBase;->refreshStats()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/flymexx/fuelgauge/BatteryHistoryPreference;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->updatePreference(Lcom/android/flymexx/fuelgauge/BatteryHistoryPreference;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v24

    const-string/jumbo v30, "screen.full"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    new-instance v29, Landroid/util/TypedValue;

    invoke-direct/range {v29 .. v29}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v30

    const v31, 0x1010429

    const/16 v32, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v29

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v29

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getColor(I)I

    move-result v10

    const-wide/high16 v30, 0x4024000000000000L    # 10.0

    cmpl-double v30, v8, v30

    if-gez v30, :cond_2

    :cond_0
    :goto_0
    if-nez v6, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    invoke-static {}, Lcom/android/flymexx/fuelgauge/BatteryEntry;->startRequestQueue()V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v25

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v30, v0

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v12

    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v16

    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_0

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/os/BatterySipper;

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v30, v0

    const-wide v32, 0x40ac200000000000L    # 3600.0

    mul-double v30, v30, v32

    const-wide/high16 v32, 0x4014000000000000L    # 5.0

    cmpg-double v30, v30, v32

    if-gez v30, :cond_5

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v26

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v30, v0

    div-double v30, v30, v26

    int-to-double v0, v12

    move-wide/from16 v32, v0

    mul-double v20, v30, v32

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    add-double v30, v30, v20

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_6

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v32

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    mul-double v32, v32, v34

    const-wide/high16 v34, 0x4008000000000000L    # 3.0

    div-double v32, v32, v34

    cmpg-double v30, v30, v32

    if-ltz v30, :cond_3

    const-wide/high16 v30, 0x4024000000000000L    # 10.0

    cmpg-double v30, v20, v30

    if-ltz v30, :cond_3

    const-string/jumbo v30, "user"

    sget-object v31, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    const-string/jumbo v30, "userdebug"

    sget-object v31, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    :cond_6
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_7

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v32

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v32, v32, v34

    cmpg-double v30, v30, v32

    if-ltz v30, :cond_3

    const-wide/high16 v30, 0x4014000000000000L    # 5.0

    cmpg-double v30, v20, v30

    if-ltz v30, :cond_3

    const-string/jumbo v30, "user"

    sget-object v31, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    const-string/jumbo v30, "userdebug"

    sget-object v31, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    :cond_7
    new-instance v28, Landroid/os/UserHandle;

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v30

    invoke-static/range {v30 .. v30}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    new-instance v13, Lcom/android/flymexx/fuelgauge/BatteryEntry;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v23

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/flymexx/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v30, v0

    invoke-virtual {v13}, Lcom/android/flymexx/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v30, v0

    invoke-virtual {v13}, Lcom/android/flymexx/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v11

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_d

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/BatterySipper;->getPackages()[Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_c

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/BatterySipper;->getPackages()[Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/flymexx/fuelgauge/PowerGaugePreference;

    if-nez v22, :cond_8

    new-instance v22, Lcom/android/flymexx/fuelgauge/PowerGaugePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v7, v11, v13}, Lcom/android/flymexx/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/flymexx/fuelgauge/BatteryEntry;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/flymexx/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4059000000000000L    # 100.0

    mul-double v30, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v32

    div-double v18, v30, v32

    move-wide/from16 v0, v20

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->percent:D

    invoke-virtual {v13}, Lcom/android/flymexx/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/flymexx/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    add-int/lit8 v30, v14, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/flymexx/fuelgauge/PowerGaugePreference;->setOrder(I)V

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/flymexx/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v30, v0

    if-eqz v30, :cond_9

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/flymexx/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_a

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v30

    if-nez v30, :cond_b

    :cond_a
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_b

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/android/flymexx/fuelgauge/PowerGaugePreference;->setTint(I)V

    :cond_b
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary;->getCachedCount()I

    move-result v31

    sub-int v30, v30, v31

    const/16 v31, 0xb

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_3

    goto/16 :goto_0

    :cond_c
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/os/BatterySipper$DrainType;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3
.end method
