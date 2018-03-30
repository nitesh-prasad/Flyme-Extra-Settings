.class public Lcom/android/flymexx/location/LocationSettings;
.super Lcom/android/flymexx/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/location/LocationSettings$1;,
        Lcom/android/flymexx/location/LocationSettings$2;,
        Lcom/android/flymexx/location/LocationSettings$PackageEntryClickedListener;,
        Lcom/android/flymexx/location/LocationSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private injector:Lcom/android/flymexx/location/SettingsInjector;

.field private mAgpsEnabled:Z

.field private mAssistedGps:Landroid/support/v7/preference/CheckBoxPreference;

.field private mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

.field private mLocationMode:Landroid/support/v7/preference/Preference;

.field private mManagedProfile:Landroid/os/UserHandle;

.field private mManagedProfileSwitch:Lcom/android/flymexxlib/RestrictedSwitchPreference;

.field private mManagedProfileSwitchClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

.field private mUm:Landroid/os/UserManager;

.field private mValidListener:Z


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/location/LocationSettings;)Lcom/android/flymexx/location/SettingsInjector;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/location/LocationSettings;->injector:Lcom/android/flymexx/location/SettingsInjector;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/location/LocationSettings;)Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/location/LocationSettings;)Lcom/android/flymexxlib/RestrictedSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/flymexx/location/LocationSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/location/LocationSettings;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -wrap0(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/flymexx/location/LocationSettings;->getLocationString(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/flymexx/location/LocationSettings$2;

    invoke-direct {v0}, Lcom/android/flymexx/location/LocationSettings$2;-><init>()V

    sput-object v0, Lcom/android/flymexx/location/LocationSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/location/LocationSettingsBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/location/LocationSettings;->mValidListener:Z

    new-instance v0, Lcom/android/flymexx/location/LocationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/location/LocationSettings$1;-><init>(Lcom/android/flymexx/location/LocationSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfileSwitchClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Z)V
    .locals 5

    const-string/jumbo v3, "location_services"

    invoke-virtual {p2, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    new-instance v3, Lcom/android/flymexx/location/SettingsInjector;

    invoke-direct {v3, p1}, Lcom/android/flymexx/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/flymexx/location/LocationSettings;->injector:Lcom/android/flymexx/location/SettingsInjector;

    iget-object v4, p0, Lcom/android/flymexx/location/LocationSettings;->injector:Lcom/android/flymexx/location/SettingsInjector;

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/flymexx/location/SettingsInjector;->getInjectedSettings(I)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/flymexx/location/LocationSettings$5;

    invoke-direct {v3, p0}, Lcom/android/flymexx/location/LocationSettings$5;-><init>(Lcom/android/flymexx/location/LocationSettings;)V

    iput-object v3, p0, Lcom/android/flymexx/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/flymexx/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-direct {p0, v2, v0}, Lcom/android/flymexx/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V

    :goto_1
    return-void

    :cond_0
    const/4 v3, -0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;",
            "Landroid/support/v7/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    new-instance v2, Lcom/android/flymexx/location/LocationSettings$3;

    invoke-direct {v2, p0}, Lcom/android/flymexx/location/LocationSettings$3;-><init>(Lcom/android/flymexx/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private changeManagedProfileLocationAccessStatus(Z)V
    .locals 8

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {v5, v6}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/flymexx/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "no_share_location"

    iget-object v7, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/flymexxlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/flymexx/location/LocationSettings;->isManagedProfileRestrictedByBase()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {v5, v0}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v5, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_1
    move v1, p1

    iget-object v5, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {v5, p1}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setEnabled(Z)V

    const v3, 0x7f0c0ce4

    if-nez p1, :cond_2

    iget-object v5, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setChecked(Z)V

    :goto_1
    iget-object v4, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {v4, v3}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v5, v4}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setChecked(Z)V

    if-eqz v2, :cond_4

    const v3, 0x7f0c0ce4

    :goto_3
    iget-object v4, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    iget-object v5, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfileSwitchClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v4, v5}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const v3, 0x7f0c0ce3

    goto :goto_3
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 15

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    invoke-virtual {p0}, Lcom/android/flymexx/location/LocationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v10, 0x7f080037

    invoke-virtual {p0, v10}, Lcom/android/flymexx/location/LocationSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/location/LocationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/flymexx/location/LocationSettings;->setupManagedProfileCategory(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v10, "location_mode"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/flymexx/location/LocationSettings;->mLocationMode:Landroid/support/v7/preference/Preference;

    iget-object v10, p0, Lcom/android/flymexx/location/LocationSettings;->mLocationMode:Landroid/support/v7/preference/Preference;

    new-instance v13, Lcom/android/flymexx/location/LocationSettings$4;

    invoke-direct {v13, p0, v0}, Lcom/android/flymexx/location/LocationSettings$4;-><init>(Lcom/android/flymexx/location/LocationSettings;Lcom/android/flymexx/SettingsActivity;)V

    invoke-virtual {v10, v13}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/flymexx/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f0e0012

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/flymexx/location/LocationSettings;->mAgpsEnabled:Z

    const-string/jumbo v10, "assisted_gps"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/flymexx/location/LocationSettings;->mAssistedGps:Landroid/support/v7/preference/CheckBoxPreference;

    iget-boolean v10, p0, Lcom/android/flymexx/location/LocationSettings;->mAgpsEnabled:Z

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/flymexx/location/LocationSettings;->mAssistedGps:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    iget-object v10, p0, Lcom/android/flymexx/location/LocationSettings;->mAssistedGps:Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v10, :cond_2

    iget-object v13, p0, Lcom/android/flymexx/location/LocationSettings;->mAssistedGps:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v14, "assisted_gps_enabled"

    invoke-static {v10, v14, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v11, :cond_3

    move v10, v11

    :goto_0
    invoke-virtual {v13, v10}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_2
    const-string/jumbo v10, "recent_location_requests"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/flymexx/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    new-instance v4, Lcom/android/flymexxlib/location/RecentLocationApps;

    invoke-direct {v4, v0}, Lcom/android/flymexxlib/location/RecentLocationApps;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/flymexxlib/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v6

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/flymexxlib/location/RecentLocationApps$Request;

    new-instance v3, Lcom/android/flymexx/DimmableIconPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/location/LocationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v7, Lcom/android/flymexxlib/location/RecentLocationApps$Request;->contentDescription:Ljava/lang/CharSequence;

    invoke-direct {v3, v10, v11}, Lcom/android/flymexx/DimmableIconPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget-object v10, v7, Lcom/android/flymexxlib/location/RecentLocationApps$Request;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v10}, Lcom/android/flymexx/DimmableIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v10, v7, Lcom/android/flymexxlib/location/RecentLocationApps$Request;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v10}, Lcom/android/flymexx/DimmableIconPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v10, v7, Lcom/android/flymexxlib/location/RecentLocationApps$Request;->isHighBattery:Z

    if-eqz v10, :cond_4

    const v10, 0x7f0c077f

    invoke-virtual {v3, v10}, Lcom/android/flymexx/DimmableIconPreference;->setSummary(I)V

    :goto_2
    new-instance v10, Lcom/android/flymexx/location/LocationSettings$PackageEntryClickedListener;

    iget-object v11, v7, Lcom/android/flymexxlib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    iget-object v13, v7, Lcom/android/flymexxlib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    invoke-direct {v10, p0, v11, v13}, Lcom/android/flymexx/location/LocationSettings$PackageEntryClickedListener;-><init>(Lcom/android/flymexx/location/LocationSettings;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v3, v10}, Lcom/android/flymexx/DimmableIconPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v10, v12

    goto :goto_0

    :cond_4
    const v10, 0x7f0c0780

    invoke-virtual {v3, v10}, Lcom/android/flymexx/DimmableIconPreference;->setSummary(I)V

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_7

    iget-object v10, p0, Lcom/android/flymexx/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {p0, v5, v10}, Lcom/android/flymexx/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V

    :goto_3
    const/4 v2, 0x0

    iget-object v10, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/flymexx/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v11, "no_share_location"

    iget-object v12, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v10, v11, v12}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v2, 0x1

    :cond_6
    invoke-direct {p0, v0, v9, v2}, Lcom/android/flymexx/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Z)V

    invoke-virtual {p0}, Lcom/android/flymexx/location/LocationSettings;->refreshLocationMode()V

    return-object v9

    :cond_7
    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/location/LocationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v10, 0x7f04009c

    invoke-virtual {v1, v10}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    const v10, 0x7f0c077d

    invoke-virtual {v1, v10}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    invoke-virtual {v1, v12}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    iget-object v10, p0, Lcom/android/flymexx/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v10, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3
.end method

.method private static getLocationString(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const v0, 0x7f0c077b

    return v0

    :pswitch_1
    const v0, 0x7f0c077a

    return v0

    :pswitch_2
    const v0, 0x7f0c0779

    return v0

    :pswitch_3
    const v0, 0x7f0c0778

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isManagedProfileRestrictedByBase()Z
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v1, "no_share_location"

    iget-object v2, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private setupManagedProfileCategory(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/flymexx/location/LocationSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/flymexx/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    const-string/jumbo v0, "managed_profile_location_switch"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v1, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "managed_profile_location_switch"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/RestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    iget-object v0, p0, Lcom/android/flymexx/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f0c0bae

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/location/LocationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Lcom/android/flymexx/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/flymexx/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/flymexx/location/LocationSettings;->setHasOptionsMenu(Z)V

    invoke-virtual {v0}, Lcom/android/flymexx/SettingsActivity;->getSwitchBar()Lcom/android/flymexx/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/location/LocationSettings;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/flymexx/location/LocationSettings;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/flymexx/widget/SwitchBar;->getSwitch()Lcom/android/flymexx/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/flymexx/location/LocationSettings;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/flymexx/widget/SwitchBar;->show()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f0c0785

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/location/LocationSettingsBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/location/LocationSettingsBase;->onDestroyView()V

    iget-object v0, p0, Lcom/android/flymexx/location/LocationSettings;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/android/flymexx/location/LocationSettings;->getLocationString(I)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/flymexx/location/LocationSettings;->mLocationMode:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :cond_0
    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/flymexx/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v7, "no_share_location"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-static {v4, v7, v8}, Lcom/android/flymexxlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v7, "no_share_location"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-static {v4, v7, v8}, Lcom/android/flymexxlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/android/flymexx/location/LocationSettings;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v4, v0}, Lcom/android/flymexx/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_1
    iget-object v4, p0, Lcom/android/flymexx/location/LocationSettings;->mLocationMode:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_7

    :cond_1
    :goto_2
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/flymexx/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/flymexx/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-eq v1, v4, :cond_3

    iget-boolean v4, p0, Lcom/android/flymexx/location/LocationSettings;->mValidListener:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/flymexx/location/LocationSettings;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v4, p0}, Lcom/android/flymexx/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_2
    iget-object v4, p0, Lcom/android/flymexx/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-boolean v4, p0, Lcom/android/flymexx/location/LocationSettings;->mValidListener:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/flymexx/location/LocationSettings;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v4, p0}, Lcom/android/flymexx/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/flymexx/location/LocationSettings;->changeManagedProfileLocationAccessStatus(Z)V

    iget-object v4, p0, Lcom/android/flymexx/location/LocationSettings;->injector:Lcom/android/flymexx/location/SettingsInjector;

    invoke-virtual {v4}, Lcom/android/flymexx/location/SettingsInjector;->reloadStatusMessages()V

    return-void

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/flymexx/location/LocationSettings;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    if-eqz p2, :cond_6

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Lcom/android/flymexx/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    move v4, v6

    goto :goto_3

    :cond_7
    move v5, v6

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/flymexx/location/LocationSettingsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_0
    const-class v1, Lcom/android/flymexx/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0786

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/flymexx/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/flymexx/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/flymexx/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/location/LocationSettings;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/flymexx/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/flymexx/location/LocationSettings;->mValidListener:Z

    :cond_1
    invoke-super {p0}, Lcom/android/flymexx/location/LocationSettingsBase;->onPause()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LocationSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "LocationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Swallowing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 11

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/flymexx/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v7, p0, Lcom/android/flymexx/location/LocationSettings;->mAssistedGps:Landroid/support/v7/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_4

    iget-object v7, p0, Lcom/android/flymexx/location/LocationSettings;->mAssistedGps:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "assisted_gps_supl_host"

    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "assisted_gps_supl_port"

    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    new-instance v3, Ljava/io/File;

    const-string/jumbo v7, "/etc/gps.conf"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string/jumbo v7, "assisted_gps_supl_host"

    const-string/jumbo v9, "SUPL_HOST"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v7, v9}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v7, "assisted_gps_supl_port"

    const-string/jumbo v9, "SUPL_PORT"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v7, v9}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    const-string/jumbo v9, "assisted_gps_enabled"

    iget-object v7, p0, Lcom/android/flymexx/location/LocationSettings;->mAssistedGps:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    :goto_1
    invoke-static {v0, v9, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v8

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    const-string/jumbo v7, "LocationSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could not open GPS configuration file /etc/gps.conf, e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_1

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v5, :cond_2

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    throw v7

    :catch_3
    move-exception v2

    goto :goto_4

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Lcom/android/flymexx/location/LocationSettingsBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v7

    return v7

    :catchall_1
    move-exception v7

    move-object v5, v6

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v5, v6

    goto :goto_2
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/location/LocationSettingsBase;->onResume()V

    invoke-direct {p0}, Lcom/android/flymexx/location/LocationSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    iget-boolean v0, p0, Lcom/android/flymexx/location/LocationSettings;->mValidListener:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/location/LocationSettings;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexx/location/LocationSettings;->mValidListener:Z

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/location/LocationSettings;->setLocationMode(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/location/LocationSettings;->setLocationMode(I)V

    goto :goto_0
.end method
