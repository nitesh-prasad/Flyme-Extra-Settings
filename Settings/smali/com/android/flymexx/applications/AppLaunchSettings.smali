.class public Lcom/android/flymexx/applications/AppLaunchSettings;
.super Lcom/android/flymexx/applications/AppInfoWithHeader;
.source "AppLaunchSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final sBrowserIntent:Landroid/content/Intent;


# instance fields
.field private mAppDomainUrls:Lcom/android/flymexx/applications/AppDomainsPreference;

.field private mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

.field private mClearDefaultsPreference:Lcom/android/flymexx/applications/ClearDefaultsPreference;

.field private mHasDomainUrls:Z

.field private mIsBrowser:Z

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/flymexx/applications/AppLaunchSettings;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/flymexx/applications/AppLaunchSettings;->updateAppLinkState(I)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "http:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/flymexx/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method private buildStateDropDown()V
    .locals 9

    const/4 v1, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mIsBrowser:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/DropDownPreference;->setShouldDisableView(Z)V

    iget-object v1, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/DropDownPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/flymexx/applications/AppDomainsPreference;

    invoke-virtual {v1, v6}, Lcom/android/flymexx/applications/AppDomainsPreference;->setShouldDisableView(Z)V

    iget-object v1, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/flymexx/applications/AppDomainsPreference;

    invoke-virtual {v1, v5}, Lcom/android/flymexx/applications/AppDomainsPreference;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    new-array v3, v8, [Ljava/lang/CharSequence;

    const v4, 0x7f0c0d3a

    invoke-virtual {p0, v4}, Lcom/android/flymexx/applications/AppLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0c0d3b

    invoke-virtual {p0, v4}, Lcom/android/flymexx/applications/AppLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f0c0d3c

    invoke-virtual {p0, v4}, Lcom/android/flymexx/applications/AppLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    new-array v3, v8, [Ljava/lang/CharSequence;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    iget-boolean v3, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mHasDomainUrls:Z

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/DropDownPreference;->setEnabled(Z)V

    iget-boolean v2, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mHasDomainUrls:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    if-nez v0, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    new-instance v2, Lcom/android/flymexx/applications/AppLaunchSettings$1;

    invoke-direct {v2, p0}, Lcom/android/flymexx/applications/AppLaunchSettings$1;-><init>(Lcom/android/flymexx/applications/AppLaunchSettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private getEntries(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)[",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v1, p1}, Lcom/android/flymexx/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    return-object v1
.end method

.method private isBrowserApp(Ljava/lang/String;)Z
    .locals 8

    sget-object v4, Lcom/android/flymexx/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    sget-object v5, Lcom/android/flymexx/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/high16 v7, 0x20000

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-boolean v4, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private updateAppLinkState(I)Z
    .locals 7

    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mIsBrowser:Z

    if-eqz v4, :cond_0

    return v6

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p1, :cond_1

    return v6

    :cond_1
    iget-object v4, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, p1, v3}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v2

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "AppLaunchSettings"

    const-string/jumbo v5, "Couldn\'t update intent verification status!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/flymexx/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f080033

    invoke-virtual {p0, v3}, Lcom/android/flymexx/applications/AppLaunchSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v3, "app_launch_supported_domain_urls"

    invoke-virtual {p0, v3}, Lcom/android/flymexx/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/flymexx/applications/AppDomainsPreference;

    iput-object v3, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/flymexx/applications/AppDomainsPreference;

    const-string/jumbo v3, "app_launch_clear_defaults"

    invoke-virtual {p0, v3}, Lcom/android/flymexx/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/flymexx/applications/ClearDefaultsPreference;

    iput-object v3, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/flymexx/applications/ClearDefaultsPreference;

    const-string/jumbo v3, "app_link_state"

    invoke-virtual {p0, v3}, Lcom/android/flymexx/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/DropDownPreference;

    iput-object v3, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/flymexx/applications/AppLaunchSettings;->isBrowserApp(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mIsBrowser:Z

    iget-object v3, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mHasDomainUrls:Z

    iget-boolean v3, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mIsBrowser:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v3, v2, v1}, Lcom/android/flymexx/applications/AppLaunchSettings;->getEntries(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/flymexx/applications/AppDomainsPreference;

    invoke-virtual {v3, v0}, Lcom/android/flymexx/applications/AppDomainsPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/flymexx/applications/AppDomainsPreference;

    array-length v4, v0

    new-array v4, v4, [I

    invoke-virtual {v3, v4}, Lcom/android/flymexx/applications/AppDomainsPreference;->setValues([I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/flymexx/applications/AppLaunchSettings;->buildStateDropDown()V

    return-void

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected refreshUi()Z
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/flymexx/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/applications/ClearDefaultsPreference;->setPackageName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/flymexx/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/flymexx/applications/AppLaunchSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/applications/ClearDefaultsPreference;->setAppEntry(Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)V

    const/4 v0, 0x1

    return v0
.end method
