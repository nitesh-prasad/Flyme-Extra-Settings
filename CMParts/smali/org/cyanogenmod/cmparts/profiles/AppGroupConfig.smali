.class public Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "AppGroupConfig.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAppAdapter:Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mNamePreference:Lorg/cyanogenmod/cmparts/profiles/NamePreference;

.field private mNotificationGroup:Landroid/app/NotificationGroup;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageToDelete:Ljava/lang/String;

.field private mProfileManager:Lcyanogenmod/app/ProfileManager;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;)Landroid/app/NotificationGroup;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;)Lcyanogenmod/app/ProfileManager;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    return-object v0
.end method

.method static synthetic -set0(Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;Landroid/app/NotificationGroup;)Landroid/app/NotificationGroup;
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    return-object p1
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->doDelete()V

    return-void
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->updatePackages()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "AppGroupConfig"

    sput-object v0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private addNewApp()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->showDialog(I)V

    return-void
.end method

.method private deleteAppFromGroup(Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    iget-object v1, p1, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationGroup;->removePackage(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->updatePackages()V

    :cond_0
    return-void
.end method

.method private deleteNotificationGroup()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->showDialog(I)V

    return-void
.end method

.method private doDelete()V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mPackageToDelete:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationGroup;->removePackage(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->updatePackages()V

    return-void
.end method

.method private removeApp(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mPackageToDelete:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->showDialog(I)V

    return-void
.end method

.method private updatePackages()V
    .locals 13

    const/4 v8, 0x0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    const-string/jumbo v9, "general_section"

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    new-instance v9, Lorg/cyanogenmod/cmparts/profiles/NamePreference;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v11}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/cyanogenmod/cmparts/profiles/NamePreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v9, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mNamePreference:Lorg/cyanogenmod/cmparts/profiles/NamePreference;

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mNamePreference:Lorg/cyanogenmod/cmparts/profiles/NamePreference;

    invoke-virtual {v9, p0}, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mNamePreference:Lorg/cyanogenmod/cmparts/profiles/NamePreference;

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    const-string/jumbo v9, "applications_list"

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v9}, Landroid/app/NotificationGroup;->getPackages()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_1

    aget-object v5, v9, v8

    new-instance v6, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    :try_start_0
    iget-object v11, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mListView:Landroid/widget/ListView;

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    :pswitch_0
    invoke-direct {p0, v1}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->deleteAppFromGroup(Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;)V

    const/4 v2, 0x1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x7f08024d
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "package_delete"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mPackageToDelete:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    const v1, 0x7f050002

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "NotificationGroup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationGroup;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mAppAdapter:Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->updatePackages()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->setHasOptionsMenu(Z)V

    :cond_1
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    const v1, 0x7f08024d

    const/4 v0, 0x0

    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const v7, 0x7f08024d

    const v6, 0x1040013

    const v5, 0x1040009

    const v4, 0x1010355

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mAppAdapter:Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v3, 0x7f0802a6

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v3, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$1;

    invoke-direct {v3, p0, v1}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$1;-><init>(Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    :pswitch_1
    const v3, 0x7f080284

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$2;

    invoke-direct {v3, p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$2;-><init>(Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;)V

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$3;

    invoke-direct {v3, p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$3;-><init>(Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;)V

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    const v3, 0x7f0802a2

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$4;

    invoke-direct {v3, p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$4;-><init>(Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;)V

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$5;

    invoke-direct {v3, p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$5;-><init>(Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;)V

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v2, 0x1

    const v3, 0x7f08024d

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020078

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v2, 0x2

    const v3, 0x7f080264

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020075

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x61

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->deleteNotificationGroup()V

    return v1

    :pswitch_1
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->addNewApp()V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v0, v1}, Lcyanogenmod/app/ProfileManager;->addNotificationGroup(Landroid/app/NotificationGroup;)V

    :cond_0
    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mNamePreference:Lorg/cyanogenmod/cmparts/profiles/NamePreference;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mNamePreference:Lorg/cyanogenmod/cmparts/profiles/NamePreference;

    invoke-virtual {v1}, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v1}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v1, v0}, Lcyanogenmod/app/ProfileManager;->notificationGroupExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v1, v0}, Landroid/app/NotificationGroup;->setName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mNamePreference:Lorg/cyanogenmod/cmparts/profiles/NamePreference;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v2}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0802a5

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    instance-of v1, p1, Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->removeApp(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "package_delete"

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->mPackageToDelete:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
