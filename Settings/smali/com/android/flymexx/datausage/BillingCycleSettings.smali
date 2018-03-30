.class public Lcom/android/flymexx/datausage/BillingCycleSettings;
.super Lcom/android/flymexx/datausage/DataUsageBase;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/flymexx/datausage/DataUsageEditController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/datausage/BillingCycleSettings$BytesEditorFragment;,
        Lcom/android/flymexx/datausage/BillingCycleSettings$ConfirmLimitFragment;,
        Lcom/android/flymexx/datausage/BillingCycleSettings$CycleEditorFragment;
    }
.end annotation


# instance fields
.field private mBillingCycle:Landroid/support/v7/preference/Preference;

.field private mDataLimit:Landroid/support/v7/preference/Preference;

.field private mDataUsageController:Lcom/android/flymexxlib/net/DataUsageController;

.field private mDataWarning:Landroid/support/v7/preference/Preference;

.field private mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

.field private mEnableDataTimeRange:Landroid/support/v14/preference/SwitchPreference;

.field private mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

.field private mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private mShowDataUsage:Z


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/datausage/BillingCycleSettings;)Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/datausage/BillingCycleSettings;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/datausage/DataUsageBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mShowDataUsage:Z

    return-void
.end method

.method public static isDataSelectionEnable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isShowDataUsage(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "data_usage"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "show_data_usage"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/flymexxlib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/flymexxlib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    invoke-direct {p0}, Lcom/android/flymexx/datausage/BillingCycleSettings;->updatePrefs()V

    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/flymexxlib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/flymexxlib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    invoke-direct {p0}, Lcom/android/flymexx/datausage/BillingCycleSettings;->updatePrefs()V

    return-void
.end method

.method private updatePrefs()V
    .locals 10

    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/flymexxlib/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v3}, Lcom/android/flymexxlib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget-object v3, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    new-array v4, v2, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    const v1, 0x7f0c0e14

    invoke-virtual {p0, v1, v4}, Lcom/android/flymexx/datausage/BillingCycleSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_1
    if-eqz v0, :cond_2

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_2
    iget-object v1, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mEnableDataTimeRange:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mShowDataUsage:Z

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x156

    return v0
.end method

.method public getNetworkPolicyEditor()Lcom/android/flymexxlib/NetworkPolicyEditor;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/flymexxlib/NetworkPolicyEditor;

    return-object v0
.end method

.method public getNetworkTemplate()Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/flymexx/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    new-instance v2, Lcom/android/flymexxlib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/flymexxlib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mDataUsageController:Lcom/android/flymexxlib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/BillingCycleSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "network_template"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    iput-object v2, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    const v2, 0x7f080015

    invoke-virtual {p0, v2}, Lcom/android/flymexx/datausage/BillingCycleSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v2, "billing_cycle"

    invoke-virtual {p0, v2}, Lcom/android/flymexx/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    const-string/jumbo v2, "set_data_warning"

    invoke-virtual {p0, v2}, Lcom/android/flymexx/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v2, "data_warning"

    invoke-virtual {p0, v2}, Lcom/android/flymexx/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    const-string/jumbo v2, "set_data_limit"

    invoke-virtual {p0, v2}, Lcom/android/flymexx/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v2, "data_limit"

    invoke-virtual {p0, v2}, Lcom/android/flymexx/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    const-string/jumbo v2, "set_data_time_range"

    invoke-virtual {p0, v2}, Lcom/android/flymexx/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mEnableDataTimeRange:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mEnableDataTimeRange:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/BillingCycleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/flymexx/datausage/BillingCycleSettings;->isShowDataUsage(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mShowDataUsage:Z

    iget-object v2, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mEnableDataTimeRange:Landroid/support/v14/preference/SwitchPreference;

    invoke-static {v1}, Lcom/android/flymexx/datausage/BillingCycleSettings;->isDataSelectionEnable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    if-ne v2, p1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/flymexx/datausage/BillingCycleSettings$ConfirmLimitFragment;->show(Lcom/android/flymexx/datausage/BillingCycleSettings;)V

    :goto_0
    return v4

    :cond_0
    invoke-direct {p0, v6, v7}, Lcom/android/flymexx/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mEnableDataTimeRange:Landroid/support/v14/preference/SwitchPreference;

    if-ne v2, p1, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mShowDataUsage:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mShowDataUsage:Z

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/BillingCycleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v5, "data_usage"

    invoke-virtual {v2, v5, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "show_data_usage"

    iget-boolean v5, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mShowDataUsage:Z

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v4

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    if-ne v2, p1, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mDataUsageController:Lcom/android/flymexxlib/net/DataUsageController;

    invoke-virtual {v2}, Lcom/android/flymexxlib/net/DataUsageController;->getDefaultWarningLevel()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/flymexx/datausage/BillingCycleSettings;->setPolicyWarningBytes(J)V

    :goto_2
    return v4

    :cond_4
    invoke-direct {p0, v6, v7}, Lcom/android/flymexx/datausage/BillingCycleSettings;->setPolicyWarningBytes(J)V

    goto :goto_2

    :cond_5
    return v3
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/android/flymexx/datausage/BillingCycleSettings$CycleEditorFragment;->show(Lcom/android/flymexx/datausage/BillingCycleSettings;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/flymexx/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/flymexx/datausage/DataUsageEditController;Z)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_2

    invoke-static {p0, v1}, Lcom/android/flymexx/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/flymexx/datausage/DataUsageEditController;Z)V

    return v1

    :cond_2
    invoke-super {p0, p1}, Lcom/android/flymexx/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/flymexx/datausage/DataUsageBase;->onResume()V

    invoke-direct {p0}, Lcom/android/flymexx/datausage/BillingCycleSettings;->updatePrefs()V

    return-void
.end method

.method public updateDataUsage()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/BillingCycleSettings;->updatePrefs()V

    return-void
.end method
