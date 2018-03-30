.class public Lcom/android/flymexx/applications/ProcessStatsSummary;
.super Lcom/android/flymexx/applications/ProcessStatsBase;
.source "ProcessStatsSummary.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/applications/ProcessStatsSummary$1;,
        Lcom/android/flymexx/applications/ProcessStatsSummary$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppListPreference:Landroid/support/v7/preference/Preference;

.field private mAppStartupPreference:Landroid/support/v7/preference/Preference;

.field private mAverageUsed:Landroid/support/v7/preference/Preference;

.field private mFree:Landroid/support/v7/preference/Preference;

.field private mPerformance:Landroid/support/v7/preference/Preference;

.field private mSummaryPref:Lcom/android/flymexx/SummaryPreference;

.field private mTotalMemory:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/flymexx/applications/ProcessStatsSummary$1;

    invoke-direct {v0}, Lcom/android/flymexx/applications/ProcessStatsSummary$1;-><init>()V

    sput-object v0, Lcom/android/flymexx/applications/ProcessStatsSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/applications/ProcessStatsBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0xca

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/applications/ProcessStatsBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ProcessStatsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mActivity:Landroid/app/Activity;

    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ProcessStatsSummary;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "status_header"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SummaryPreference;

    iput-object v0, p0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/flymexx/SummaryPreference;

    const-string/jumbo v0, "performance"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mPerformance:Landroid/support/v7/preference/Preference;

    const-string/jumbo v0, "total_memory"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mTotalMemory:Landroid/support/v7/preference/Preference;

    const-string/jumbo v0, "average_used"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mAverageUsed:Landroid/support/v7/preference/Preference;

    const-string/jumbo v0, "free"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mFree:Landroid/support/v7/preference/Preference;

    const-string/jumbo v0, "apps_list"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mAppListPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mAppListPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "apps_startup"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mAppStartupPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mAppStartupPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mAppListPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "transfer_stats"

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "duration_index"

    iget v1, p0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mDurationIndex:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/flymexx/applications/ProcStatsData;

    invoke-virtual {v0}, Lcom/android/flymexx/applications/ProcStatsData;->xferStats()V

    const-class v0, Lcom/android/flymexx/applications/ProcessStatsUi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0d8d

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/flymexx/applications/ProcessStatsSummary;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return v7

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mAppStartupPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "appops_tab"

    const v1, 0x7f0c0195

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/ProcessStatsSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/flymexx/Settings$AppOpsSummaryActivity;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v7

    :cond_1
    return v4
.end method

.method public refreshUi()V
    .locals 26

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/applications/ProcessStatsSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/flymexx/applications/ProcStatsData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/flymexx/applications/ProcStatsData;->getMemInfo()Lcom/android/flymexx/applications/ProcStatsData$MemInfo;

    move-result-object v9

    iget-wide v0, v9, Lcom/android/flymexx/applications/ProcStatsData$MemInfo;->realUsedRam:D

    move-wide/from16 v18, v0

    iget-wide v14, v9, Lcom/android/flymexx/applications/ProcStatsData$MemInfo;->realTotalRam:D

    iget-wide v6, v9, Lcom/android/flymexx/applications/ProcStatsData$MemInfo;->realFreeRam:D

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v22, v0

    const/16 v24, 0x1

    invoke-static/range {v21 .. v24}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v20

    double-to-long v0, v14

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    double-to-long v0, v6

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a006a

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/flymexx/applications/ProcStatsData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/flymexx/applications/ProcStatsData;->getMemState()I

    move-result v10

    if-ltz v10, :cond_0

    array-length v0, v11

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v10, v0, :cond_0

    aget-object v12, v11, v10

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/flymexx/SummaryPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/flymexx/SummaryPreference;->setAmount(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/flymexx/SummaryPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/flymexx/SummaryPreference;->setUnits(Ljava/lang/String;)V

    add-double v22, v6, v18

    div-double v22, v18, v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/flymexx/SummaryPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v17

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/flymexx/SummaryPreference;->setRatios(FFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mPerformance:Landroid/support/v7/preference/Preference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mTotalMemory:Landroid/support/v7/preference/Preference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mAverageUsed:Landroid/support/v7/preference/Preference;

    move-object/from16 v21, v0

    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v22, v0

    double-to-long v0, v14

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Lcom/android/flymexx/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mFree:Landroid/support/v7/preference/Preference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object v21, Lcom/android/flymexx/applications/ProcessStatsSummary;->sDurationLabels:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mDurationIndex:I

    move/from16 v22, v0

    aget v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/flymexx/applications/ProcessStatsSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/flymexx/applications/ProcStatsData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/flymexx/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/ProcessStatsSummary;->mAppListPreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    const/16 v24, 0x1

    aput-object v5, v23, v24

    const v24, 0x7f120020

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v13, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    array-length v0, v11

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v12, v11, v21

    goto/16 :goto_0
.end method
