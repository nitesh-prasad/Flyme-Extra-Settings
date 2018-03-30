.class public Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;
.super Lcom/android/flymexx/wifi/WifiSettings;
.source "WifiSettingsForSetupWizard.java"


# instance fields
.field private mEmptyFooter:Landroid/widget/TextView;

.field private mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

.field private mListLastEmpty:Z

.field private mMacAddress:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/wifi/WifiSettings;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->mListLastEmpty:Z

    return-void
.end method

.method private updateMacAddress()V
    .locals 5

    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->mMacAddress:Landroid/view/View;

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->mMacAddress:Landroid/view/View;

    const v4, 0x7f11023f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    const v3, 0x7f0c068e

    invoke-virtual {p0, v3}, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected connect(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/wifi/WifiSetupActivity;

    invoke-virtual {v0}, Lcom/android/flymexx/wifi/WifiSetupActivity;->networkSelected()V

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    return-void
.end method

.method createWifiEnabler()Lcom/android/flymexx/wifi/WifiEnabler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initEmptyTextView()Landroid/widget/TextView;
    .locals 4

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    const v2, 0x7f040124

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->updateMacAddress()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/wifi/WifiSettings;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lcom/android/flymexx/SetupWizardUtils;->applyImmersiveFlags(Landroid/app/Dialog;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    invoke-super {p0, p1, p2, p3}, Lcom/android/flymexx/wifi/WifiSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v5, 0x7f040125

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/setupwizardlib/SetupWizardLayout;

    iput-object v5, p0, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    iget-object v5, p0, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    const v6, 0x7f11023e

    invoke-virtual {v5, v6}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    const v6, 0x7f11023d

    invoke-virtual {v5, v6}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->mMacAddress:Landroid/view/View;

    iget-object v5, p0, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    invoke-virtual {v5}, Lcom/android/setupwizardlib/SetupWizardLayout;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/wifi/WifiSetupActivity;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/wifi/WifiSetupActivity;->onNavigationBarCreated(Lcom/android/setupwizardlib/view/NavigationBar;)V

    :cond_1
    iget-object v5, p0, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    return-object v5
.end method

.method public onWifiStateChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/flymexx/wifi/WifiSettings;->onWifiStateChanged(I)V

    invoke-direct {p0}, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->updateMacAddress()V

    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setPinnedHeaderView(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected setProgressBarVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->showProgressBar()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->hideProgressBar()V

    goto :goto_0
.end method
