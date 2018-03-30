.class public Lcom/android/flymexx/nfc/AndroidBeam;
.super Lcom/android/flymexx/InstrumentedFragment;
.source "AndroidBeam.java"

# interfaces
.implements Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mBeamDisallowedByBase:Z

.field private mBeamDisallowedByOnlyAdmin:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x45

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/flymexx/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/flymexx/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/android/flymexx/SettingsActivity;->getSwitchBar()Lcom/android/flymexx/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/flymexx/widget/SwitchBar;->hide()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/flymexx/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/flymexx/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v1, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    iget-boolean v3, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/flymexx/widget/SwitchBar;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/flymexx/widget/SwitchBar;->show()V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/nfc/AndroidBeam;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/InstrumentedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Lcom/android/flymexx/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/nfc/AndroidBeam;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0b94

    invoke-static {v0, p1, v2, v1}, Lcom/android/flymexxlib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "no_outgoing_beam"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/flymexxlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/flymexx/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "no_outgoing_beam"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/flymexxlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    iget-boolean v3, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    const v3, 0x7f04001f

    invoke-virtual {p1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/flymexx/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2, v0, v6}, Lcom/android/flymexx/ShowAdminSupportDetailsDialog;->setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;Z)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    return-object v2

    :cond_0
    const v3, 0x7f040020

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mView:Landroid/view/View;

    return-object v3
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/flymexx/InstrumentedFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/SwitchBar;->hide()V

    :cond_1
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/flymexx/widget/SwitchBar;->setEnabled(Z)V

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v1, p2}, Lcom/android/flymexx/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/flymexx/widget/SwitchBar;->setEnabled(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/flymexx/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    goto :goto_0
.end method
