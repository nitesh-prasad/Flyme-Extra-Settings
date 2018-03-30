.class public Lorg/cyanogenmod/cmparts/profiles/AppGroupList;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "AppGroupList.java"


# instance fields
.field private mProfileManager:Lcyanogenmod/app/ProfileManager;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/profiles/AppGroupList;)Lcyanogenmod/app/ProfileManager;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupList;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/cmparts/profiles/AppGroupList;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupList;->addAppGroup()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private addAppGroup()V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f03005d

    invoke-virtual {v4, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f0c00cf

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0c00d0

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const v6, 0x7f0802a3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0802a1

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lorg/cyanogenmod/cmparts/profiles/AppGroupList$2;

    invoke-direct {v6, p0, v3}, Lorg/cyanogenmod/cmparts/profiles/AppGroupList$2;-><init>(Lorg/cyanogenmod/cmparts/profiles/AppGroupList;Landroid/widget/EditText;)V

    const v7, 0x104000a

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v6, 0x1040000

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private editGroup(Landroid/app/NotificationGroup;)V
    .locals 6

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "NotificationGroup"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080291

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/cyanogenmod/cmparts/profiles/AppGroupList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupList;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupList;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    instance-of v1, p1, Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupList;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcyanogenmod/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupList;->editGroup(Landroid/app/NotificationGroup;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupList;->refreshList()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/cyanogenmod/internal/util/ScreenType;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupList;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupList;->getFloatingActionButton()Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;

    move-result-object v0

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;->setImageResource(I)V

    const v1, 0x7f080264

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/profiles/AppGroupList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lorg/cyanogenmod/cmparts/profiles/AppGroupList$1;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupList$1;-><init>(Lorg/cyanogenmod/cmparts/profiles/AppGroupList;)V

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;->setVisibility(I)V

    return-void
.end method

.method public refreshList()V
    .locals 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupList;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v3}, Lcyanogenmod/app/ProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v1, v5, v3

    new-instance v2, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/support/v7/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->setPersistent(Z)V

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
