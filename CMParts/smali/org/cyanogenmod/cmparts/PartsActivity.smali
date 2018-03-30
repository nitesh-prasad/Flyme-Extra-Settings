.class public Lorg/cyanogenmod/cmparts/PartsActivity;
.super Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;
.source "PartsActivity.java"

# interfaces
.implements Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;


# instance fields
.field private mHomeAsUp:Z

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mNfcProfileCallback:Lorg/cyanogenmod/cmparts/profiles/NFCProfileTagCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/PartsActivity;->mHomeAsUp:Z

    return-void
.end method

.method private setTitleFromIntent(Landroid/content/Intent;Lorg/cyanogenmod/internal/cmparts/PartInfo;)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/PartsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    :goto_0
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/PartsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/PartsActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string/jumbo v2, ":settings:show_fragment_title_resid"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/PartsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/PartsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ":settings:show_fragment_title"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_1
    iput-object v0, p0, Lorg/cyanogenmod/cmparts/PartsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/PartsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method private switchToFragment(Landroid/app/Fragment;Landroid/os/Bundle;ILjava/lang/CharSequence;)Z
    .locals 4

    const-string/jumbo v1, "PartsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Launching fragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Fragment;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/PartsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0c0064

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    if-lez p3, :cond_1

    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    :cond_0
    :goto_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    const/4 v1, 0x1

    return v1

    :cond_1
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method


# virtual methods
.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lorg/cyanogenmod/cmparts/PartsActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/PartsActivity;->finish()V

    return-void
.end method

.method public getBackButton()Landroid/widget/Button;
    .locals 1

    const v0, 0x7f0c0066

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/PartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    const v0, 0x7f0c0068

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/PartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public getSwitchBar()Lorg/cyanogenmod/cmparts/widget/SwitchBar;
    .locals 1

    const v0, 0x7f0c0063

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/PartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/PartsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/PartsActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/PartsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->onCreate(Landroid/os/Bundle;)V

    const v8, 0x7f03001c

    invoke-virtual {p0, v8}, Lorg/cyanogenmod/cmparts/PartsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/PartsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/PartsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v8, "org.cyanogenmod.cmparts.parts"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/PartsActivity;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "org.cyanogenmod.cmparts.parts"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/PartsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, ":settings:show_fragment"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/PartsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/PartsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, ":settings:show_fragment_args"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_1

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :cond_1
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/PartsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, ":settings:fragment_args_key"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, ":settings:fragment_args_key"

    invoke-virtual {v6, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "PartsActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Launched with: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/PartsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/PartsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " component: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " part: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " fragment: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_4

    if-eqz v7, :cond_2

    invoke-static {p0}, Lorg/cyanogenmod/internal/cmparts/PartsList;->get(Landroid/content/Context;)Lorg/cyanogenmod/internal/cmparts/PartsList;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/cyanogenmod/internal/cmparts/PartsList;->getPartInfo(Ljava/lang/String;)Lorg/cyanogenmod/internal/cmparts/PartInfo;

    move-result-object v5

    :goto_0
    if-nez v5, :cond_3

    new-instance v8, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to get part info: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/PartsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    invoke-static {p0}, Lorg/cyanogenmod/internal/cmparts/PartsList;->get(Landroid/content/Context;)Lorg/cyanogenmod/internal/cmparts/PartsList;

    move-result-object v8

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/PartsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/cyanogenmod/internal/cmparts/PartsList;->getPartInfoForClass(Ljava/lang/String;)Lorg/cyanogenmod/internal/cmparts/PartInfo;

    move-result-object v5

    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/cyanogenmod/cmparts/PartsActivity;->mHomeAsUp:Z

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getFragmentClass()Ljava/lang/String;

    move-result-object v4

    :cond_4
    if-nez v4, :cond_5

    new-instance v8, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to get fragment class: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/PartsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_5
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/PartsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-direct {p0, v8, v5}, Lorg/cyanogenmod/cmparts/PartsActivity;->setTitleFromIntent(Landroid/content/Intent;Lorg/cyanogenmod/internal/cmparts/PartInfo;)V

    iget-object v8, p0, Lorg/cyanogenmod/cmparts/PartsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v9, -0x1

    invoke-virtual {p0, v4, v6, v9, v8}, Lorg/cyanogenmod/cmparts/PartsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;)Z

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/PartsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    iget-boolean v9, p0, Lorg/cyanogenmod/cmparts/PartsActivity;->mHomeAsUp:Z

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "android.nfc.extra.TAG"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/PartsActivity;->mNfcProfileCallback:Lorg/cyanogenmod/cmparts/profiles/NFCProfileTagCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/PartsActivity;->mNfcProfileCallback:Lorg/cyanogenmod/cmparts/profiles/NFCProfileTagCallback;

    invoke-interface {v1, v0}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileTagCallback;->onTagRead(Landroid/nfc/Tag;)V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/PartsActivity;->mHomeAsUp:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/PartsActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/cyanogenmod/cmparts/PartsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceStartScreen(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/PreferenceScreen;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/support/v7/preference/PreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v7/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v7/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/cyanogenmod/cmparts/PartsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public setNfcProfileCallback(Lorg/cyanogenmod/cmparts/profiles/NFCProfileTagCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/PartsActivity;->mNfcProfileCallback:Lorg/cyanogenmod/cmparts/profiles/NFCProfileTagCallback;

    return-void
.end method

.method public showButtonBar(Z)V
    .locals 2

    const v0, 0x7f0c0065

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/PartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 3

    const/4 v1, 0x0

    if-gez p3, :cond_0

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lorg/cyanogenmod/internal/cmparts/PartsList;->CMPARTS_ACTIVITY:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, ":settings:show_fragment"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, ":settings:show_fragment_args"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v2, ":settings:show_fragment_title_resid"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, ":settings:show_fragment_title"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-nez p5, :cond_2

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/PartsActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0

    :cond_2
    invoke-virtual {p5, v0, p6}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method public switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;)Z
    .locals 4

    invoke-static {p0, p1}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "PartsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid fragment! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-direct {p0, v0, p2, p3, p4}, Lorg/cyanogenmod/cmparts/PartsActivity;->switchToFragment(Landroid/app/Fragment;Landroid/os/Bundle;ILjava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method
