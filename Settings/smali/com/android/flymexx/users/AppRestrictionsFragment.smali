.class public Lcom/android/flymexx/users/AppRestrictionsFragment;
.super Lcom/android/flymexx/SettingsPreferenceFragment;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/flymexxlib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/users/AppRestrictionsFragment$1;,
        Lcom/android/flymexx/users/AppRestrictionsFragment$2;,
        Lcom/android/flymexx/users/AppRestrictionsFragment$AppLoadingTask;,
        Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;,
        Lcom/android/flymexx/users/AppRestrictionsFragment$RestrictionsResultReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppList:Landroid/support/v7/preference/PreferenceGroup;

.field private mAppListChanged:Z

.field private mAppLoadingTask:Landroid/os/AsyncTask;

.field private mCustomRequestCode:I

.field private mCustomRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstTime:Z

.field private mHelper:Lcom/android/flymexxlib/users/AppRestrictionsHelper;

.field protected mIPm:Landroid/content/pm/IPackageManager;

.field private mNewUser:Z

.field protected mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageObserver:Landroid/content/BroadcastReceiver;

.field protected mRestrictedProfile:Z

.field private mSysPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mUser:Landroid/os/UserHandle;

.field private mUserBackgrounding:Landroid/content/BroadcastReceiver;

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/users/AppRestrictionsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mAppListChanged:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/users/AppRestrictionsFragment;)Lcom/android/flymexxlib/users/AppRestrictionsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mHelper:Lcom/android/flymexxlib/users/AppRestrictionsHelper;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/users/AppRestrictionsFragment;Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/flymexx/users/AppRestrictionsFragment;->generateCustomActivityRequestCode(Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/users/AppRestrictionsFragment;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/users/AppRestrictionsFragment;->onPackageChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/flymexx/users/AppRestrictionsFragment;Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/users/AppRestrictionsFragment;->onRestrictionsReceived(Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/flymexx/users/AppRestrictionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->populateApps()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/flymexx/users/AppRestrictionsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mFirstTime:Z

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mCustomRequestCode:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/flymexx/users/AppRestrictionsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/users/AppRestrictionsFragment$1;-><init>(Lcom/android/flymexx/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/flymexx/users/AppRestrictionsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/flymexx/users/AppRestrictionsFragment$2;-><init>(Lcom/android/flymexx/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private addLocationAppRestrictionsPreference(Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p1, Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    const v3, 0x7f02010e

    invoke-virtual {p2, v3}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setIcon(I)V

    invoke-direct {p0, v1}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v3, v4}, Lcom/android/flymexx/users/RestrictionUtils;->getRestrictions(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionEntry;

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v2}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v3

    invoke-virtual {p2, v3}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    invoke-virtual {p2, v5}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPersistent(Z)V

    invoke-virtual {p2, p0}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const/16 v3, 0x64

    invoke-virtual {p2, v3}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOrder(I)V

    iget-object v3, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3, p2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method private findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget-object v1, p2, v0

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method private generateCustomActivityRequestCode(Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 2

    iget v0, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mCustomRequestCode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mCustomRequestCode:I

    iget-object v0, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mCustomRequestCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mCustomRequestCode:I

    return v0
.end method

.method private getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageSummary(Landroid/content/pm/PackageInfo;Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p2, Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p2, Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;

    iget-object v1, v1, Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    aput-object v1, v0, v2

    const v1, 0x7f0c0bd0

    invoke-virtual {p0, v1, v0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p2, Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;

    iget-object v1, v1, Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    aput-object v1, v0, v2

    const v1, 0x7f0c0bce

    invoke-virtual {p0, v1, v0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_2

    const v0, 0x7f0c0bcf

    invoke-virtual {p0, v0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method private isAppEnabledForUser(Landroid/content/pm/PackageInfo;)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v3, 0x800000

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private static isAppUnsupportedInRestrictedProfile(Landroid/content/pm/PackageInfo;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isPlatformSigned(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mSysPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private onAppSettingsIconClicked(Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pkg_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->isPanelOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/flymexx/users/AppRestrictionsFragment;->removeRestrictionsForApp(Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    :goto_0
    invoke-virtual {p1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->isPanelOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPanelOpen(Z)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pkg_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/flymexx/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    goto :goto_0
.end method

.method private onPackageChanged(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/flymexx/users/AppRestrictionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private onRestrictionsReceived(Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/flymexx/users/AppRestrictionsFragment;->removeRestrictionsForApp(Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    const/4 v0, 0x1

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/RestrictionEntry;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :goto_1
    if-eqz v3, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    invoke-virtual {p1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->getOrder()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "pkg_"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6, v3}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const v6, 0x7f020080

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    invoke-static {p1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->-get2(Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    new-instance v3, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v6, v3

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :pswitch_1
    new-instance v3, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v5}, Lcom/android/flymexx/users/AppRestrictionsFragment;->findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v6, v3

    check-cast v6, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object v6, v3

    check-cast v6, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object v6, v3

    check-cast v6, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object v6, v3

    check-cast v6, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_2
    new-instance v3, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/support/v14/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    move-object v6, v3

    check-cast v6, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object v6, v3

    check-cast v6, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-object v6, v3

    check-cast v6, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v6, v4}, Landroid/support/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    move-object v6, v3

    check-cast v6, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/MultiSelectListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    const/4 v6, 0x1

    if-ne v0, v6, :cond_3

    invoke-virtual {p1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6, p1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private populateApps()V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/flymexx/Utils;->getExistingUser(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;

    move-result-object v15

    if-nez v15, :cond_1

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v15}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v15, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v13, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v15}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mHelper:Lcom/android/flymexxlib/users/AppRestrictionsHelper;

    invoke-virtual {v15}, Lcom/android/flymexxlib/users/AppRestrictionsHelper;->getVisibleApps()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;

    iget-object v9, v1, Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_2

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    new-instance v8, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v8, v15, v0}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9}, Lcom/android/flymexx/users/AppRestrictionsFragment;->resolveInfoListHasPackage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8}, Lcom/android/flymexx/users/AppRestrictionsFragment;->addLocationAppRestrictionsPreference(Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mHelper:Lcom/android/flymexxlib/users/AppRestrictionsHelper;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v9, v0}, Lcom/android/flymexxlib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    const/16 v15, 0x2040

    :try_start_0
    invoke-interface {v6, v9, v15, v14}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_1
    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v15, :cond_4

    invoke-static {v10}, Lcom/android/flymexx/users/AppRestrictionsFragment;->isAppUnsupportedInRestrictedProfile(Landroid/content/pm/PackageInfo;)Z

    move-result v15

    if-nez v15, :cond_2

    :cond_4
    iget-object v15, v1, Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_8

    iget-object v15, v1, Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    :goto_2
    invoke-virtual {v8, v15}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    iget-object v15, v1, Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-virtual {v8, v15}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setKey(Ljava/lang/String;)V

    if-eqz v5, :cond_9

    iget-object v15, v1, Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-nez v15, :cond_9

    const/4 v15, 0x1

    :goto_3
    invoke-static {v8, v15}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->-wrap0(Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPersistent(Z)V

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getPackageSummary(Landroid/content/pm/PackageInfo;Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-boolean v15, v10, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/flymexx/users/AppRestrictionsFragment;->isPlatformSigned(Landroid/content/pm/PackageInfo;)Z

    move-result v15

    if-eqz v15, :cond_a

    :cond_5
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    if-eqz v5, :cond_2

    iget-object v15, v1, Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-nez v15, :cond_6

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8, v15}, Lcom/android/flymexx/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    :cond_6
    :goto_4
    iget-object v15, v1, Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/flymexxlib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-eqz v15, :cond_7

    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mHelper:Lcom/android/flymexxlib/users/AppRestrictionsHelper;

    invoke-virtual {v15, v9}, Lcom/android/flymexxlib/users/AppRestrictionsHelper;->isPackageSelected(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v8, v15}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v15}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v15

    add-int/lit8 v15, v15, 0x2

    mul-int/lit8 v15, v15, 0x64

    invoke-virtual {v8, v15}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mHelper:Lcom/android/flymexxlib/users/AppRestrictionsHelper;

    invoke-virtual {v8}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v15, v9, v0}, Lcom/android/flymexxlib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v15, v8}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v4

    goto/16 :goto_1

    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v15, 0x0

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mNewUser:Z

    if-nez v15, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/flymexx/users/AppRestrictionsFragment;->isAppEnabledForUser(Landroid/content/pm/PackageInfo;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    goto :goto_4

    :cond_b
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mAppListChanged:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mNewUser:Z

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mFirstTime:Z

    if-eqz v15, :cond_c

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mFirstTime:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mHelper:Lcom/android/flymexxlib/users/AppRestrictionsHelper;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/flymexxlib/users/AppRestrictionsHelper;->applyUserAppsStates(Lcom/android/flymexxlib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    :cond_c
    return-void
.end method

.method private removeRestrictionsForApp(Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 3

    invoke-static {p1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->-get2(Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->-get2(Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void
.end method

.method private requestRestrictionsForApp(Ljava/lang/String;Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v3}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v8

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.restrictions_bundle"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/android/flymexx/users/AppRestrictionsFragment$RestrictionsResultReceiver;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/flymexx/users/AppRestrictionsFragment$RestrictionsResultReceiver;-><init>(Lcom/android/flymexx/users/AppRestrictionsFragment;Ljava/lang/String;Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    const/4 v5, -0x1

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private resolveInfoListHasPackage(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private updateAllEntries(Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    instance-of v2, v1, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v1, p2}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected getAppPreferenceGroup()Landroid/support/v7/preference/PreferenceGroup;
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x61

    return v0
.end method

.method protected init(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    new-instance v2, Landroid/os/UserHandle;

    const-string/jumbo v3, "user_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    :cond_1
    new-instance v2, Lcom/android/flymexxlib/users/AppRestrictionsHelper;

    invoke-virtual {p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-direct {v2, v3, v4}, Lcom/android/flymexxlib/users/AppRestrictionsHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    iput-object v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mHelper:Lcom/android/flymexxlib/users/AppRestrictionsHelper;

    invoke-virtual {p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    :try_start_0
    iget-object v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v3, "android"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mSysPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const v2, 0x7f08000f

    invoke-virtual {p0, v2}, Lcom/android/flymexx/users/AppRestrictionsFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getAppPreferenceGroup()Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Landroid/os/UserHandle;

    const-string/jumbo v3, "user_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    :cond_3
    const-string/jumbo v2, "new_user"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mNewUser:Z

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Lcom/android/flymexx/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-nez v3, :cond_0

    sget-object v4, Lcom/android/flymexx/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown requestCode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    invoke-virtual {v3}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pkg_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "android.intent.extra.restrictions_list"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v4, "android.intent.extra.restrictions_bundle"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-virtual {v3, v1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v1}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v0, v5}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v5, 0x7f1101af

    if-ne v2, v5, :cond_1

    invoke-direct {p0, v1}, Lcom/android/flymexx/users/AppRestrictionsFragment;->onAppSettingsIconClicked(Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    invoke-virtual {v1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "pkg_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->-get3(Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/RestrictionEntry;

    invoke-virtual {v1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    invoke-virtual {p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->-get3(Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v2, v3, v4}, Lcom/android/flymexx/users/RestrictionUtils;->setRestrictions(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    return-void

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mHelper:Lcom/android/flymexxlib/users/AppRestrictionsHelper;

    invoke-virtual {v1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v2, v0, v5}, Lcom/android/flymexxlib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->-get0(Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->-get3(Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-direct {p0, v0, v1, v3}, Lcom/android/flymexx/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    :cond_4
    iput-boolean v4, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mAppListChanged:Z

    iget-boolean v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mHelper:Lcom/android/flymexxlib/users/AppRestrictionsHelper;

    invoke-virtual {v1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v0, v3, p0}, Lcom/android/flymexxlib/users/AppRestrictionsHelper;->applyUserAppState(Ljava/lang/String;ZLcom/android/flymexxlib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    :cond_5
    invoke-virtual {v1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/flymexx/users/AppRestrictionsFragment;->updateAllEntries(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public onDisableUiForPackage(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/flymexx/users/AppRestrictionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onPause()V

    iput-boolean v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mNewUser:Z

    invoke-virtual {p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mAppListChanged:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/flymexx/users/AppRestrictionsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/flymexx/users/AppRestrictionsFragment$3;-><init>(Lcom/android/flymexx/users/AppRestrictionsFragment;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/users/AppRestrictionsFragment$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string/jumbo v14, ";"

    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    new-instance v13, Ljava/util/StringTokenizer;

    const-string/jumbo v14, ";"

    invoke-direct {v13, v5, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "pkg_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v2}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->getRestrictions()Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/RestrictionEntry;

    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getType()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v3, v14}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v10}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v7, v15, v0}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_1
    const/4 v14, 0x1

    return v14

    :pswitch_1
    move-object/from16 v6, p1

    check-cast v6, Landroid/support/v7/preference/ListPreference;

    move-object/from16 v14, p2

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v3, v14}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v15

    check-cast p2, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Lcom/android/flymexx/users/AppRestrictionsFragment;->findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_2
    move-object/from16 v12, p2

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v14

    new-array v11, v14, [Ljava/lang/String;

    invoke-interface {v12, v11}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v3, v11}, Landroid/content/RestrictionEntry;->setAllSelectedStrings([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pkg_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v0}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pkg_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mHelper:Lcom/android/flymexxlib/users/AppRestrictionsHelper;

    invoke-virtual {v4, v2, v1}, Lcom/android/flymexxlib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/android/flymexx/users/AppRestrictionsFragment;->updateAllEntries(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mAppListChanged:Z

    iget-object v4, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mHelper:Lcom/android/flymexxlib/users/AppRestrictionsHelper;

    invoke-virtual {v4, v2, v1, p0}, Lcom/android/flymexxlib/users/AppRestrictionsHelper;->applyUserAppState(Ljava/lang/String;ZLcom/android/flymexxlib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    :cond_0
    return v3

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    return v1
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v5, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mAppListChanged:Z

    iget-object v1, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Lcom/android/flymexx/users/AppRestrictionsFragment$AppLoadingTask;

    invoke-direct {v1, p0, v6}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppLoadingTask;-><init>(Lcom/android/flymexx/users/AppRestrictionsFragment;Lcom/android/flymexx/users/AppRestrictionsFragment$AppLoadingTask;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/flymexx/users/AppRestrictionsFragment$AppLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lcom/android/flymexx/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
