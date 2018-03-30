.class public Lcom/android/flymexx/accounts/AccountSyncSettings;
.super Lcom/android/flymexx/accounts/AccountPreferenceBase;
.source "AccountSyncSettings.java"


# instance fields
.field private final SIM1_ACCOUNT_NAME:Ljava/lang/String;

.field private final SIM2_ACCOUNT_NAME:Ljava/lang/String;

.field private mAccount:Landroid/accounts/Account;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mInvisibleAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncAdapterType;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderIcon:Landroid/widget/ImageView;

.field private mProviderId:Landroid/widget/TextView;

.field private mSwitches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexx/accounts/SyncStateSwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/accounts/AccountSyncSettings;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/accounts/AccountSyncSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/flymexx/accounts/AccountSyncSettings;->showDialog(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/accounts/AccountPreferenceBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    const-string/jumbo v0, "SIM1"

    iput-object v0, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->SIM1_ACCOUNT_NAME:Ljava/lang/String;

    const-string/jumbo v0, "SIM2"

    iput-object v0, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->SIM2_ACCOUNT_NAME:Ljava/lang/String;

    return-void
.end method

.method private accountExists(Landroid/accounts/Account;)Z
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_0

    return v6

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v6
.end method

.method private addSyncStateSwitch(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0, p2}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_0
    invoke-virtual {v0, v9}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->setPersistent(Z)V

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, p2, v9, v2}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v6

    if-nez v6, :cond_1

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->setup(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provider needs a label for authority \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v7, v1, v9

    const v2, 0x7f0c0a8c

    invoke-virtual {p0, v2, v1}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method private cancelSyncForEnabledProviders()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/flymexx/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Landroid/accounts/Account;",
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

    check-cast v0, Landroid/content/SyncInfo;

    iget-object v2, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private requestAccountAccessIfNeeded(Ljava/lang/String;)Z
    .locals 12

    const/4 v11, 0x0

    if-nez p1, :cond_0

    return v11

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Landroid/accounts/AccountManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/accounts/AccountManager;

    iget-object v0, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v8, v0, p1, v3}, Landroid/accounts/AccountManager;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v8, v0, p1, v3}, Landroid/accounts/AccountManager;->createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    :try_start_1
    invoke-virtual/range {v0 .. v7}, Lcom/android/flymexx/accounts/AccountSyncSettings;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v10

    const-string/jumbo v0, "AccountSettings"

    const-string/jumbo v3, "Invalid sync "

    invoke-static {v0, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v11

    :catch_1
    move-exception v9

    const-string/jumbo v0, "AccountSettings"

    const-string/jumbo v3, "Error requesting account access"

    invoke-static {v0, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v11
.end method

.method private requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3

    if-eqz p3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {p1, p2, v1, v0}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {p1, p2, v1}, Landroid/content/ContentResolver;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private requestOrCancelSyncForEnabledProviders(Z)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    instance-of v6, v2, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;

    if-nez v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v2

    check-cast v5, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;

    invoke-virtual {v5}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, p1}, Lcom/android/flymexx/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncAdapterType;

    iget-object v6, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v7, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-direct {p0, v6, v7, p1}, Lcom/android/flymexx/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private setAccessibilityTitle()V
    .locals 8

    const-string/jumbo v5, "user"

    invoke-virtual {p0, v5}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v2, :cond_1

    const v5, 0x7f0c0613

    :goto_1
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v1, v0}, Lcom/android/flymexx/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const v5, 0x7f0c0614

    goto :goto_1
.end method

.method private setFeedsState()V
    .locals 30

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v9

    const/16 v20, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->updateAccountSwitches()V

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    :goto_0
    if-ge v11, v8, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v15

    instance-of v0, v15, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;

    move/from16 v25, v0

    if-nez v25, :cond_0

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v21, v15

    check-cast v21, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;

    invoke-virtual/range {v21 .. v21}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    move/from16 v0, v24

    invoke-static {v4, v6, v0}, Landroid/content/ContentResolver;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;

    move-result-object v16

    move/from16 v0, v24

    invoke-static {v4, v6, v0}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v17

    if-nez v16, :cond_4

    const/4 v7, 0x0

    :goto_2
    if-nez v16, :cond_5

    const/4 v12, 0x0

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4, v6}, Lcom/android/flymexx/accounts/AccountSyncSettings;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    if-eqz v16, :cond_7

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_7

    const/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_6

    const/4 v13, 0x1

    :goto_4
    if-nez v17, :cond_1

    const/4 v13, 0x0

    :cond_1
    if-eqz v13, :cond_2

    if-eqz v5, :cond_8

    :cond_2
    :goto_5
    const-string/jumbo v25, "AccountSettings"

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_3

    const-string/jumbo v25, "AccountSettings"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Update sync status: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " active = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " pend ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v16, :cond_9

    const-wide/16 v18, 0x0

    :goto_6
    if-nez v17, :cond_a

    const v25, 0x7f0c0a74

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->setSummary(I)V

    :goto_7
    move/from16 v0, v24

    invoke-static {v4, v6, v0}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v22

    if-eqz v5, :cond_e

    if-ltz v22, :cond_e

    if-eqz v12, :cond_d

    const/16 v25, 0x0

    :goto_8
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->setActive(Z)V

    if-eqz v7, :cond_10

    if-ltz v22, :cond_10

    if-eqz v12, :cond_f

    const/16 v25, 0x0

    :goto_9
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->setPending(Z)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->setFailed(Z)V

    invoke-static/range {v24 .. v24}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v25

    if-eqz v25, :cond_11

    const/4 v14, 0x0

    :goto_a
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->setOneTimeSyncMode(Z)V

    if-nez v14, :cond_12

    :goto_b
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, v16

    iget-boolean v7, v0, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, v16

    iget-boolean v12, v0, Landroid/content/SyncStatusInfo;->initialize:Z

    goto/16 :goto_3

    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_8
    if-nez v7, :cond_2

    const/16 v20, 0x1

    goto/16 :goto_5

    :cond_9
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v18, v0

    goto :goto_6

    :cond_a
    if-eqz v5, :cond_b

    const v25, 0x7f0c0a77

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->setSummary(I)V

    goto :goto_7

    :cond_b
    const-wide/16 v26, 0x0

    cmp-long v25, v18, v26

    if-eqz v25, :cond_c

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Date;->setTime(J)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/flymexx/accounts/AccountSyncSettings;->formatSyncDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v23, v26, v27

    const v27, 0x7f0c0a76

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_c
    const-string/jumbo v25, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_d
    const/16 v25, 0x1

    goto/16 :goto_8

    :cond_e
    const/16 v25, 0x0

    goto/16 :goto_8

    :cond_f
    const/16 v25, 0x1

    goto/16 :goto_9

    :cond_10
    const/16 v25, 0x0

    goto/16 :goto_9

    :cond_11
    const/4 v14, 0x1

    goto/16 :goto_a

    :cond_12
    const/16 v17, 0x1

    goto/16 :goto_b

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    if-eqz v20, :cond_14

    const/16 v25, 0x0

    :goto_c
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_14
    const/16 v25, 0x8

    goto :goto_c
.end method

.method private showOperatorSimIcon(ILcom/android/internal/telephony/OperatorSimInfo;)V
    .locals 5

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/OperatorSimInfo;->isSimTypeOperator(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorSimInfo;->getOperatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorSimInfo;->getOperatorDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorSimInfo;->getGenericSimDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v2, v3, v4

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startSyncForEnabledProviders()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/flymexx/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private updateAccountSwitches()V
    .locals 15

    const/4 v14, 0x2

    iget-object v11, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    iget-object v11, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    invoke-static {v11}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    array-length v5, v8

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v6, v8, v2

    iget-object v11, v6, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v12, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string/jumbo v11, "AccountSettings"

    invoke-static {v11, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string/jumbo v11, "AccountSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateAccountSwitches: added authority "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " to accountType "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v11, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string/jumbo v11, "AccountSettings"

    invoke-static {v11, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string/jumbo v11, "AccountSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "looking for sync adapters that match account "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/flymexx/accounts/AccountSyncSettings;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_2
    if-ge v3, v4, :cond_7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/SyncAdapterType;

    iget-object v11, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v12, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v13}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    invoke-static {v11, v12, v13}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v11, "AccountSettings"

    invoke-static {v11, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string/jumbo v11, "AccountSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  found authority "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-lez v9, :cond_6

    :try_start_0
    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v13}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v10

    iget-object v11, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v12, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v11, v12, v13, v10}, Lcom/android/flymexx/accounts/AccountSyncSettings;->addSyncStateSwitch(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    const-string/jumbo v11, "AccountSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "No uid for package"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/flymexx/accounts/AccountSyncSettings;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0c0ba8

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method protected initializeUi(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f110064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f110271

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    const v0, 0x7f110272

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    const v0, 0x7f110270

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/accounts/AccountPreferenceBase;->onAccountsUpdate(Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->accountExists(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->updateAccountSwitches()V

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->onSyncStateUpdated()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/flymexx/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "AccountSettings"

    const-string/jumbo v2, "No arguments provided when starting intent. ACCOUNT_KEY needed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->finish()V

    return-void

    :cond_0
    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iput-object v1, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v1}, Lcom/android/flymexx/accounts/AccountSyncSettings;->accountExists(Landroid/accounts/Account;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Account provided does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->finish()V

    return-void

    :cond_1
    const-string/jumbo v1, "AccountSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v5, -0x1

    if-ne p2, v5, :cond_1

    move v4, p1

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    instance-of v5, v2, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;

    if-eqz v5, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;

    invoke-virtual {v3}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->getUid()I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/flymexx/accounts/AccountSyncSettings;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 5

    invoke-super {p0}, Lcom/android/flymexx/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/android/internal/telephony/OperatorSimInfo;

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/OperatorSimInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorSimInfo;->isOperatorFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string/jumbo v3, "SIM1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/android/flymexx/accounts/AccountSyncSettings;->showOperatorSimIcon(ILcom/android/internal/telephony/OperatorSimInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "SIM2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-direct {p0, v3, v2}, Lcom/android/flymexx/accounts/AccountSyncSettings;->showOperatorSimIcon(ILcom/android/internal/telephony/OperatorSimInfo;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    invoke-direct {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->setAccessibilityTitle()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const v5, 0x7f0c0a88

    const v4, 0x104000a

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0a89

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/flymexx/accounts/AccountSyncSettings$1;

    invoke-direct {v2, p0}, Lcom/android/flymexx/accounts/AccountSyncSettings$1;-><init>(Lcom/android/flymexx/accounts/AccountSyncSettings;)V

    const v3, 0x7f0c0a85

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0x65

    if-ne p1, v1, :cond_2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0a8a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0a8d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0a8e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x0

    const v4, 0x7f0c0a7a

    invoke-virtual {p0, v4}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {p1, v7, v5, v7, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f0200d7

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0c0a7b

    invoke-virtual {p0, v4}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {p1, v7, v5, v7, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x1080038

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const v4, 0x7f0c0a85

    invoke-virtual {p0, v4}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {p1, v7, v5, v7, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f0200d6

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "no_modify_accounts"

    iget-object v6, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/flymexxlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "no_modify_accounts"

    iget-object v6, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/flymexxlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/flymexxlib/RestrictedLockUtils;->checkIfAccountManagementDisabled(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v0}, Lcom/android/flymexxlib/RestrictedLockUtils;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f04001a

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f110063

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p2, v2, v1, v4}, Lcom/android/flymexx/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    invoke-super {p0, p1, v1, p3}, Lcom/android/flymexx/accounts/AccountPreferenceBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/android/flymexx/accounts/AccountSyncSettings;->initializeUi(Landroid/view/View;)V

    return-object v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/flymexx/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->startSyncForEnabledProviders()V

    return v1

    :pswitch_1
    invoke-direct {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->cancelSyncForEnabledProviders()V

    return v1

    :pswitch_2
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->showDialog(I)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/accounts/AccountPreferenceBase;->onPause()V

    iget-object v0, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/flymexxlib/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/flymexxlib/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v8, 0x0

    return v8

    :cond_0
    instance-of v8, p1, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;

    if-eqz v8, :cond_6

    move-object v6, p1

    check-cast v6, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;

    invoke-virtual {v6}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v8, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v7}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v6}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->isOneTimeSyncMode()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0, v3}, Lcom/android/flymexx/accounts/AccountSyncSettings;->requestAccountAccessIfNeeded(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    return v9

    :cond_1
    invoke-direct {p0, v0, v1, v9}, Lcom/android/flymexx/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return v9

    :cond_3
    invoke-virtual {v6}, Lcom/android/flymexx/accounts/SyncStateSwitchPreference;->isChecked()Z

    move-result v5

    move v2, v4

    if-eq v5, v4, :cond_2

    if-eqz v5, :cond_4

    invoke-direct {p0, v3}, Lcom/android/flymexx/accounts/AccountSyncSettings;->requestAccountAccessIfNeeded(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    return v9

    :cond_4
    invoke-static {v0, v1, v5, v7}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    invoke-static {v7}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v5, :cond_2

    :cond_5
    invoke-direct {p0, v0, v1, v5}, Lcom/android/flymexx/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    invoke-super {p0, p1}, Lcom/android/flymexx/accounts/AccountPreferenceBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v8

    return v8
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/android/flymexx/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    iget-object v2, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    const-string/jumbo v0, "dummy"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->removePreference(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/flymexx/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/flymexxlib/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/flymexxlib/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->updateAuthDescriptions()V

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->onAccountsUpdate(Landroid/os/UserHandle;)V

    invoke-super {p0}, Lcom/android/flymexx/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->setFeedsState()V

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_1
    return-void
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    invoke-super {p0}, Lcom/android/flymexx/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
