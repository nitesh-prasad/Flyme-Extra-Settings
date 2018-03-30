.class public Lcom/android/flymexx/SecuritySettings;
.super Lcom/android/flymexx/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/flymexx/search/Indexable;
.implements Lcom/android/flymexx/GearPreference$OnGearClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/SecuritySettings$SecuritySearchIndexProvider;,
        Lcom/android/flymexx/SecuritySettings$SecuritySubSettings;,
        Lcom/android/flymexx/SecuritySettings$UnificationConfirmationDialog;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/flymexx/ChooseLockSettingsHelper;

.field private mCurrentDevicePassword:Ljava/lang/String;

.field private mCurrentProfilePassword:Ljava/lang/String;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mIsAdmin:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mManagedPasswordProvider:Lcom/android/flymexx/ManagedLockPasswordProvider;

.field private mProfileChallengeUserId:I

.field private mResetCredentials:Lcom/android/flymexxlib/RestrictedPreference;

.field private mShowPassword:Landroid/support/v14/preference/SwitchPreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mToggleAppInstallation:Lcom/android/flymexxlib/RestrictedSwitchPreference;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mUm:Landroid/os/UserManager;

.field private mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

.field private mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/flymexx/SecuritySettings;->MY_USER_ID:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/flymexx/ManagedLockPasswordProvider;I)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/flymexx/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/flymexx/ManagedLockPasswordProvider;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/flymexx/SecuritySettings;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/flymexx/SecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/SecuritySettings;->launchConfirmDeviceLockForUnification()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/flymexx/SecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/SecuritySettings;->unifyUncompliantLocks()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/flymexx/SecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/SecuritySettings;->updateUnificationPreference()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/flymexx/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "show_password"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_install_applications"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "unification"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "visiblepattern_profile"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/flymexx/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/flymexx/SecuritySettings;->MY_USER_ID:I

    new-instance v0, Lcom/android/flymexx/SecuritySettings$SecuritySearchIndexProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/flymexx/SecuritySettings$SecuritySearchIndexProvider;-><init>(Lcom/android/flymexx/SecuritySettings$SecuritySearchIndexProvider;)V

    sput-object v0, Lcom/android/flymexx/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private addTrustAgentSettings(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 9

    iget-object v6, p0, Lcom/android/flymexx/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/android/flymexx/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/flymexx/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/flymexx/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v6, v7, v8}, Lcom/android/flymexx/SecuritySettings;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/TrustAgentUtils$TrustAgentComponentInfo;

    new-instance v5, Lcom/android/flymexxlib/RestrictedPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/flymexxlib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v6, "trust_agent"

    invoke-virtual {v5, v6}, Lcom/android/flymexxlib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/flymexx/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/flymexxlib/RestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lcom/android/flymexx/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/flymexxlib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v6, v0, Lcom/android/flymexx/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v4}, Lcom/android/flymexxlib/RestrictedPreference;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v6, v0, Lcom/android/flymexx/TrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v5, v6}, Lcom/android/flymexxlib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {v5}, Lcom/android/flymexxlib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/flymexxlib/RestrictedPreference;->setEnabled(Z)V

    const v6, 0x7f0c04a8

    invoke-virtual {v5, v6}, Lcom/android/flymexxlib/RestrictedPreference;->setSummary(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 37

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/SecuritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v21

    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v33, 0x7f080048

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/flymexx/SecuritySettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/SecuritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/SecuritySettings;->mManagedPasswordProvider:Lcom/android/flymexx/ManagedLockPasswordProvider;

    move-object/from16 v35, v0

    sget v36, Lcom/android/flymexx/SecuritySettings;->MY_USER_ID:I

    invoke-static/range {v33 .. v36}, Lcom/android/flymexx/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/flymexx/ManagedLockPasswordProvider;I)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/flymexx/SecuritySettings;->addPreferencesFromResource(I)V

    const-string/jumbo v33, "unlock_set_or_change"

    sget v34, Lcom/android/flymexx/SecuritySettings;->MY_USER_ID:I

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/flymexx/SecuritySettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/SecuritySettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v33, v0

    sget v34, Lcom/android/flymexx/SecuritySettings;->MY_USER_ID:I

    invoke-static/range {v33 .. v34}, Lcom/android/flymexx/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v33, v0

    const/16 v34, -0x2710

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v33

    if-eqz v33, :cond_1

    const v33, 0x7f08005b

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/flymexx/SecuritySettings;->addPreferencesFromResource(I)V

    const v33, 0x7f08005e

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/flymexx/SecuritySettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/SecuritySettings;->mManagedPasswordProvider:Lcom/android/flymexx/ManagedLockPasswordProvider;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v36, v0

    invoke-static/range {v33 .. v36}, Lcom/android/flymexx/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/flymexx/ManagedLockPasswordProvider;I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/flymexx/SecuritySettings;->addPreferencesFromResource(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/flymexx/SecuritySettings;->maybeAddFingerprintPreference(Landroid/support/v7/preference/PreferenceGroup;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v33

    if-nez v33, :cond_d

    const-string/jumbo v33, "unlock_set_or_change_profile"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v33

    const v34, 0x7f0c07ed

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    const-string/jumbo v33, "unlock_set_or_change"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/flymexx/SecuritySettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    const-string/jumbo v33, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/flymexx/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/android/flymexx/GearPreference;

    move/from16 v33, v0

    if-eqz v33, :cond_2

    check-cast v31, Lcom/android/flymexx/GearPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/flymexx/GearPreference;->setOnGearClickListener(Lcom/android/flymexx/GearPreference$OnGearClickListener;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/SecuritySettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/flymexx/SecuritySettings;->mIsAdmin:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/flymexx/SecuritySettings;->mIsAdmin:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v33

    if-eqz v33, :cond_e

    const v33, 0x7f08004a

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/flymexx/SecuritySettings;->addPreferencesFromResource(I)V

    :cond_3
    :goto_1
    const-string/jumbo v33, "security_category"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v22, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v33

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/flymexx/SecuritySettings;->maybeAddFingerprintPreference(Landroid/support/v7/preference/PreferenceGroup;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/flymexx/SecuritySettings;->addTrustAgentSettings(Landroid/support/v7/preference/PreferenceGroup;)V

    :cond_4
    const-string/jumbo v33, "visiblepattern_profile"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/flymexx/SecuritySettings;->mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v33, "unification"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/flymexx/SecuritySettings;->mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

    const v33, 0x7f08004f

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/flymexx/SecuritySettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    const-string/jumbo v34, "carrier_config"

    invoke-virtual/range {v33 .. v34}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v5}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    const-string/jumbo v33, "sim_lock"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/PreferenceGroup;

    const-string/jumbo v33, "sim_lock_settings"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/flymexx/SecuritySettings;->mIsAdmin:Z

    move/from16 v33, v0

    if-eqz v33, :cond_5

    const-string/jumbo v33, "hide_sim_lock_settings_bool"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_f

    :cond_5
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "lock_to_app_enabled"

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-eqz v33, :cond_7

    const-string/jumbo v33, "screen_pinning_settings"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0c0ce3

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    const-string/jumbo v33, "show_password"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/flymexx/SecuritySettings;->mShowPassword:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v33, "credentials_reset"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v33

    check-cast v33, Lcom/android/flymexxlib/RestrictedPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/flymexx/SecuritySettings;->mResetCredentials:Lcom/android/flymexxlib/RestrictedPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    const-string/jumbo v34, "user"

    invoke-virtual/range {v33 .. v34}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/UserManager;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/flymexx/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    const-string/jumbo v34, "no_config_credentials"

    sget v35, Lcom/android/flymexx/SecuritySettings;->MY_USER_ID:I

    invoke-static/range {v33 .. v35}, Lcom/android/flymexxlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v33

    if-nez v33, :cond_18

    const-string/jumbo v33, "user_credentials"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v32

    check-cast v32, Lcom/android/flymexxlib/RestrictedPreference;

    const-string/jumbo v33, "no_config_credentials"

    invoke-virtual/range {v32 .. v33}, Lcom/android/flymexxlib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    const-string/jumbo v33, "credential_storage_type"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/flymexxlib/RestrictedPreference;

    const-string/jumbo v33, "no_config_credentials"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Lcom/android/flymexxlib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    const-string/jumbo v33, "credentials_install"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/flymexxlib/RestrictedPreference;

    const-string/jumbo v33, "no_config_credentials"

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Lcom/android/flymexxlib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/SecuritySettings;->mResetCredentials:Lcom/android/flymexxlib/RestrictedPreference;

    move-object/from16 v33, v0

    const-string/jumbo v34, "no_config_credentials"

    invoke-virtual/range {v33 .. v34}, Lcom/android/flymexxlib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v33

    if-eqz v33, :cond_17

    const v26, 0x7f0c0a0a

    :goto_3
    move/from16 v0, v26

    invoke-virtual {v6, v0}, Lcom/android/flymexxlib/RestrictedPreference;->setSummary(I)V

    :goto_4
    const-string/jumbo v33, "device_admin_category"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceGroup;

    const-string/jumbo v33, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/flymexx/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v33

    check-cast v33, Lcom/android/flymexxlib/RestrictedSwitchPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/flymexx/SecuritySettings;->mToggleAppInstallation:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/SecuritySettings;->mToggleAppInstallation:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    move-object/from16 v33, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v34

    invoke-virtual/range {v33 .. v34}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/SecuritySettings;->mToggleAppInstallation:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    move-object/from16 v34, v0

    sget v33, Lcom/android/flymexx/SecuritySettings;->MY_USER_ID:I

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v33

    if-eqz v33, :cond_19

    const/16 v33, 0x0

    :goto_5
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    const-string/jumbo v34, "no_install_unknown_sources"

    sget v35, Lcom/android/flymexx/SecuritySettings;->MY_USER_ID:I

    invoke-static/range {v33 .. v35}, Lcom/android/flymexxlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v33

    if-nez v33, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    const-string/jumbo v34, "no_install_apps"

    sget v35, Lcom/android/flymexx/SecuritySettings;->MY_USER_ID:I

    invoke-static/range {v33 .. v35}, Lcom/android/flymexxlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v33

    if-eqz v33, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/SecuritySettings;->mToggleAppInstallation:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setEnabled(Z)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/SecuritySettings;->mToggleAppInstallation:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->isEnabled()Z

    move-result v33

    if-eqz v33, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/SecuritySettings;->mToggleAppInstallation:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    move-object/from16 v33, v0

    const-string/jumbo v34, "no_install_unknown_sources"

    invoke-virtual/range {v33 .. v34}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/SecuritySettings;->mToggleAppInstallation:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v33

    if-nez v33, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/SecuritySettings;->mToggleAppInstallation:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    move-object/from16 v33, v0

    const-string/jumbo v34, "no_install_apps"

    invoke-virtual/range {v33 .. v34}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :cond_a
    const-string/jumbo v33, "advanced_security"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v3, :cond_b

    const-string/jumbo v33, "manage_trust_agents"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v16

    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v33, v0

    sget v34, Lcom/android/flymexx/SecuritySettings;->MY_USER_ID:I

    invoke-virtual/range {v33 .. v34}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v33

    if-eqz v33, :cond_1a

    :cond_b
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/flymexx/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/flymexx/search/Index;

    move-result-object v33

    const-class v34, Lcom/android/flymexx/SecuritySettings;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x1

    const/16 v36, 0x1

    invoke-virtual/range {v33 .. v36}, Lcom/android/flymexx/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    const/4 v10, 0x0

    :goto_7
    sget-object v33, Lcom/android/flymexx/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v10, v0, :cond_1b

    sget-object v33, Lcom/android/flymexx/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v33, v33, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/flymexx/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    if-eqz v18, :cond_c

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_d
    const-string/jumbo v33, "unlock_set_or_change_profile"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/flymexx/SecuritySettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_e
    const v33, 0x7f08005d

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/flymexx/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v27

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v17

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_8
    move/from16 v0, v17

    if-ge v10, v0, :cond_15

    const/16 v33, 0x1

    move/from16 v0, v17

    move/from16 v1, v33

    if-le v0, v1, :cond_12

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v25

    if-nez v25, :cond_11

    :cond_10
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_11
    new-instance v18, Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v33

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    add-int/lit8 v34, v10, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    const/16 v35, 0x0

    aput-object v34, v33, v35

    const v34, 0x7f0c0287

    move-object/from16 v0, p0

    move/from16 v1, v34

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/flymexx/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v14, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    const-class v34, Lcom/android/flymexx/Settings$IccLockSettingsActivity;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v33, "slot_id"

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v34

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v33, "sub_display_name"

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string/jumbo v33, ":settings:show_fragment_as_subsetting"

    const/16 v34, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_a
    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v33

    or-int v9, v9, v33

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v24

    const/16 v33, 0x1

    move/from16 v0, v24

    move/from16 v1, v33

    if-eq v0, v1, :cond_14

    if-eqz v24, :cond_14

    const/16 v33, 0x8

    move/from16 v0, v24

    move/from16 v1, v33

    if-eq v0, v1, :cond_13

    const/16 v33, 0x1

    :goto_b
    move/from16 v23, v33

    :goto_c
    if-nez v23, :cond_10

    const/16 v33, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_9

    :cond_12
    move-object/from16 v18, v11

    goto :goto_a

    :cond_13
    const/16 v33, 0x0

    goto :goto_b

    :cond_14
    const/16 v23, 0x0

    goto :goto_c

    :cond_15
    if-nez v9, :cond_16

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_2

    :cond_16
    const/16 v33, 0x1

    move/from16 v0, v17

    move/from16 v1, v33

    if-le v0, v1, :cond_6

    invoke-virtual {v12, v11}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_2

    :cond_17
    const v26, 0x7f0c0a0b

    goto/16 :goto_3

    :cond_18
    const-string/jumbo v33, "credentials_management"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/PreferenceGroup;

    const-string/jumbo v33, "credentials_reset"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string/jumbo v33, "credentials_install"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string/jumbo v33, "credential_storage_type"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string/jumbo v33, "user_credentials"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_4

    :cond_19
    const/16 v33, 0x1

    goto/16 :goto_5

    :cond_1a
    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    const v33, 0x7f0c04a8

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto/16 :goto_6

    :cond_1b
    return-object v21
.end method

.method private disableIfPasswordQualityManaged(Ljava/lang/String;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/flymexxlib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, v0, Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, p2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v2

    const/high16 v3, 0x80000

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/flymexxlib/RestrictedPreference;

    invoke-virtual {v1, v0}, Lcom/android/flymexxlib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method

.method private static getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexx/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lcom/android/flymexx/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v9, 0x80

    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    sget v8, Lcom/android/flymexx/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v8}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/16 v9, 0x10

    invoke-static {p0, v9, v8}, Lcom/android/flymexxlib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v8, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v4, v3}, Lcom/android/flymexx/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v3, v4}, Lcom/android/flymexx/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/flymexx/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v7

    iget-object v8, v7, Lcom/android/flymexx/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_2

    invoke-static {v4}, Lcom/android/flymexx/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v7, Lcom/android/flymexx/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v0, :cond_4

    invoke-static {v4}, Lcom/android/flymexx/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {p2, v10, v8}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_4

    iput-object v0, v7, Lcom/android/flymexx/TrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    :cond_4
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/flymexx/ManagedLockPasswordProvider;I)I
    .locals 3

    sget v2, Lcom/android/flymexx/SecuritySettings;->MY_USER_ID:I

    if-ne p3, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v0, :cond_1

    const v1, 0x7f08004e

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const v1, 0x7f08004d

    goto :goto_1

    :cond_2
    const v1, 0x7f080049

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    if-eqz v0, :cond_4

    const v1, 0x7f080053

    goto :goto_1

    :cond_4
    const v1, 0x7f080054

    goto :goto_1

    :sswitch_1
    if-eqz v0, :cond_5

    const v1, 0x7f080058

    goto :goto_1

    :cond_5
    const v1, 0x7f080059

    goto :goto_1

    :sswitch_2
    if-eqz v0, :cond_6

    const v1, 0x7f080050

    goto :goto_1

    :cond_6
    const v1, 0x7f080051

    goto :goto_1

    :sswitch_3
    if-eqz v0, :cond_7

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p2, v2}, Lcom/android/flymexx/ManagedLockPasswordProvider;->getResIdForLockUnlockScreen(Z)I

    move-result v1

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
        0x80000 -> :sswitch_3
    .end sparse-switch
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isPasswordVisible()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_password"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private launchConfirmDeviceLockForUnification()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0457

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/android/flymexx/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/flymexx/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    sget v2, Lcom/android/flymexx/SecuritySettings;->MY_USER_ID:I

    const/16 v3, 0x80

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/flymexx/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/flymexx/SecuritySettings;->launchConfirmProfileLockForUnification()V

    :cond_0
    return-void
.end method

.method private launchConfirmProfileLockForUnification()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0458

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/android/flymexx/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/flymexx/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    iget v2, p0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    const/16 v3, 0x81

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/flymexx/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/flymexx/SecuritySettings;->unifyLocks()V

    invoke-direct {p0}, Lcom/android/flymexx/SecuritySettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    :cond_0
    return-void
.end method

.method private maybeAddFingerprintPreference(Landroid/support/v7/preference/PreferenceGroup;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/flymexx/fingerprint/FingerprintSettings;->getFingerprintPreferenceForUser(Landroid/content/Context;I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private unifyLocks()V
    .locals 8

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/flymexx/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/flymexx/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/flymexx/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/flymexx/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    const/high16 v3, 0x10000

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/flymexx/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/flymexx/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    sget v5, Lcom/android/flymexx/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternSize(I)B

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;B)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/flymexx/SecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    sget v6, Lcom/android/flymexx/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    :goto_0
    iget-object v3, p0, Lcom/android/flymexx/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    iget-object v5, p0, Lcom/android/flymexx/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    iget-object v3, p0, Lcom/android/flymexx/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v1

    iget-object v3, p0, Lcom/android/flymexx/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/android/flymexx/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    iput-object v7, p0, Lcom/android/flymexx/SecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/flymexx/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/flymexx/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/flymexx/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/flymexx/SecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    sget v6, Lcom/android/flymexx/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private unifyUncompliantLocks()V
    .locals 6

    iget-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    iget-object v2, p0, Lcom/android/flymexx/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    const-string/jumbo v2, "com.android.flymexx.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0c0451

    const/16 v4, 0x7b

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/flymexx/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private ununifyLocks()V
    .locals 6

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "com.android.flymexx.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0c0452

    const/16 v4, 0x7f

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/flymexx/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private updateUnificationPreference()V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/SecuritySettings;->mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0732

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c07f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0c0baf

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x57

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/flymexx/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x7e

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/flymexx/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    iput-object v2, p0, Lcom/android/flymexx/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x80

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    const-string/jumbo v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/flymexx/SecuritySettings;->launchConfirmProfileLockForUnification()V

    return-void

    :cond_2
    const/16 v0, 0x81

    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    const-string/jumbo v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/flymexx/SecuritySettings;->unifyLocks()V

    return-void

    :cond_3
    const/16 v0, 0x82

    if-ne p1, v0, :cond_4

    if-ne p2, v1, :cond_4

    invoke-direct {p0}, Lcom/android/flymexx/SecuritySettings;->ununifyLocks()V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/android/flymexx/SecuritySettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/flymexx/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/flymexx/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    iget-object v1, p0, Lcom/android/flymexx/SecuritySettings;->mToggleAppInstallation:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/SecuritySettings;->mToggleAppInstallation:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/flymexx/SecuritySettings;->MY_USER_ID:I

    invoke-static {v0, v1}, Lcom/android/flymexx/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/flymexx/ManagedLockPasswordProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mManagedPasswordProvider:Lcom/android/flymexx/ManagedLockPasswordProvider;

    const-string/jumbo v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mUm:Landroid/os/UserManager;

    new-instance v0, Lcom/android/flymexx/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/flymexx/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/flymexx/ChooseLockSettingsHelper;

    if-eqz p1, :cond_0

    const-string/jumbo v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method

.method public onGearClick(Lcom/android/flymexx/GearPreference;)V
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {p1}, Lcom/android/flymexx/GearPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/flymexx/SecuritySettings$SecuritySubSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/flymexx/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/flymexx/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/flymexx/ChooseLockSettingsHelper;

    invoke-virtual {v7}, Lcom/android/flymexx/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    const-string/jumbo v7, "visiblepattern_profile"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/flymexx/SecuritySettings;->mUm:Landroid/os/UserManager;

    iget v9, p0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    invoke-static {v7, v8, v9}, Lcom/android/flymexx/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v7

    if-eqz v7, :cond_0

    return v0

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget v8, p0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v4, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    :cond_1
    :goto_0
    return v5

    :cond_2
    const-string/jumbo v7, "unification"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v9, p0, Lcom/android/flymexx/SecuritySettings;->mUm:Landroid/os/UserManager;

    iget v10, p0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    invoke-static {v7, v9, v10}, Lcom/android/flymexx/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v7

    if-eqz v7, :cond_3

    return v0

    :cond_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/flymexx/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v7

    const/high16 v8, 0x10000

    if-lt v7, v8, :cond_4

    iget-object v7, p0, Lcom/android/flymexx/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowedToUnify(I)Z

    move-result v0

    :cond_4
    invoke-static {v0}, Lcom/android/flymexx/SecuritySettings$UnificationConfirmationDialog;->newIntance(Z)Lcom/android/flymexx/SecuritySettings$UnificationConfirmationDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string/jumbo v8, "unification_dialog"

    invoke-virtual {v1, v7, v8}, Lcom/android/flymexx/SecuritySettings$UnificationConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v9, 0x7f0c0457

    invoke-virtual {v7, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v2, Lcom/android/flymexx/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7, p0}, Lcom/android/flymexx/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    sget v7, Lcom/android/flymexx/SecuritySettings;->MY_USER_ID:I

    const/16 v9, 0x82

    invoke-virtual {v2, v9, v6, v8, v7}, Lcom/android/flymexx/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0}, Lcom/android/flymexx/SecuritySettings;->ununifyLocks()V

    goto :goto_0

    :cond_6
    const-string/jumbo v7, "show_password"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "show_password"

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    move v0, v8

    :cond_7
    invoke-static {v9, v10, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sget v8, Lcom/android/flymexx/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v4, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v7, "toggle_install_applications"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/flymexx/SecuritySettings;->mToggleAppInstallation:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {v7, v0}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/flymexx/SecuritySettings;->warnAppInstallation()V

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, v0}, Lcom/android/flymexx/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 9

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "com.android.flymexx.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0c0451

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/flymexx/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "unlock_set_or_change_profile"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/SecuritySettings;->mUm:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/flymexx/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "com.android.flymexx.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0c0452

    const/16 v4, 0x7f

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/flymexx/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "trust_agent"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v7, Lcom/android/flymexx/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/flymexx/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0, p0}, Lcom/android/flymexx/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-virtual {v7, v1, v0}, Lcom/android/flymexx/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/flymexx/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    iput-object v5, p0, Lcom/android/flymexx/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/flymexx/SecuritySettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/flymexx/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/flymexx/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/flymexx/SecuritySettings;->updateUnificationPreference()V

    iget-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mShowPassword:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mShowPassword:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/flymexx/SecuritySettings;->isPasswordVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mResetCredentials:Lcom/android/flymexxlib/RestrictedPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mResetCredentials:Lcom/android/flymexxlib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/android/flymexxlib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/flymexx/SecuritySettings;->mResetCredentials:Lcom/android/flymexxlib/RestrictedPreference;

    iget-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/flymexxlib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/flymexx/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/android/flymexx/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
