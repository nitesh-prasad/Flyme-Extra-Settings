.class public Lcom/android/flymexx/datausage/DataUsageSummary;
.super Lcom/android/flymexx/datausage/DataUsageBase;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/flymexx/search/Indexable;
.implements Lcom/android/flymexx/datausage/DataUsageEditController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/datausage/DataUsageSummary$1;,
        Lcom/android/flymexx/datausage/DataUsageSummary$2;,
        Lcom/android/flymexx/datausage/DataUsageSummary$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mDataInfoController:Lcom/android/flymexx/datausage/DataUsageInfoController;

.field private mDataUsageController:Lcom/android/flymexxlib/net/DataUsageController;

.field private mDataUsageTemplate:I

.field private mDefaultTemplate:Landroid/net/NetworkTemplate;

.field private mLimitPreference:Landroid/support/v7/preference/Preference;

.field private mSummaryPreference:Lcom/android/flymexx/SummaryPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/flymexx/datausage/DataUsageSummary$1;

    invoke-direct {v0}, Lcom/android/flymexx/datausage/DataUsageSummary$1;-><init>()V

    sput-object v0, Lcom/android/flymexx/datausage/DataUsageSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/flymexx/datausage/DataUsageSummary$2;

    invoke-direct {v0}, Lcom/android/flymexx/datausage/DataUsageSummary$2;-><init>()V

    sput-object v0, Lcom/android/flymexx/datausage/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/DataUsageBase;-><init>()V

    return-void
.end method

.method private addEthernetSection()V
    .locals 4

    const v1, 0x7f08001e

    invoke-direct {p0, v1}, Lcom/android/flymexx/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/datausage/TemplatePreferenceCategory;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/flymexx/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/flymexx/datausage/TemplatePreference$NetworkServices;)V

    return-void
.end method

.method private addMobileSection(I)V
    .locals 3

    const v1, 0x7f08001d

    invoke-direct {p0, v1}, Lcom/android/flymexx/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/datausage/TemplatePreferenceCategory;

    invoke-direct {p0, p1}, Lcom/android/flymexx/datausage/DataUsageSummary;->getNetworkTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/flymexx/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/flymexx/datausage/TemplatePreference$NetworkServices;)V

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;)V

    return-void
.end method

.method private addWifiSection()V
    .locals 4

    const v1, 0x7f080021

    invoke-direct {p0, v1}, Lcom/android/flymexx/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/datausage/TemplatePreferenceCategory;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/flymexx/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/flymexx/datausage/TemplatePreference$NetworkServices;)V

    return-void
.end method

.method private static formatTitle(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/CharSequence;
    .locals 10

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v0, Landroid/text/SpannableString;

    const v4, 0x1040107

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%1$s"

    const-string/jumbo v6, "^1"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%2$s"

    const-string/jumbo v6, "^2"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v4, "^1"

    invoke-static {v0, v4}, Lcom/android/flymexx/datausage/DataUsageSummary;->verySmallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p2, p3, v7}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    iget-object v5, v3, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v5, v4, v8

    iget-object v5, v3, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    const-string/jumbo v4, "%1$s"

    const-string/jumbo v5, "^1"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v4, "^1"

    invoke-static {v2, v4}, Lcom/android/flymexx/datausage/DataUsageSummary;->verySmallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;)V

    new-array v4, v7, [Ljava/lang/CharSequence;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4
.end method

.method public static getDefaultSubscriptionId(Landroid/content/Context;)I
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    if-nez v1, :cond_0

    return v4

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    return v4

    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    :cond_2
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    return v3
.end method

.method public static getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;
    .locals 3

    invoke-static {p0}, Lcom/android/flymexx/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-static {p0}, Lcom/android/flymexx/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v2

    return-object v2
.end method

.method private getNetworkTemplate(I)Landroid/net/NetworkTemplate;
    .locals 2

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    return-object v1
.end method

.method public static hasMobileData(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    return v0
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private inflatePreferences(I)Landroid/support/v7/preference/Preference;
    .locals 6

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageSummary;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-object v0
.end method

.method private updateState()V
    .locals 14

    iget-object v8, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mDataUsageController:Lcom/android/flymexxlib/net/DataUsageController;

    iget-object v9, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v8, v9}, Lcom/android/flymexxlib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/flymexxlib/net/DataUsageController$DataUsageInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v8, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mDataInfoController:Lcom/android/flymexx/datausage/DataUsageInfoController;

    iget-object v9, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    iget-object v9, v9, Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/flymexxlib/NetworkPolicyEditor;

    iget-object v10, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v9, v10}, Lcom/android/flymexxlib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Lcom/android/flymexx/datausage/DataUsageInfoController;->updateDataLimit(Lcom/android/flymexxlib/net/DataUsageController$DataUsageInfo;Landroid/net/NetworkPolicy;)V

    iget-object v8, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/flymexx/SummaryPreference;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/flymexx/SummaryPreference;

    iget v9, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mDataUsageTemplate:I

    invoke-virtual {p0, v9}, Lcom/android/flymexx/datausage/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-wide v10, v2, Lcom/android/flymexxlib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v0, v9, v10, v11}, Lcom/android/flymexx/datausage/DataUsageSummary;->formatTitle(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/flymexx/SummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mDataInfoController:Lcom/android/flymexx/datausage/DataUsageInfoController;

    invoke-virtual {v8, v2}, Lcom/android/flymexx/datausage/DataUsageInfoController;->getSummaryLimit(Lcom/android/flymexxlib/net/DataUsageController$DataUsageInfo;)J

    move-result-wide v4

    iget-object v8, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/flymexx/SummaryPreference;

    iget-object v9, v2, Lcom/android/flymexxlib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/flymexx/SummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gtz v8, :cond_3

    iget-object v8, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/flymexx/SummaryPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/flymexx/SummaryPreference;->setChartEnabled(Z)V

    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mLimitPreference:Landroid/support/v7/preference/Preference;

    if-eqz v8, :cond_5

    iget-wide v8, v2, Lcom/android/flymexxlib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_1

    iget-wide v8, v2, Lcom/android/flymexxlib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    :cond_1
    iget-wide v8, v2, Lcom/android/flymexxlib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v2, Lcom/android/flymexxlib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mLimitPreference:Landroid/support/v7/preference/Preference;

    iget-wide v10, v2, Lcom/android/flymexxlib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-gtz v8, :cond_4

    const v8, 0x7f0c0e11

    :goto_1
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    invoke-virtual {p0, v8, v10}, Lcom/android/flymexx/datausage/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    if-ge v1, v8, :cond_6

    invoke-virtual {v6, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/flymexx/datausage/TemplatePreferenceCategory;

    iget-object v9, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v8, v9}, Lcom/android/flymexx/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v8, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/flymexx/SummaryPreference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/flymexx/SummaryPreference;->setChartEnabled(Z)V

    iget-object v8, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/flymexx/SummaryPreference;

    const-wide/16 v10, 0x0

    invoke-static {v0, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/flymexx/SummaryPreference;->setLabels(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/flymexx/SummaryPreference;

    iget-wide v10, v2, Lcom/android/flymexxlib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    long-to-float v9, v10

    long-to-float v10, v4

    div-float/2addr v9, v10

    const/4 v10, 0x0

    iget-wide v12, v2, Lcom/android/flymexxlib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    sub-long v12, v4, v12

    long-to-float v11, v12

    long-to-float v12, v4

    div-float/2addr v11, v12

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/flymexx/SummaryPreference;->setRatios(FFF)V

    goto :goto_0

    :cond_4
    const v8, 0x7f0c0e12

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mLimitPreference:Landroid/support/v7/preference/Preference;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mLimitPreference:Landroid/support/v7/preference/Preference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method private static verySmallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;)V
    .locals 8

    const/16 v7, 0x12

    const/4 v6, 0x0

    const v5, 0x3f23d70b    # 0.64000005f

    const v1, 0x3f23d70b    # 0.64000005f

    const/16 v0, 0x12

    invoke-static {p0, p1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {p0, v4, v6, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez v3, :cond_2

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v4, v6, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v2, v3, v4

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {p0, v4, v2, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0c0ba1

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public getNetworkPolicyEditor()Lcom/android/flymexxlib/NetworkPolicyEditor;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/flymexxlib/NetworkPolicyEditor;

    return-object v0
.end method

.method public getNetworkTemplate()Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method public hasEthernet(Landroid/content/Context;)Z
    .locals 12

    const/4 v11, 0x0

    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    const/16 v1, 0x9

    invoke-virtual {v6, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    :try_start_0
    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v8

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v1, v8, v2

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    const-wide/16 v8, 0x0

    goto :goto_0

    :catch_0
    move-exception v7

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move v1, v11

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/flymexx/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/flymexx/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v1

    new-instance v5, Lcom/android/flymexxlib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/flymexxlib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mDataUsageController:Lcom/android/flymexxlib/net/DataUsageController;

    new-instance v5, Lcom/android/flymexx/datausage/DataUsageInfoController;

    invoke-direct {v5}, Lcom/android/flymexx/datausage/DataUsageInfoController;-><init>()V

    iput-object v5, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mDataInfoController:Lcom/android/flymexx/datausage/DataUsageInfoController;

    const v5, 0x7f08001c

    invoke-virtual {p0, v5}, Lcom/android/flymexx/datausage/DataUsageSummary;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/flymexx/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/flymexx/datausage/DataUsageSummary;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v5

    iput-object v5, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    const-string/jumbo v5, "status_header"

    invoke-virtual {p0, v5}, Lcom/android/flymexx/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/flymexx/SummaryPreference;

    iput-object v5, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/flymexx/SummaryPreference;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageSummary;->isAdmin()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_0
    if-eqz v1, :cond_7

    const-string/jumbo v5, "limit_summary"

    invoke-virtual {p0, v5}, Lcom/android/flymexx/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mLimitPreference:Landroid/support/v7/preference/Preference;

    iget-object v5, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    iget-object v5, v5, Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/flymexx/datausage/DataUsageSummary;->addMobileSection(I)V

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/flymexx/datausage/DataUsageSummary;->addMobileSection(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "restrict_background"

    invoke-virtual {p0, v5}, Lcom/android/flymexx/datausage/DataUsageSummary;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/flymexx/SummaryPreference;

    invoke-virtual {v5, v8}, Lcom/android/flymexx/SummaryPreference;->setSelectable(Z)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/flymexx/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/flymexx/datausage/DataUsageSummary;->addWifiSection()V

    :cond_5
    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/flymexx/datausage/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/android/flymexx/datausage/DataUsageSummary;->addEthernetSection()V

    :cond_6
    if-eqz v1, :cond_8

    const v5, 0x7f0c0e0e

    :goto_3
    iput v5, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mDataUsageTemplate:I

    invoke-virtual {p0, v8}, Lcom/android/flymexx/datausage/DataUsageSummary;->setHasOptionsMenu(Z)V

    return-void

    :cond_7
    const-string/jumbo v5, "limit_summary"

    invoke-virtual {p0, v5}, Lcom/android/flymexx/datausage/DataUsageSummary;->removePreference(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/flymexx/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/flymexx/SummaryPreference;

    invoke-virtual {v5, v7}, Lcom/android/flymexx/SummaryPreference;->setSelectable(Z)V

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_9

    const v5, 0x7f0c0e0f

    goto :goto_3

    :cond_9
    const v5, 0x7f0c0e10

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f140002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/flymexx/datausage/DataUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    return v2

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/flymexx/datausage/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    return v5

    :pswitch_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.qualcomm.qti.appnetaccess"

    const-string/jumbo v3, "com.qualcomm.qti.appnetaccess.NetworkControl"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.networkcontrol"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/flymexx/datausage/DataUsageSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DataUsageSummary"

    const-string/jumbo v3, "activity NetworkControl not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f110340
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "status_header"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p0, v1}, Lcom/android/flymexx/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/flymexx/datausage/DataUsageEditController;Z)V

    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/flymexx/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f110341

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/flymexx/datausage/DataUsageBase;->onResume()V

    invoke-direct {p0}, Lcom/android/flymexx/datausage/DataUsageSummary;->updateState()V

    return-void
.end method

.method public updateDataUsage()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/DataUsageSummary;->updateState()V

    return-void
.end method
