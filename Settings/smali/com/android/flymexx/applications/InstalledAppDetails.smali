.class public Lcom/android/flymexx/applications/InstalledAppDetails;
.super Lcom/android/flymexx/applications/AppInfoBase;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/applications/InstalledAppDetails$1;,
        Lcom/android/flymexx/applications/InstalledAppDetails$2;,
        Lcom/android/flymexx/applications/InstalledAppDetails$3;,
        Lcom/android/flymexx/applications/InstalledAppDetails$BatteryUpdater;,
        Lcom/android/flymexx/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;,
        Lcom/android/flymexx/applications/InstalledAppDetails$ToggleProtectedAppComponents;
    }
.end annotation


# instance fields
.field private final mBackend:Lcom/android/flymexx/notification/NotificationBackend;

.field private mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryPreference:Landroid/support/v7/preference/Preference;

.field private mChartData:Lcom/android/flymexxlib/net/ChartData;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private final mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/flymexxlib/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mDataPreference:Landroid/support/v7/preference/Preference;

.field private mDisableAfterUninstall:Z

.field private mForceStopButton:Landroid/widget/Button;

.field private mHeader:Lcom/android/flymexx/applications/LayoutPreference;

.field private final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mLaunchPreference:Landroid/support/v7/preference/Preference;

.field private mMemoryPreference:Landroid/support/v7/preference/Preference;

.field private mNotificationPreference:Landroid/support/v7/preference/Preference;

.field private final mPermissionCallback:Lcom/android/flymexx/applications/PermissionsSummaryHelper$PermissionsResultCallback;

.field private mPermissionsPreference:Landroid/support/v7/preference/Preference;

.field private mShowUninstalled:Z

.field private mSipper:Lcom/android/internal/os/BatterySipper;

.field protected mStats:Lcom/android/flymexx/applications/ProcStatsPackageEntry;

.field protected mStatsManager:Lcom/android/flymexx/applications/ProcStatsData;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStoragePreference:Landroid/support/v7/preference/Preference;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/applications/InstalledAppDetails;)Lcom/android/internal/os/BatteryStatsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mDataPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/flymexx/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/flymexx/applications/InstalledAppDetails;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/flymexx/applications/InstalledAppDetails;Lcom/android/flymexxlib/net/ChartData;)Lcom/android/flymexxlib/net/ChartData;
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mChartData:Lcom/android/flymexxlib/net/ChartData;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/flymexx/applications/InstalledAppDetails;Lcom/android/internal/os/BatterySipper;)Lcom/android/internal/os/BatterySipper;
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/applications/InstalledAppDetails;)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getDataSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/flymexx/applications/InstalledAppDetails;Ljava/lang/Class;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/flymexx/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/flymexx/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/flymexx/applications/InstalledAppDetails;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/applications/AppInfoBase;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    new-instance v0, Lcom/android/flymexx/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/flymexx/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mBackend:Lcom/android/flymexx/notification/NotificationBackend;

    new-instance v0, Lcom/android/flymexx/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/applications/InstalledAppDetails$1;-><init>(Lcom/android/flymexx/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/flymexx/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/flymexx/applications/InstalledAppDetails$2;-><init>(Lcom/android/flymexx/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/flymexx/applications/InstalledAppDetails$3;

    invoke-direct {v0, p0}, Lcom/android/flymexx/applications/InstalledAppDetails$3;-><init>(Lcom/android/flymexx/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPermissionCallback:Lcom/android/flymexx/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    return-void
.end method

.method private addAppInstallerInfoPref(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-nez v3, :cond_0

    return-void

    :catch_0
    move-exception v1

    sget-object v7, Lcom/android/flymexx/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception while retrieving the package installer of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/android/flymexx/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0c085f

    invoke-virtual {v0, v7}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    new-instance v5, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0c0860

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    const-string/jumbo v7, "app_info_store"

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v10

    const v8, 0x7f0c0861

    invoke-virtual {p0, v8, v7}, Lcom/android/flymexx/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.SHOW_APP_INFO"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/flymexx/applications/InstalledAppDetails;->resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string/jumbo v7, "android.intent.extra.PACKAGE_NAME"

    iget-object v8, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_1
    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void

    :cond_2
    invoke-virtual {v5, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private addDynamicPrefs()V
    .locals 11

    const v5, 0x7f0c0d2f

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/flymexx/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/applications/DefaultHomePreference;->hasHomePreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/flymexx/applications/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/flymexx/applications/AdvancedAppSettings;

    const-string/jumbo v3, "default_home"

    const v4, 0x7f0c0e27

    invoke-direct/range {v0 .. v5}, Lcom/android/flymexx/applications/ShortcutPreference;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;II)V

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/applications/DefaultBrowserPreference;->hasBrowserPreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/flymexx/applications/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/flymexx/applications/AdvancedAppSettings;

    const-string/jumbo v3, "default_browser"

    const v4, 0x7f0c0d49

    invoke-direct/range {v0 .. v5}, Lcom/android/flymexx/applications/ShortcutPreference;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;II)V

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/applications/DefaultPhonePreference;->hasPhonePreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/flymexx/applications/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/flymexx/applications/AdvancedAppSettings;

    const-string/jumbo v3, "default_phone_app"

    const v4, 0x7f0c0d4b

    invoke-direct/range {v0 .. v5}, Lcom/android/flymexx/applications/ShortcutPreference;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;II)V

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/applications/DefaultEmergencyPreference;->hasEmergencyPreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/flymexx/applications/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/flymexx/applications/AdvancedAppSettings;

    const-string/jumbo v3, "default_emergency_app"

    const v4, 0x7f0c081d

    invoke-direct/range {v0 .. v5}, Lcom/android/flymexx/applications/ShortcutPreference;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;II)V

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_4
    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/applications/DefaultSmsPreference;->hasSmsPreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/flymexx/applications/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/flymexx/applications/AdvancedAppSettings;

    const-string/jumbo v3, "default_sms_app"

    const v4, 0x7f0c076a

    invoke-direct/range {v0 .. v5}, Lcom/android/flymexx/applications/ShortcutPreference;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;II)V

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    const-string/jumbo v0, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-direct {p0, v0}, Lcom/android/flymexx/applications/InstalledAppDetails;->hasPermission(Ljava/lang/String;)Z

    move-result v7

    const-string/jumbo v0, "android.permission.WRITE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/android/flymexx/applications/InstalledAppDetails;->hasPermission(Ljava/lang/String;)Z

    move-result v8

    if-nez v7, :cond_6

    if-eqz v8, :cond_8

    :cond_6
    new-instance v6, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0d2e

    invoke-virtual {v6, v0}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {v10, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    if-eqz v7, :cond_7

    new-instance v9, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0da9

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    const-string/jumbo v0, "system_alert_window"

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance v0, Lcom/android/flymexx/applications/InstalledAppDetails$8;

    invoke-direct {v0, p0}, Lcom/android/flymexx/applications/InstalledAppDetails$8;-><init>(Lcom/android/flymexx/applications/InstalledAppDetails;)V

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_7
    if-eqz v8, :cond_8

    new-instance v9, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0db7

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    const-string/jumbo v0, "write_settings_apps"

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance v0, Lcom/android/flymexx/applications/InstalledAppDetails$9;

    invoke-direct {v0, p0}, Lcom/android/flymexx/applications/InstalledAppDetails$9;-><init>(Lcom/android/flymexx/applications/InstalledAppDetails;)V

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_8
    invoke-direct {p0, v10}, Lcom/android/flymexx/applications/InstalledAppDetails;->addAppInstallerInfoPref(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method private checkForceStop()V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v6}, Lcom/android/flymexx/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    invoke-direct {p0, v5}, Lcom/android/flymexx/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string/jumbo v2, "package"

    iget-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mState:Lcom/android/flymexxlib/applications/ApplicationsState;

    invoke-virtual {v3, p1, v2}, Lcom/android/flymexxlib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mState:Lcom/android/flymexxlib/applications/ApplicationsState;

    invoke-virtual {v3, p1, v2}, Lcom/android/flymexxlib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    :cond_0
    invoke-direct {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->checkForceStop()V

    return-void
.end method

.method private getDataSummary()Ljava/lang/CharSequence;
    .locals 7

    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mChartData:Lcom/android/flymexxlib/net/ChartData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mChartData:Lcom/android/flymexxlib/net/ChartData;

    iget-object v1, v1, Lcom/android/flymexxlib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const v1, 0x7f0c0d9a

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    iget-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mChartData:Lcom/android/flymexxlib/net/ChartData;

    iget-object v4, v4, Lcom/android/flymexxlib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v4

    const v6, 0x10010

    invoke-static {v0, v4, v5, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const v4, 0x7f0c0d15

    invoke-virtual {p0, v4, v1}, Lcom/android/flymexx/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const v1, 0x7f0c0843

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNotificationSummary(Lcom/android/flymexx/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "show_importance_slider"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_4

    const/4 v3, 0x1

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v3, :cond_5

    iget v6, p0, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->appImportance:I

    const/16 v7, -0x3e8

    if-eq v6, v7, :cond_0

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->appImportance:I

    invoke-static {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToLevel(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f0c0d21

    invoke-virtual {p1, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v6, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v6, p0, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->appVisOverride:I

    if-nez v6, :cond_7

    const v6, 0x7f0c0d1d

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    iget-boolean v6, p0, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->appBypassDnd:Z

    if-eqz v6, :cond_2

    const v6, 0x7f0c0d1f

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_8

    if-lez v1, :cond_3

    const v6, 0x7f0c0d20

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    iget-boolean v6, p0, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v6, :cond_6

    const v6, 0x7f0c0d1b

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget v6, p0, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->appImportance:I

    if-lez v6, :cond_0

    iget v6, p0, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->appImportance:I

    const/4 v7, 0x3

    if-ge v6, v7, :cond_0

    const v6, 0x7f0c0d1c

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iget v6, p0, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->appVisOverride:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    const v6, 0x7f0c0d1e

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getNotificationSummary(Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/flymexx/notification/NotificationBackend;)Ljava/lang/CharSequence;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p1, v1, v2}, Lcom/android/flymexx/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/flymexx/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/flymexx/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;
    .locals 1

    invoke-static {p0}, Lcom/android/flymexx/datausage/DataUsageList;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/flymexx/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 5

    const v4, 0x7f0c080e

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v1, v2, v3}, Lcom/android/flymexx/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->isDisabledUntilUsed()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const v1, 0x7f0c080f

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleHeader()V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v4, "header_view"

    invoke-virtual {p0, v4}, Lcom/android/flymexx/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/flymexx/applications/LayoutPreference;

    iput-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mHeader:Lcom/android/flymexx/applications/LayoutPreference;

    iget-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mHeader:Lcom/android/flymexx/applications/LayoutPreference;

    const v5, 0x7f110154

    invoke-virtual {v4, v5}, Lcom/android/flymexx/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f110295

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v5, 0x7f0c0805

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    const v4, 0x7f110293

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mHeader:Lcom/android/flymexx/applications/LayoutPreference;

    const v5, 0x7f110153

    invoke-virtual {v4, v5}, Lcom/android/flymexx/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/android/flymexx/applications/InstalledAppDetails;->resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Lcom/android/flymexx/applications/InstalledAppDetails$4;

    invoke-direct {v4, p0, v3}, Lcom/android/flymexx/applications/InstalledAppDetails$4;-><init>(Lcom/android/flymexx/applications/InstalledAppDetails;Landroid/content/Intent;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private initUninstallButtons()V
    .locals 9

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    move v4, v6

    :cond_0
    const/4 v2, 0x1

    if-eqz v4, :cond_a

    iget-object v7, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-direct {p0, v7}, Lcom/android/flymexx/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v2

    :goto_0
    if-eqz v4, :cond_1

    iget-object v7, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v8, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v2, 0x0

    :cond_1
    iget-object v7, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/flymexx/applications/InstalledAppDetails;->isProfileOrDeviceOwner(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/flymexx/Utils;->isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v2, 0x0

    :cond_3
    iget-object v7, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v8, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/admin/DevicePolicyManager;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v2, 0x0

    :cond_4
    if-eqz v2, :cond_5

    iget-object v7, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v8, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v4, :cond_c

    const/4 v2, 0x0

    :cond_5
    :goto_1
    iget-boolean v6, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    if-eqz v6, :cond_6

    const/4 v2, 0x0

    :cond_6
    :try_start_0
    const-string/jumbo v6, "webviewupdate"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/webkit/IWebViewUpdateService;->isFallbackPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_7

    const/4 v2, 0x0

    :cond_7
    iget-object v6, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->protect:Z

    if-eqz v6, :cond_8

    const/4 v2, 0x0

    :cond_8
    iget-object v6, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v2, :cond_9

    iget-object v6, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void

    :cond_a
    iget-object v7, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x800000

    and-int/2addr v7, v8

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_b

    const/4 v2, 0x0

    :cond_b
    iget-object v7, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v8, 0x7f0c080b

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v7, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-le v7, v6, :cond_d

    const/4 v2, 0x1

    goto :goto_1

    :cond_d
    const/4 v2, 0x0

    goto :goto_1

    :cond_e
    iget-object v6, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v2, 0x0

    goto :goto_1

    :cond_f
    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private isDisabledUntilUsed()Z
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProfileOrDeviceOwner(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v7

    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v7

    :cond_2
    const/4 v5, 0x0

    return v5
.end method

.method private isSingleUser()Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserCount()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mHeader:Lcom/android/flymexx/applications/LayoutPreference;

    const v3, 0x7f110152

    invoke-virtual {v2, v3}, Lcom/android/flymexx/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mState:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v2, v3}, Lcom/android/flymexxlib/applications/ApplicationsState;->ensureIcon(Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)V

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :cond_0
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/flymexx/applications/InstalledAppDetails;->setupAppSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method public static setupAppSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 10

    const/16 v7, 0x8

    const/4 v9, 0x0

    const v6, 0x1020018

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f04002a

    invoke-virtual {v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v6, 0x1020006

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v6, 0x1020016

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f110080

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v6, 0x7f110081

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p4, :cond_0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const v8, 0x7f0c0846

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    :cond_0
    return v3
.end method

.method private startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    invoke-static {p1, p2, p0, v0}, Lcom/android/flymexx/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;Lcom/android/flymexx/SettingsPreferenceFragment;Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)V

    return-void
.end method

.method public static startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;Lcom/android/flymexx/SettingsPreferenceFragment;Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/CharSequence;",
            "Lcom/android/flymexx/SettingsPreferenceFragment;",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "package"

    iget-object v3, p3, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "uid"

    iget-object v3, p3, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "hideInfoButton"

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Lcom/android/flymexx/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/flymexx/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method private startManagePermissionsActivity()V
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.extra.PACKAGE_NAME"

    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "hideInfoButton"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "InstalledAppDetails"

    const-string/jumbo v3, "No app can handle android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->stopListeningToPackageRemove()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/flymexx/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean p3, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    return-void
.end method

.method private updateBattery()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v4

    div-double/2addr v2, v4

    int-to-double v4, v0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f0c0d68

    invoke-virtual {p0, v4, v3}, Lcom/android/flymexx/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    const v3, 0x7f0c0d69

    invoke-virtual {p0, v3}, Lcom/android/flymexx/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDynamicPrefs()V
    .locals 5

    const v3, 0x7f0c02e0

    const v2, 0x7f0c02df

    const-string/jumbo v1, "default_home"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/flymexx/applications/DefaultHomePreference;->isHomeDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :cond_0
    const-string/jumbo v1, "default_browser"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/flymexx/applications/DefaultBrowserPreference;->isBrowserDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :cond_1
    const-string/jumbo v1, "default_phone_app"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/flymexx/applications/DefaultPhonePreference;->isPhoneDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :cond_2
    const-string/jumbo v1, "default_emergency_app"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/flymexx/applications/DefaultEmergencyPreference;->isEmergencyDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :cond_3
    const-string/jumbo v1, "default_sms_app"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/flymexx/applications/DefaultSmsPreference;->isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_4
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :cond_4
    const-string/jumbo v1, "system_alert_window"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/flymexx/applications/DrawOverlayDetails;->getSummary(Landroid/content/Context;Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    const-string/jumbo v1, "write_settings_apps"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/flymexx/applications/WriteSettingsDetails;->getSummary(Landroid/content/Context;Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    return-void

    :cond_7
    move v1, v3

    goto/16 :goto_0

    :cond_8
    move v1, v3

    goto :goto_1

    :cond_9
    move v1, v3

    goto :goto_2

    :cond_a
    move v1, v3

    goto :goto_3

    :cond_b
    move v2, v3

    goto :goto_4
.end method

.method private updateForceStopButton(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 6

    const v5, 0x7f0c085a

    const v2, 0x7f0c0859

    const v4, 0x7f0c0834

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    return-object v3

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/flymexx/applications/InstalledAppDetails$5;

    invoke-direct {v1, p0}, Lcom/android/flymexx/applications/InstalledAppDetails$5;-><init>(Lcom/android/flymexx/applications/InstalledAppDetails;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/flymexx/applications/InstalledAppDetails$6;

    invoke-direct {v1, p0}, Lcom/android/flymexx/applications/InstalledAppDetails$6;-><init>(Lcom/android/flymexx/applications/InstalledAppDetails;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0852

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0853

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/flymexx/applications/InstalledAppDetails$7;

    invoke-direct {v1, p0}, Lcom/android/flymexx/applications/InstalledAppDetails$7;-><init>(Lcom/android/flymexx/applications/InstalledAppDetails;)V

    const v2, 0x7f0c0833

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/flymexx/applications/AppInfoBase;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->handleHeader()V

    const-string/jumbo v0, "notification_settings"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mNotificationPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mNotificationPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "storage_settings"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mStoragePreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mStoragePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "permission_settings"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "data_settings"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mDataPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mDataPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mDataPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    const-string/jumbo v0, "battery"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "memory"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "preferred_settings"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/flymexx/applications/AppInfoBase;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-ne p1, v6, :cond_0

    packed-switch p2, :pswitch_data_1

    :cond_0
    :goto_1
    :pswitch_0
    return-void

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    new-instance v2, Lcom/android/flymexx/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, p0, v0, v6}, Lcom/android/flymexx/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/flymexx/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v3, v5, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/flymexx/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v5, v5}, Lcom/android/flymexx/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->startListeningToPackageRemove()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/android/flymexx/applications/InstalledAppDetails$ToggleProtectedAppComponents;

    invoke-direct {v0, p0, v1}, Lcom/android/flymexx/applications/InstalledAppDetails$ToggleProtectedAppComponents;-><init>(Lcom/android/flymexx/applications/InstalledAppDetails;Lcom/android/flymexx/applications/InstalledAppDetails$ToggleProtectedAppComponents;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/applications/InstalledAppDetails$ToggleProtectedAppComponents;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    if-nez v6, :cond_0

    invoke-virtual {p0, v9, v9}, Lcom/android/flymexx/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_b

    iget-object v6, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->stopListeningToPackageRemove()V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/flymexx/DeviceAdminAdd;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v5, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    iget-object v6, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mUserId:I

    invoke-static {v6, v2, v7}, Lcom/android/flymexxlib/RestrictedLockUtils;->checkIfUninstallBlocked(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iget-boolean v6, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mUserId:I

    invoke-static {v6, v2, v7}, Lcom/android/flymexxlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v3, :cond_6

    :cond_2
    iget-object v6, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_3

    invoke-direct {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->isDisabledUntilUsed()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_3
    new-instance v6, Lcom/android/flymexx/applications/InstalledAppDetails$DisableChanger;

    iget-object v7, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/flymexx/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/flymexx/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v7, v9, [Ljava/lang/Object;

    check-cast v5, Ljava/lang/Object;

    aput-object v5, v7, v8

    invoke-virtual {v6, v7}, Lcom/android/flymexx/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    :goto_1
    return-void

    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/flymexxlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    :cond_7
    iget-boolean v5, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v5, :cond_8

    invoke-direct {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->isSingleUser()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x3

    invoke-virtual {p0, v5, v8}, Lcom/android/flymexx/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_1

    :cond_8
    const/4 v5, 0x2

    invoke-virtual {p0, v5, v8}, Lcom/android/flymexx/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_1

    :cond_9
    iget-object v5, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x800000

    and-int/2addr v5, v6

    if-nez v5, :cond_a

    invoke-direct {p0, v2, v9, v8}, Lcom/android/flymexx/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_a
    invoke-direct {p0, v2, v8, v8}, Lcom/android/flymexx/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_b
    iget-object v5, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v5, :cond_4

    iget-object v5, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    if-eqz v5, :cond_d

    :cond_c
    invoke-virtual {p0, v9, v8}, Lcom/android/flymexx/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v5, v6}, Lcom/android/flymexxlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/flymexx/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/android/flymexx/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    const v2, 0x7f080032

    invoke-virtual {p0, v2}, Lcom/android/flymexx/applications/InstalledAppDetails;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->addDynamicPrefs()V

    invoke-static {}, Lcom/android/flymexx/Utils;->isBandwidthControlEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "netstats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    const-string/jumbo v2, "data_settings"

    invoke-virtual {p0, v2}, Lcom/android/flymexx/applications/InstalledAppDetails;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    const v1, 0x7f0c0811

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0c080c

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x3

    const v1, 0x7f0c024e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    invoke-super {p0}, Lcom/android/flymexx/applications/AppInfoBase;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/flymexx/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return v2

    :pswitch_1
    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v3}, Lcom/android/flymexx/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return v2

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/flymexx/applications/LockPatternActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/flymexx/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPackageRemoved()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->finishActivity(I)V

    invoke-super {p0}, Lcom/android/flymexx/applications/AppInfoBase;->onPackageRemoved()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    invoke-super {p0}, Lcom/android/flymexx/applications/AppInfoBase;->onPause()V

    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mStoragePreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    const-class v0, Lcom/android/flymexx/applications/AppStorageSettings;

    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mStoragePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/flymexx/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    :goto_0
    return v4

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mNotificationPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    const-class v0, Lcom/android/flymexx/notification/AppNotificationSettings;

    const v1, 0x7f0c0c72

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/flymexx/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->startManagePermissionsActivity()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_3

    const-class v0, Lcom/android/flymexx/applications/AppLaunchSettings;

    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/flymexx/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mStatsManager:Lcom/android/flymexx/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/flymexx/applications/ProcStatsData;->getMemInfo()Lcom/android/flymexx/applications/ProcStatsData$MemInfo;

    move-result-object v1

    iget-object v5, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mStats:Lcom/android/flymexx/applications/ProcStatsPackageEntry;

    invoke-static {v0, v1, v5, v2}, Lcom/android/flymexx/applications/ProcessStatsBase;->launchMemoryDetail(Lcom/android/flymexx/SettingsActivity;Lcom/android/flymexx/applications/ProcStatsData$MemInfo;Lcom/android/flymexx/applications/ProcStatsPackageEntry;Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mDataPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_5

    const-class v0, Lcom/android/flymexx/datausage/AppDataUsage;

    const v1, 0x7f0c0d14

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/flymexx/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_6

    new-instance v3, Lcom/android/flymexx/fuelgauge/BatteryEntry;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    const/4 v6, 0x0

    invoke-direct {v3, v0, v6, v1, v5}, Lcom/android/flymexx/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/android/flymexx/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Lcom/android/flymexx/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/flymexx/fuelgauge/BatteryEntry;ZZ)V

    goto :goto_0

    :cond_6
    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v2, :cond_6

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_c

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    if-eqz v2, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v2, v1, v3}, Lcom/android/flymexxlib/RestrictedLockUtils;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_4
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->protect:Z

    :cond_5
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_6
    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    if-nez v2, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const/4 v0, 0x0

    goto :goto_0

    :cond_a
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v0, 0x0

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v6, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    move v2, v4

    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/flymexx/applications/AppInfoBase;->onResume()V

    iget-boolean v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mState:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/flymexxlib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/flymexxlib/AppItem;

    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v0, v1}, Lcom/android/flymexxlib/AppItem;-><init>(I)V

    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/AppItem;->addUid(I)V

    iget-object v1, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/flymexx/applications/InstalledAppDetails;->getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/flymexxlib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/flymexxlib/AppItem;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_1
    new-instance v1, Lcom/android/flymexx/applications/InstalledAppDetails$BatteryUpdater;

    invoke-direct {v1, p0, v5}, Lcom/android/flymexx/applications/InstalledAppDetails$BatteryUpdater;-><init>(Lcom/android/flymexx/applications/InstalledAppDetails;Lcom/android/flymexx/applications/InstalledAppDetails$BatteryUpdater;)V

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/flymexx/applications/InstalledAppDetails$BatteryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v1, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;

    invoke-direct {v1, p0, v5}, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;-><init>(Lcom/android/flymexx/applications/InstalledAppDetails;Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;)V

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/flymexx/applications/InstalledAppDetails$MemoryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->updateDynamicPrefs()V

    return-void
.end method

.method protected refreshUi()Z
    .locals 13

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    iget-object v9, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    if-nez v9, :cond_0

    const/4 v9, 0x0

    return v9

    :cond_0
    iget-object v9, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v9, :cond_1

    const/4 v9, 0x0

    return v9

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v4}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    iget-object v9, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_2

    const-string/jumbo v9, "android.app.home.alternate"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/android/flymexx/applications/InstalledAppDetails;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->checkForceStop()V

    iget-object v9, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v9}, Lcom/android/flymexx/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    invoke-direct {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->initUninstallButtons()V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v9, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mStoragePreference:Landroid/support/v7/preference/Preference;

    iget-object v10, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    invoke-static {v10, v2}, Lcom/android/flymexx/applications/AppStorageSettings;->getSummary(Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPermissionCallback:Lcom/android/flymexx/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-static {v9, v10, v11}, Lcom/android/flymexx/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/flymexx/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V

    iget-object v9, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    iget-object v10, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v11, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object v12, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v10, v11, v12, v2}, Lcom/android/flymexxlib/applications/AppUtils;->getLaunchByDefaultSummary(Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;Landroid/hardware/usb/IUsbManager;Landroid/content/pm/PackageManager;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mNotificationPreference:Landroid/support/v7/preference/Preference;

    iget-object v10, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v11, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mBackend:Lcom/android/flymexx/notification/NotificationBackend;

    invoke-static {v10, v2, v11}, Lcom/android/flymexx/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/flymexx/notification/NotificationBackend;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mDataPreference:Landroid/support/v7/preference/Preference;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mDataPreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->getDataSummary()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-direct {p0}, Lcom/android/flymexx/applications/InstalledAppDetails;->updateBattery()V

    iget-boolean v9, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mInitialized:Z

    if-nez v9, :cond_7

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mInitialized:Z

    iget-object v9, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-nez v9, :cond_6

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mShowUninstalled:Z

    :cond_5
    const/4 v9, 0x1

    return v9

    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    :cond_7
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v10, v10, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v11, 0x2200

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v9, p0, Lcom/android/flymexx/applications/InstalledAppDetails;->mShowUninstalled:Z

    if-nez v9, :cond_5

    iget v9, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_2
    return v9

    :cond_8
    const/4 v9, 0x0

    goto :goto_2

    :catch_0
    move-exception v3

    const/4 v9, 0x0

    return v9
.end method
