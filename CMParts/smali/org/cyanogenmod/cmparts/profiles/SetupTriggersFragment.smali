.class public Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "SetupTriggersFragment.java"


# instance fields
.field mAdapter:Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;

.field mNewProfileMode:Z

.field mPager:Landroid/support/v4/view/ViewPager;

.field mPreselectedItem:I

.field mProfile:Lcyanogenmod/app/Profile;

.field mProfileManager:Lcyanogenmod/app/ProfileManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->mNewProfileMode:Z

    if-eqz v2, :cond_1

    const v2, 0x7f080258

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v3}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f080259

    invoke-virtual {p0, v3, v2}, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->finishFragment()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "Profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "new_profile_mode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->mNewProfileMode:Z

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "current_item"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->mPreselectedItem:I

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const/4 v6, 0x0

    const v5, 0x7f03002e

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0c009f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;-><init>(Landroid/app/Activity;Landroid/app/FragmentManager;)V

    iput-object v5, p0, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->mAdapter:Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "Profile"

    iget-object v7, p0, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {}, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter$TriggerFragments;->values()[Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter$TriggerFragments;

    move-result-object v1

    array-length v7, v1

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v0, v1, v5

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter$TriggerFragments;->getFragmentClass()Ljava/lang/Class;

    move-result-object v6

    const-class v8, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;

    if-ne v6, v8, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v8, "android.hardware.nfc"

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->mAdapter:Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter$TriggerFragments;->getFragmentClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter$TriggerFragments;->getTitleRes()I

    move-result v9

    invoke-virtual {v6, v8, v2, v9}, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;->add(Ljava/lang/Class;Landroid/os/Bundle;I)V

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->mAdapter:Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const v5, 0x7f0c00a0

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/PagerTabStrip;

    const v5, 0x7f09003e

    invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    iget-boolean v5, p0, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->mNewProfileMode:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->showButtonBar(Z)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->getNextButton()Landroid/widget/Button;

    move-result-object v5

    new-instance v6, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment$1;

    invoke-direct {v6, p0}, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment$1;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->getBackButton()Landroid/widget/Button;

    move-result-object v5

    new-instance v6, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment$2;

    invoke-direct {v6, p0}, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment$2;-><init>(Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-object v3
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->mPreselectedItem:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
