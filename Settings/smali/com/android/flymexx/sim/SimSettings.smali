.class public Lcom/android/flymexx/sim/SimSettings;
.super Lcom/android/flymexx/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/flymexx/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/sim/SimSettings$1;,
        Lcom/android/flymexx/sim/SimSettings$2;,
        Lcom/android/flymexx/sim/SimSettings$3;,
        Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;,
        Lcom/android/flymexx/sim/SimSettings$SimPreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAvailableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallState:[I

.field private mContext:Landroid/content/Context;

.field private mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

.field private mMobileNetwork:Landroid/support/v7/preference/PreferenceCategory;

.field private mNeedsUpdate:Z

.field private mNumSlots:I

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneCount:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSimCards:Landroid/support/v7/preference/PreferenceCategory;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mUiccProvisionStatus:[I


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/sim/SimSettings;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/sim/SimSettings;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings;->mCallState:[I

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/sim/SimSettings;)Lorg/codeaurora/internal/IExtTelephony;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/flymexx/sim/SimSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/flymexx/sim/SimSettings;->mPhoneCount:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/flymexx/sim/SimSettings;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/flymexx/sim/SimSettings;)Landroid/telephony/SubscriptionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/flymexx/sim/SimSettings;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings;->mUiccProvisionStatus:[I

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/flymexx/sim/SimSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/sim/SimSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/flymexx/sim/SimSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/flymexx/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/sim/SimSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/sim/SimSettings;->simEnablerUpdate()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/flymexx/sim/SimSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/sim/SimSettings;->updateCellularDataValues()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/flymexx/sim/SimSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/sim/SimSettings;->updateSubscriptions()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/flymexx/sim/SimSettings$2;

    invoke-direct {v0}, Lcom/android/flymexx/sim/SimSettings$2;-><init>()V

    sput-object v0, Lcom/android/flymexx/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/android/flymexx/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/flymexx/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    iput-object v1, p0, Lcom/android/flymexx/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/flymexx/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    iput-object v1, p0, Lcom/android/flymexx/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceCategory;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/flymexx/sim/SimSettings;->mPhoneCount:I

    iget v0, p0, Lcom/android/flymexx/sim/SimSettings;->mPhoneCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/flymexx/sim/SimSettings;->mCallState:[I

    iget v0, p0, Lcom/android/flymexx/sim/SimSettings;->mPhoneCount:I

    new-array v0, v0, [Landroid/telephony/PhoneStateListener;

    iput-object v0, p0, Lcom/android/flymexx/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iput-object v1, p0, Lcom/android/flymexx/sim/SimSettings;->mAlertDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/flymexx/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/sim/SimSettings;->mNeedsUpdate:Z

    iget v0, p0, Lcom/android/flymexx/sim/SimSettings;->mPhoneCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/flymexx/sim/SimSettings;->mUiccProvisionStatus:[I

    new-instance v0, Lcom/android/flymexx/sim/SimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/sim/SimSettings$1;-><init>(Lcom/android/flymexx/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v0, Lcom/android/flymexx/sim/SimSettings$3;

    invoke-direct {v0, p0}, Lcom/android/flymexx/sim/SimSettings$3;-><init>(Lcom/android/flymexx/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/sim/SimSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 3

    move v0, p1

    iget-object v1, p0, Lcom/android/flymexx/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/flymexx/sim/SimSettings$4;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/flymexx/sim/SimSettings$4;-><init>(Lcom/android/flymexx/sim/SimSettings;II)V

    aput-object v2, v1, p1

    iget-object v1, p0, Lcom/android/flymexx/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, p1

    return-object v1
.end method

.method private isCallStateIdle()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/flymexx/sim/SimSettings;->mCallState:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/flymexx/sim/SimSettings;->mCallState:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "SimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCallStateIdle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private simEnablerUpdate()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/sim/SimSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/flymexx/sim/SimSettings;->updateAllOptions()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexx/sim/SimSettings;->mNeedsUpdate:Z

    goto :goto_0
.end method

.method private updateActivitesCategory()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/sim/SimSettings;->updateCellularDataValues()V

    invoke-direct {p0}, Lcom/android/flymexx/sim/SimSettings;->updateCallValues()V

    invoke-direct {p0}, Lcom/android/flymexx/sim/SimSettings;->updateSmsValues()V

    return-void
.end method

.method private updateAllOptions()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/sim/SimSettings;->updateSimSlotValues()V

    invoke-direct {p0}, Lcom/android/flymexx/sim/SimSettings;->updateActivitesCategory()V

    return-void
.end method

.method private updateCallValues()V
    .locals 8

    const/4 v6, 0x1

    const-string/jumbo v5, "sim_calls"

    invoke-virtual {p0, v5}, Lcom/android/flymexx/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iget-object v5, p0, Lcom/android/flymexx/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    const v5, 0x7f0c03c8

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v4, v2}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/android/flymexx/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0c0c05

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private updateCellularDataValues()V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v6, "sim_cellular_data"

    invoke-virtual {p0, v6}, Lcom/android/flymexx/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iget-object v6, p0, Lcom/android/flymexx/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    const v6, 0x7f0c03c7

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    invoke-direct {p0}, Lcom/android/flymexx/sim/SimSettings;->isCallStateIdle()Z

    move-result v0

    const-string/jumbo v6, "ril.cdma.inecmmode"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/flymexx/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    if-nez v3, :cond_1

    const v6, 0x7f0c0c06

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/flymexx/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v5, :cond_4

    if-eqz v0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    :goto_2
    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_2
.end method

.method private updateSimSlotValues()V
    .locals 4

    iget-object v3, p0, Lcom/android/flymexx/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/flymexx/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    instance-of v3, v1, Lcom/android/flymexx/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/android/flymexx/sim/SimSettings$SimPreference;

    invoke-virtual {v1}, Lcom/android/flymexx/sim/SimSettings$SimPreference;->update()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSmsValues()V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v4, "sim_sms"

    invoke-virtual {p0, v4}, Lcom/android/flymexx/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    const v4, 0x7f0c03c9

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    if-nez v1, :cond_0

    const v4, 0x7f0c0c06

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v2, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method private updateSubscriptions()V
    .locals 12

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v7, p0, Lcom/android/flymexx/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/flymexx/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    iget v7, p0, Lcom/android/flymexx/sim/SimSettings;->mNumSlots:I

    if-ge v0, v7, :cond_1

    iget-object v7, p0, Lcom/android/flymexx/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceCategory;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sim"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    instance-of v7, v3, Lcom/android/flymexx/sim/SimSettings$SimPreference;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/flymexx/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v7, v3}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/flymexx/sim/SimSettings;->mMobileNetwork:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    iget-object v7, p0, Lcom/android/flymexx/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    iget-object v7, p0, Lcom/android/flymexx/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_1
    iget v7, p0, Lcom/android/flymexx/sim/SimSettings;->mNumSlots:I

    if-ge v0, v7, :cond_5

    iget-object v7, p0, Lcom/android/flymexx/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v7, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    :goto_2
    new-instance v4, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/sim/SimSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, p0, v7, v5, v0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;-><init>(Lcom/android/flymexx/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V

    iget v7, p0, Lcom/android/flymexx/sim/SimSettings;->mNumSlots:I

    sub-int v7, v0, v7

    invoke-virtual {v4, v7}, Lcom/android/flymexx/sim/SimSettings$SimPreference;->setOrder(I)V

    iget-object v7, p0, Lcom/android/flymexx/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v7, v4}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v7, p0, Lcom/android/flymexx/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_2

    iget-object v7, p0, Lcom/android/flymexx/sim/SimSettings;->mUiccProvisionStatus:[I

    aget v7, v7, v0

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/flymexx/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v7, Landroid/content/ComponentName;

    const-string/jumbo v10, "com.android.phone"

    const-string/jumbo v11, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v7, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {v1, v0, v6}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    new-instance v2, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    new-array v7, v8, [Ljava/lang/Object;

    add-int/lit8 v10, v0, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const v10, 0x7f0c028a

    invoke-virtual {p0, v10, v7}, Lcom/android/flymexx/sim/SimSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    move v7, v8

    :goto_3
    invoke-virtual {v2, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/flymexx/sim/SimSettings;->mMobileNetwork:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v7, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, -0x1

    goto :goto_2

    :cond_4
    move v7, v9

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/android/flymexx/sim/SimSettings;->updateAllOptions()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x58

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/RestrictedSettingsFragment;->onAttach(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/android/flymexx/sim/SimSettings;->mNeedsUpdate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/sim/SimSettings;->mNeedsUpdate:Z

    invoke-direct {p0}, Lcom/android/flymexx/sim/SimSettings;->updateAllOptions()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/flymexx/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/flymexx/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Lcom/android/flymexx/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "extphone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/sim/SimSettings;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    const v2, 0x7f080062

    invoke-virtual {p0, v2}, Lcom/android/flymexx/sim/SimSettings;->addPreferencesFromResource(I)V

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    iput v2, p0, Lcom/android/flymexx/sim/SimSettings;->mNumSlots:I

    const-string/jumbo v2, "sim_cards"

    invoke-virtual {p0, v2}, Lcom/android/flymexx/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/flymexx/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v2, "mobile_network"

    invoke-virtual {p0, v2}, Lcom/android/flymexx/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/flymexx/sim/SimSettings;->mMobileNetwork:Landroid/support/v7/preference/PreferenceCategory;

    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/flymexx/sim/SimSettings;->mNumSlots:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/flymexx/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/flymexx/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/flymexx/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/flymexx/sim/SimSelectNotification;->cancelNotification(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/flymexx/sim/SimSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/flymexx/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/flymexx/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string/jumbo v0, "SimSettings"

    const-string/jumbo v1, "on onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/flymexx/RestrictedSettingsFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/flymexx/RestrictedSettingsFragment;->onPause()V

    iget-object v3, p0, Lcom/android/flymexx/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/flymexx/sim/SimSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/android/flymexx/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/flymexx/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/flymexx/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v3, p0, Lcom/android/flymexx/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v5, v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/flymexx/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/flymexx/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    instance-of v3, v1, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;

    if-eqz v3, :cond_2

    check-cast v1, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {v1}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->cleanUpPendingDialogs()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/flymexx/sim/SimDialogActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    instance-of v3, p1, Lcom/android/flymexx/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/flymexx/sim/SimPreferenceDialog;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "slot_id"

    check-cast p1, Lcom/android/flymexx/sim/SimSettings$SimPreference;

    invoke-static {p1}, Lcom/android/flymexx/sim/SimSettings$SimPreference;->-wrap0(Lcom/android/flymexx/sim/SimSettings$SimPreference;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/flymexx/sim/SimSettings;->startActivity(Landroid/content/Intent;)V

    return v5

    :cond_0
    const-string/jumbo v3, "sim_cellular_data"

    invoke-virtual {p0, v3}, Lcom/android/flymexx/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-ne v3, p1, :cond_1

    sget-object v3, Lcom/android/flymexx/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v5

    :cond_1
    const-string/jumbo v3, "sim_calls"

    invoke-virtual {p0, v3}, Lcom/android/flymexx/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-ne v3, p1, :cond_2

    sget-object v3, Lcom/android/flymexx/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v5

    :cond_2
    const-string/jumbo v3, "sim_sms"

    invoke-virtual {p0, v3}, Lcom/android/flymexx/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-ne v3, p1, :cond_3

    sget-object v3, Lcom/android/flymexx/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v5

    :cond_3
    return v4
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/flymexx/RestrictedSettingsFragment;->onResume()V

    iget-object v3, p0, Lcom/android/flymexx/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    invoke-direct {p0}, Lcom/android/flymexx/sim/SimSettings;->updateSubscriptions()V

    invoke-virtual {p0}, Lcom/android/flymexx/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/flymexx/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    const-string/jumbo v3, "SimSettings"

    const-string/jumbo v4, "Register for call state change"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/android/flymexx/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/flymexx/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/flymexx/sim/SimSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
