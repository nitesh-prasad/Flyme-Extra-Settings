.class public Lcom/android/flymexx/HomeSettings;
.super Lcom/android/flymexx/SettingsPreferenceFragment;
.source "HomeSettings.java"

# interfaces
.implements Lcom/android/flymexx/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/HomeSettings$1;,
        Lcom/android/flymexx/HomeSettings$2;,
        Lcom/android/flymexx/HomeSettings$3;,
        Lcom/android/flymexx/HomeSettings$HomeAppPreference;,
        Lcom/android/flymexx/HomeSettings$HomePackageReceiver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;


# instance fields
.field private mCurrentHome:Lcom/android/flymexx/HomeSettings$HomeAppPreference;

.field mDeleteClickListener:Landroid/view/View$OnClickListener;

.field mHomeClickListener:Landroid/view/View$OnClickListener;

.field private mHomeComponentSet:[Landroid/content/ComponentName;

.field private final mHomeFilter:Landroid/content/IntentFilter;

.field private mHomePackageReceiver:Lcom/android/flymexx/HomeSettings$HomePackageReceiver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrefGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexx/HomeSettings$HomeAppPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mShowNotice:Z


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/HomeSettings;)Lcom/android/flymexx/HomeSettings$HomeAppPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/HomeSettings;->mCurrentHome:Lcom/android/flymexx/HomeSettings$HomeAppPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/HomeSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/HomeSettings;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/HomeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/HomeSettings;->buildHomeActivitiesList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/flymexx/HomeSettings$3;

    invoke-direct {v0}, Lcom/android/flymexx/HomeSettings$3;-><init>()V

    sput-object v0, Lcom/android/flymexx/HomeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/android/flymexx/HomeSettings;->mCurrentHome:Lcom/android/flymexx/HomeSettings$HomeAppPreference;

    new-instance v0, Lcom/android/flymexx/HomeSettings$HomePackageReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/flymexx/HomeSettings$HomePackageReceiver;-><init>(Lcom/android/flymexx/HomeSettings;Lcom/android/flymexx/HomeSettings$HomePackageReceiver;)V

    iput-object v0, p0, Lcom/android/flymexx/HomeSettings;->mHomePackageReceiver:Lcom/android/flymexx/HomeSettings$HomePackageReceiver;

    new-instance v0, Lcom/android/flymexx/HomeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/HomeSettings$1;-><init>(Lcom/android/flymexx/HomeSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/HomeSettings;->mHomeClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/flymexx/HomeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/flymexx/HomeSettings$2;-><init>(Lcom/android/flymexx/HomeSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/HomeSettings;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/flymexx/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/flymexx/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/flymexx/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    return-void
.end method

.method private buildHomeActivitiesList()V
    .locals 19

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v15}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/HomeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/flymexx/HomeSettings;->mCurrentHome:Lcom/android/flymexx/HomeSettings$HomeAppPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/HomeSettings;->mPrefGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/flymexx/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/flymexx/HomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v8, "support_managed_profiles"

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/HomeSettings;->hasManagedProfile()Z

    move-result v2

    if-nez v2, :cond_2

    move/from16 v17, v18

    :goto_0
    const/16 v16, 0x0

    :goto_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_4

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v9, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v2, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/HomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    aput-object v4, v2, v16

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/flymexx/HomeSettings;->launcherHasManagedProfilesFeature(Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    new-instance v1, Lcom/android/flymexx/HomeSettings$HomeAppPreference;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v8, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/flymexx/HomeSettings$HomeAppPreference;-><init>(Lcom/android/flymexx/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/flymexx/HomeSettings;Landroid/content/pm/ActivityInfo;ZLjava/lang/CharSequence;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/HomeSettings;->mPrefGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {v4, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/flymexx/HomeSettings;->mCurrentHome:Lcom/android/flymexx/HomeSettings$HomeAppPreference;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_2
    const/16 v17, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/android/flymexx/HomeSettings$HomeAppPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/HomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0c05f1

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v8, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/flymexx/HomeSettings$HomeAppPreference;-><init>(Lcom/android/flymexx/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/flymexx/HomeSettings;Landroid/content/pm/ActivityInfo;ZLjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v14

    const-string/jumbo v2, "HomeSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Problem dealing with activity "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/HomeSettings;->mCurrentHome:Lcom/android/flymexx/HomeSettings$HomeAppPreference;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/HomeSettings;->mCurrentHome:Lcom/android/flymexx/HomeSettings$HomeAppPreference;

    invoke-virtual {v2}, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Landroid/app/Activity;->setResult(I)V

    :cond_5
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/android/flymexx/HomeSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/flymexx/HomeSettings$4;-><init>(Lcom/android/flymexx/HomeSettings;)V

    invoke-virtual {v2, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method private hasManagedProfile()Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/flymexx/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v5, "user"

    invoke-virtual {p0, v5}, Lcom/android/flymexx/HomeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    return v5

    :cond_1
    const/4 v5, 0x0

    return v5
.end method

.method private launcherHasManagedProfilesFeature(Landroid/content/pm/ResolveInfo;)Z
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/flymexx/HomeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, v2}, Lcom/android/flymexx/HomeSettings;->versionNumberAtLeastL(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    return v5
.end method

.method private versionNumberAtLeastL(I)Z
    .locals 1

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method makeCurrentHome(Lcom/android/flymexx/HomeSettings$HomeAppPreference;)V
    .locals 5

    iget-object v0, p0, Lcom/android/flymexx/HomeSettings;->mCurrentHome:Lcom/android/flymexx/HomeSettings$HomeAppPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/HomeSettings;->mCurrentHome:Lcom/android/flymexx/HomeSettings$HomeAppPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->setChecked(Z)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->setChecked(Z)V

    iput-object p1, p0, Lcom/android/flymexx/HomeSettings;->mCurrentHome:Lcom/android/flymexx/HomeSettings$HomeAppPreference;

    iget-object v0, p0, Lcom/android/flymexx/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/flymexx/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/android/flymexx/HomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->activityName:Landroid/content/ComponentName;

    const/high16 v4, 0x100000

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    invoke-virtual {p0}, Lcom/android/flymexx/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/flymexx/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/flymexx/HomeSettings;->buildHomeActivitiesList()V

    const/16 v2, 0xa

    if-le p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/HomeSettings;->mCurrentHome:Lcom/android/flymexx/HomeSettings$HomeAppPreference;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/flymexx/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/HomeSettings$HomeAppPreference;

    iget-boolean v2, v1, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->isSystem:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/flymexx/HomeSettings;->makeCurrentHome(Lcom/android/flymexx/HomeSettings$HomeAppPreference;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f08002f

    invoke-virtual {p0, v1}, Lcom/android/flymexx/HomeSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/HomeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v1, "home"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/HomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/flymexx/HomeSettings;->mPrefGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/flymexx/HomeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "show"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/flymexx/HomeSettings;->mShowNotice:Z

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/flymexx/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/HomeSettings;->mHomePackageReceiver:Lcom/android/flymexx/HomeSettings$HomePackageReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/flymexx/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/HomeSettings;->mHomePackageReceiver:Lcom/android/flymexx/HomeSettings$HomePackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/flymexx/HomeSettings;->buildHomeActivitiesList()V

    return-void
.end method

.method uninstallApp(Lcom/android/flymexx/HomeSettings$HomeAppPreference;)V
    .locals 6

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v4, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v4, p1, Lcom/android/flymexx/HomeSettings$HomeAppPreference;->isChecked:Z

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v1, v3, 0xa

    invoke-virtual {p0, v2, v1}, Lcom/android/flymexx/HomeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
