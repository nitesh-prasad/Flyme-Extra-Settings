.class public Lcom/android/flymexx/accounts/AccountSettings;
.super Lcom/android/flymexx/SettingsPreferenceFragment;
.source "AccountSettings.java"

# interfaces
.implements Lcom/android/flymexxlib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/flymexx/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/accounts/AccountSettings$1;,
        Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;,
        Lcom/android/flymexx/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;,
        Lcom/android/flymexx/accounts/AccountSettings$ManagedProfileBroadcastReceiver;,
        Lcom/android/flymexx/accounts/AccountSettings$MasterSyncStateClickListener;,
        Lcom/android/flymexx/accounts/AccountSettings$ProfileData;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mAuthoritiesCount:I

.field private mManagedProfileBroadcastReceiver:Lcom/android/flymexx/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

.field private mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

.field private mProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/flymexx/accounts/AccountSettings$ProfileData;",
            ">;"
        }
    .end annotation
.end field

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/accounts/AccountSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/accounts/AccountSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/accounts/AccountSettings;->cleanUpPreferences()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/accounts/AccountSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/accounts/AccountSettings;->listenToAccountUpdates()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/flymexx/accounts/AccountSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/flymexx/accounts/AccountSettings$1;

    invoke-direct {v0}, Lcom/android/flymexx/accounts/AccountSettings$1;-><init>()V

    sput-object v0, Lcom/android/flymexx/accounts/AccountSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/flymexx/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/flymexx/accounts/AccountSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/flymexx/accounts/AccountSettings;Lcom/android/flymexx/accounts/AccountSettings$ManagedProfileBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/flymexx/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/flymexx/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/flymexx/accounts/AccountSettings;->mAuthoritiesCount:I

    return-void
.end method

.method private accountTypeHasAnyRequestedAuthorities(Lcom/android/flymexxlib/accounts/AuthenticatorHelper;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget v2, p0, Lcom/android/flymexx/accounts/AccountSettings;->mAuthoritiesCount:I

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/flymexxlib/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No sync authorities for account type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/flymexx/accounts/AccountSettings;->mAuthoritiesCount:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/flymexx/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v5
.end method

.method private cleanUpPreferences()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private getAccountTypePreferences(Lcom/android/flymexxlib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/flymexxlib/accounts/AuthenticatorHelper;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/android/flymexxlib/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/util/ArrayList;

    array-length v2, v13

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x0

    :goto_0
    array-length v2, v13

    if-ge v15, v2, :cond_5

    aget-object v11, v13, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v11}, Lcom/android/flymexx/Utils;->showAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/flymexx/accounts/AccountSettings;->accountTypeHasAnyRequestedAuthorities(Lcom/android/flymexxlib/accounts/AuthenticatorHelper;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Lcom/android/flymexxlib/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/flymexxlib/accounts/AuthenticatorHelper;->getPackageForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/flymexxlib/accounts/AuthenticatorHelper;->getLabelIdForType(Ljava/lang/String;)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v11, v0}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v14

    array-length v2, v14

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/flymexxlib/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v16, 0x0

    :goto_2
    if-eqz v16, :cond_4

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "account"

    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v2, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    const-class v3, Lcom/android/flymexx/accounts/AccountSyncSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Lcom/android/flymexxlib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/flymexx/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Lcom/android/flymexxlib/accounts/AuthenticatorHelper;->preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    :cond_4
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "account_type"

    invoke-virtual {v9, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "account_label"

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v2, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    const-class v3, Lcom/android/flymexx/accounts/ManageAccountsSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Lcom/android/flymexxlib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/flymexx/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance v2, Lcom/android/flymexx/accounts/AccountSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/flymexx/accounts/AccountSettings$3;-><init>(Lcom/android/flymexx/accounts/AccountSettings;)V

    invoke-static {v12, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v12
.end method

.method private getWorkGroupSummary(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, v3}, Lcom/android/flymexx/Utils;->getAdminApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const v4, 0x7f0c0cec

    invoke-virtual {p0, v4, v3}, Lcom/android/flymexx/accounts/AccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private listenToAccountUpdates()V
    .locals 4

    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/flymexxlib/accounts/AuthenticatorHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/flymexxlib/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private newAddAccountPreference(Landroid/content/Context;)Lcom/android/flymexx/DimmableIconPreference;
    .locals 2

    new-instance v0, Lcom/android/flymexx/DimmableIconPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/flymexx/DimmableIconPreference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0a69

    invoke-virtual {v0, v1}, Lcom/android/flymexx/DimmableIconPreference;->setTitle(I)V

    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Lcom/android/flymexx/DimmableIconPreference;->setIcon(I)V

    invoke-virtual {v0, p0}, Lcom/android/flymexx/DimmableIconPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/flymexx/DimmableIconPreference;->setOrder(I)V

    return-object v0
.end method

.method private newManagedProfileSettings()Landroid/support/v7/preference/Preference;
    .locals 2

    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0e7c

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    const v1, 0x7f0200fc

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    return-object v0
.end method

.method private newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;
    .locals 2

    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0a6d

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    const v1, 0x7f0200d6

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    return-object v0
.end method

.method private stopListeningToAccountUpdates()V
    .locals 4

    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/flymexxlib/accounts/AuthenticatorHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/flymexxlib/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAccountTypes(Lcom/android/flymexx/accounts/AccountSettings$ProfileData;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    iget-object v3, p1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/flymexxlib/accounts/AuthenticatorHelper;

    iget-object v4, p1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/flymexx/accounts/AccountSettings;->getAccountTypePreferences(Lcom/android/flymexxlib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/flymexx/DimmableIconPreference;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v4, p1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/flymexx/DimmableIconPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    :goto_1
    iget-object v3, p1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/support/v7/preference/Preference;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v4, p1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    iget-object v3, p1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->managedProfilePreference:Landroid/support/v7/preference/Preference;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v4, p1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->managedProfilePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    const v4, 0x7f020080

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    const v4, 0x7f0c0a6a

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    iget-object v3, p1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/flymexx/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/support/v7/preference/PreferenceScreen;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;-><init>(Lcom/android/flymexx/accounts/AccountSettings$ProfileData;)V

    iput-object p1, v1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    if-eqz p2, :cond_2

    new-instance v3, Lcom/android/flymexx/AccessiblePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/flymexx/AccessiblePreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    const v4, 0x7f0401a0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->setLayoutResource(I)V

    iget-object v3, v1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    const v4, 0x7f0c008c

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    invoke-direct {p0, v0, p1}, Lcom/android/flymexx/accounts/AccountSettings;->getWorkGroupSummary(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceGroup;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    check-cast v3, Lcom/android/flymexx/AccessiblePreferenceCategory;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v7

    const v5, 0x7f0c0611

    invoke-virtual {p0, v5, v4}, Lcom/android/flymexx/accounts/AccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/flymexx/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/flymexx/accounts/AccountSettings;->newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Lcom/android/flymexx/accounts/AccountSettings;->newManagedProfileSettings()Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->managedProfilePreference:Landroid/support/v7/preference/Preference;

    :goto_0
    iget-object v3, v1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p3, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/flymexxlib/accounts/AuthenticatorHelper;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v3, v0, v4, p0}, Lcom/android/flymexxlib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/flymexxlib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v3, v1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/flymexxlib/accounts/AuthenticatorHelper;

    invoke-direct {p0, v0}, Lcom/android/flymexx/accounts/AccountSettings;->newAddAccountPreference(Landroid/content/Context;)Lcom/android/flymexx/DimmableIconPreference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/flymexx/DimmableIconPreference;

    const-string/jumbo v3, "no_modify_accounts"

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v3, v4}, Lcom/android/flymexxlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/flymexx/DimmableIconPreference;

    invoke-virtual {v3, v7}, Lcom/android/flymexx/DimmableIconPreference;->setEnabled(Z)V

    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/flymexx/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/flymexx/search/Index;

    move-result-object v3

    const-class v4, Lcom/android/flymexx/accounts/AccountSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Lcom/android/flymexx/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    return-void

    :cond_1
    iget-object v3, v1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    const v4, 0x7f0c008b

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    iget-object v3, v1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    check-cast v3, Lcom/android/flymexx/AccessiblePreferenceCategory;

    const v4, 0x7f0c0612

    invoke-virtual {p0, v4}, Lcom/android/flymexx/accounts/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/flymexx/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-object p3, v1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    goto :goto_1

    :cond_3
    iget-object v3, v1, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/flymexx/DimmableIconPreference;

    const-string/jumbo v4, "no_modify_accounts"

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v5}, Lcom/android/flymexx/DimmableIconPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 4

    iget-object v1, p0, Lcom/android/flymexx/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/flymexx/accounts/AccountSettings;->updateAccountTypes(Lcom/android/flymexx/accounts/AccountSettings$ProfileData;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing Settings screen for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/accounts/AccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/flymexx/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/flymexx/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/flymexx/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/flymexx/accounts/AccountSettings;->mAuthoritiesCount:I

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/accounts/AccountSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const/high16 v0, 0x7f140000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onPause()V

    invoke-direct {p0}, Lcom/android/flymexx/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    iget-object v0, p0, Lcom/android/flymexx/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/flymexx/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/flymexx/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 13

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x1

    iget-object v0, p0, Lcom/android/flymexx/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_3

    iget-object v0, p0, Lcom/android/flymexx/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;

    iget-object v0, v10, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/flymexx/DimmableIconPreference;

    if-ne p1, v0, :cond_0

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.extra.USER"

    iget-object v1, v10, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v0, "authorities"

    iget-object v1, p0, Lcom/android/flymexx/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v9}, Lcom/android/flymexx/accounts/AccountSettings;->startActivity(Landroid/content/Intent;)V

    return v12

    :cond_0
    iget-object v0, v10, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    iget-object v0, v10, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    iget v11, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/flymexx/accounts/AccountSettings$2;

    invoke-direct {v1, p0, v11}, Lcom/android/flymexx/accounts/AccountSettings$2;-><init>(Lcom/android/flymexx/accounts/AccountSettings;I)V

    invoke-static {v0, v11, v1}, Lcom/android/flymexx/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return v12

    :cond_1
    iget-object v0, v10, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->managedProfilePreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "android.intent.extra.USER"

    iget-object v1, v10, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    const-class v1, Lcom/android/flymexx/accounts/ManagedProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0e7c

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/flymexx/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return v12

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    return v6
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9

    const v8, 0x7f11033c

    const v7, 0x7f11033b

    const v6, 0x7f11033a

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v2, p0, Lcom/android/flymexx/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/flymexx/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v0}, Lcom/android/flymexx/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/flymexx/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/flymexx/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/flymexx/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;

    iget-object v2, v2, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/flymexx/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v0}, Lcom/android/flymexx/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/flymexx/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/flymexx/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v1}, Lcom/android/flymexx/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/flymexx/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "AccountSettings"

    const-string/jumbo v3, "Method onPrepareOptionsMenu called before mProfiles was initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/flymexx/accounts/AccountSettings;->cleanUpPreferences()V

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSettings;->updateUi()V

    iget-object v0, p0, Lcom/android/flymexx/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/flymexx/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/flymexx/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/flymexx/accounts/AccountSettings;->listenToAccountUpdates()V

    return-void
.end method

.method updateUi()V
    .locals 9

    const v7, 0x7f080005

    invoke-virtual {p0, v7}, Lcom/android/flymexx/accounts/AccountSettings;->addPreferencesFromResource(I)V

    iget-object v7, p0, Lcom/android/flymexx/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v7}, Lcom/android/flymexx/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "AccountSettings"

    const-string/jumbo v8, "We should not be showing settings for a managed profile"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSettings;->finish()V

    return-void

    :cond_0
    const-string/jumbo v7, "account"

    invoke-virtual {p0, v7}, Lcom/android/flymexx/accounts/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/flymexx/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/flymexx/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7, v2}, Lcom/android/flymexx/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/support/v7/preference/PreferenceScreen;)V

    :cond_1
    iget-object v7, p0, Lcom/android/flymexx/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_5

    iget-object v7, p0, Lcom/android/flymexx/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;

    iget-object v7, v3, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v7, v2}, Landroid/support/v7/preference/PreferenceGroup;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v3, Lcom/android/flymexx/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/flymexx/accounts/AccountSettings;->updateAccountTypes(Lcom/android/flymexx/accounts/AccountSettings$ProfileData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/flymexx/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_4

    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v7, v0, v2}, Lcom/android/flymexx/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/support/v7/preference/PreferenceScreen;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    return-void
.end method
