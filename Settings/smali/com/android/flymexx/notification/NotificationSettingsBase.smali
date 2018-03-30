.class public abstract Lcom/android/flymexx/notification/NotificationSettingsBase;
.super Lcom/android/flymexx/SettingsPreferenceFragment;
.source "NotificationSettingsBase.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field protected final mBackend:Lcom/android/flymexx/notification/NotificationBackend;

.field protected mBlock:Lcom/android/flymexxlib/RestrictedSwitchPreference;

.field protected mContext:Landroid/content/Context;

.field protected mCreated:Z

.field protected mImportance:Lcom/android/flymexx/notification/ImportanceSeekBarPreference;

.field protected mPkg:Ljava/lang/String;

.field protected mPkgInfo:Landroid/content/pm/PackageInfo;

.field protected mPm:Landroid/content/pm/PackageManager;

.field protected mPriority:Lcom/android/flymexxlib/RestrictedSwitchPreference;

.field protected mShowSlider:Z

.field protected mSilent:Lcom/android/flymexxlib/RestrictedSwitchPreference;

.field protected mSoundTimeout:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

.field protected mSuspendedAppsAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

.field protected mUid:I

.field protected mUm:Landroid/os/UserManager;

.field protected mUserId:I

.field protected mVisibilityOverride:Lcom/android/flymexx/notification/RestrictedDropDownPreference;


# direct methods
.method static synthetic -wrap0(Lcom/android/flymexx/notification/NotificationSettingsBase;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getGlobalVisibility()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/notification/NotificationSettingsBase;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/notification/NotificationSettingsBase;->updateSoundTimeoutSummary(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "NotifiSettingsBase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/flymexx/notification/NotificationSettingsBase;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/flymexx/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/flymexx/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mBackend:Lcom/android/flymexx/notification/NotificationBackend;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mShowSlider:Z

    return-void
.end method

.method private findPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    array-length v0, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x40

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v1

    const-string/jumbo v5, "NotifiSettingsBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v8
.end method

.method private getGlobalVisibility()I
    .locals 2

    const/16 v0, -0x3e8

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getLockscreenNotificationsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getLockscreenAllowPrivateNotifications()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 4

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mUserId:I

    invoke-static {v2, p3, v3}, Lcom/android/flymexxlib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/flymexx/notification/RestrictedDropDownPreference$RestrictedItem;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/flymexx/notification/RestrictedDropDownPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    invoke-virtual {v2, v1}, Lcom/android/flymexx/notification/RestrictedDropDownPreference;->addRestrictedItem(Lcom/android/flymexx/notification/RestrictedDropDownPreference$RestrictedItem;)V

    :cond_0
    return-void
.end method

.method private updateSoundTimeoutSummary(J)V
    .locals 9

    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSoundTimeout:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    const v7, 0x7f0c027f

    invoke-virtual {v6, v7}, Lcom/android/flymexx/notification/RestrictedDropDownPreference;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSoundTimeout:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    invoke-virtual {v6}, Lcom/android/flymexx/notification/RestrictedDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v6, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSoundTimeout:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    invoke-virtual {v6}, Lcom/android/flymexx/notification/RestrictedDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_1

    aget-object v6, v3, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-nez v6, :cond_2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v7, v0, v1

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x7f0c027e

    invoke-virtual {p0, v7, v6}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v6, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSoundTimeout:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    invoke-virtual {v6, v2}, Lcom/android/flymexx/notification/RestrictedDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected getLockscreenAllowPrivateNotifications()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected getLockscreenNotificationsEnabled()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/android/flymexx/notification/NotificationSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NotifiSettingsBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityCreated mCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mCreated:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NotifiSettingsBase"

    const-string/jumbo v1, "onActivityCreated: ignoring duplicate call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mCreated:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-boolean v2, Lcom/android/flymexx/notification/NotificationSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "NotifiSettingsBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate getIntent()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    const-string/jumbo v2, "NotifiSettingsBase"

    const-string/jumbo v3, "No intent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->toastAndFinish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mUm:Landroid/os/UserManager;

    if-eqz v0, :cond_3

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mUid:I

    iget v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mUid:I

    if-eq v2, v6, :cond_2

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    const-string/jumbo v2, "NotifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Missing extras: app_package was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "app_uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->toastAndFinish()V

    return-void

    :cond_3
    const-string/jumbo v2, "app_package"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "app_uid"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iput v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mUserId:I

    sget-boolean v2, Lcom/android/flymexx/notification/NotificationSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "NotifiSettingsBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Load details for pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mUid:I

    invoke-direct {p0, v2, v4}, Lcom/android/flymexx/notification/NotificationSettingsBase;->findPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_7

    const-string/jumbo v2, "NotifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to find package info: app_package was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "app_uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->toastAndFinish()V

    return-void

    :cond_7
    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget v5, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mUserId:I

    invoke-static {v2, v4, v5}, Lcom/android/flymexxlib/RestrictedLockUtils;->checkIfApplicationIsSuspended(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "show_importance_slider"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_8

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mShowSlider:Z

    return-void

    :cond_8
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onResume()V

    iget v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mUid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/flymexxlib/RestrictedLockUtils;->checkIfApplicationIsSuspended(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mImportance:Lcom/android/flymexx/notification/ImportanceSeekBarPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mImportance:Lcom/android/flymexx/notification/ImportanceSeekBarPreference;

    iget-object v1, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mPriority:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mPriority:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_2
    iget-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mBlock:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mBlock:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_3
    iget-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSilent:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSilent:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_4
    iget-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    iget-object v1, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/notification/RestrictedDropDownPreference;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_5
    iget-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSoundTimeout:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSoundTimeout:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    iget-object v1, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/notification/RestrictedDropDownPreference;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_6
    return-void
.end method

.method protected setVisible(Landroid/support/v7/preference/Preference;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-ne v0, p2, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1
.end method

.method protected setupImportancePrefs(ZZIZ)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mShowSlider:Z

    if-eqz v2, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mImportance:Lcom/android/flymexx/notification/ImportanceSeekBarPreference;

    invoke-virtual {p0, v2, v4}, Lcom/android/flymexx/notification/NotificationSettingsBase;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    if-eqz p3, :cond_6

    move v0, p4

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_7

    :cond_1
    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mBlock:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mBlock:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    new-instance v3, Lcom/android/flymexx/notification/NotificationSettingsBase$2;

    invoke-direct {v3, p0}, Lcom/android/flymexx/notification/NotificationSettingsBase$2;-><init>(Lcom/android/flymexx/notification/NotificationSettingsBase;)V

    invoke-virtual {v2, v3}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_1
    const/4 v2, 0x2

    if-ne p3, v2, :cond_8

    const/4 v1, 0x1

    :goto_2
    if-eqz p2, :cond_2

    if-eqz v1, :cond_9

    :cond_2
    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSilent:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSilent:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    new-instance v3, Lcom/android/flymexx/notification/NotificationSettingsBase$3;

    invoke-direct {v3, p0}, Lcom/android/flymexx/notification/NotificationSettingsBase$3;-><init>(Lcom/android/flymexx/notification/NotificationSettingsBase;)V

    invoke-virtual {v2, v3}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_3
    if-eqz p4, :cond_a

    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/flymexx/notification/NotificationSettingsBase;->updateDependents(I)V

    :goto_5
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mBlock:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {p0, v2, v4}, Lcom/android/flymexx/notification/NotificationSettingsBase;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSilent:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {p0, v2, v4}, Lcom/android/flymexx/notification/NotificationSettingsBase;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mImportance:Lcom/android/flymexx/notification/ImportanceSeekBarPreference;

    iget-object v5, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v2, v5}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v5, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mImportance:Lcom/android/flymexx/notification/ImportanceSeekBarPreference;

    if-eqz p1, :cond_4

    move v2, v3

    :goto_6
    invoke-virtual {v5, v2}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->setMinimumProgress(I)V

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mImportance:Lcom/android/flymexx/notification/ImportanceSeekBarPreference;

    const/4 v5, 0x5

    invoke-static {v5}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToLevel(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->setMax(I)V

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mImportance:Lcom/android/flymexx/notification/ImportanceSeekBarPreference;

    invoke-virtual {v2, p3}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->setImportance(I)V

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mImportance:Lcom/android/flymexx/notification/ImportanceSeekBarPreference;

    const/16 v5, -0x3e8

    if-ne p3, v5, :cond_5

    :goto_7
    invoke-virtual {v2, v3}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->setAutoOn(Z)V

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mImportance:Lcom/android/flymexx/notification/ImportanceSeekBarPreference;

    new-instance v3, Lcom/android/flymexx/notification/NotificationSettingsBase$1;

    invoke-direct {v3, p0}, Lcom/android/flymexx/notification/NotificationSettingsBase$1;-><init>(Lcom/android/flymexx/notification/NotificationSettingsBase;)V

    invoke-virtual {v2, v3}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->setCallback(Lcom/android/flymexx/notification/ImportanceSeekBarPreference$Callback;)V

    goto :goto_5

    :cond_4
    move v2, v4

    goto :goto_6

    :cond_5
    move v3, v4

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mBlock:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {p0, v2, v4}, Lcom/android/flymexx/notification/NotificationSettingsBase;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSilent:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {p0, v2, v4}, Lcom/android/flymexx/notification/NotificationSettingsBase;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    goto :goto_3

    :cond_a
    move v4, p3

    goto :goto_4
.end method

.method protected setupPriorityPref(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mPriority:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mPriority:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mPriority:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    new-instance v1, Lcom/android/flymexx/notification/NotificationSettingsBase$4;

    invoke-direct {v1, p0}, Lcom/android/flymexx/notification/NotificationSettingsBase$4;-><init>(Lcom/android/flymexx/notification/NotificationSettingsBase;)V

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method protected setupSoundTimeoutPref(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSoundTimeout:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    iget-object v1, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/notification/RestrictedDropDownPreference;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSoundTimeout:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/flymexx/notification/RestrictedDropDownPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/notification/NotificationSettingsBase;->updateSoundTimeoutSummary(J)V

    iget-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mSoundTimeout:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    new-instance v1, Lcom/android/flymexx/notification/NotificationSettingsBase$6;

    invoke-direct {v1, p0}, Lcom/android/flymexx/notification/NotificationSettingsBase$6;-><init>(Lcom/android/flymexx/notification/NotificationSettingsBase;)V

    invoke-virtual {v0, v1}, Lcom/android/flymexx/notification/RestrictedDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method protected setupVisOverridePref(I)V
    .locals 9

    const/16 v8, -0x3e8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    invoke-virtual {v6}, Lcom/android/flymexx/notification/RestrictedDropDownPreference;->clearRestrictedItems()V

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getLockscreenNotificationsEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getLockscreenAllowPrivateNotifications()Z

    move-result v6

    if-eqz v6, :cond_0

    const v6, 0x7f0c0c68

    invoke-virtual {p0, v6}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v6, 0xc

    invoke-direct {p0, v3, v4, v6}, Lcom/android/flymexx/notification/NotificationSettingsBase;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    :cond_0
    const v6, 0x7f0c0c69

    invoke-virtual {p0, v6}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x4

    invoke-direct {p0, v1, v2, v6}, Lcom/android/flymexx/notification/NotificationSettingsBase;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    const v6, 0x7f0c0c6a

    invoke-virtual {p0, v6}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/flymexx/notification/RestrictedDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/flymexx/notification/RestrictedDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    if-ne p1, v8, :cond_1

    iget-object v6, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    invoke-direct {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getGlobalVisibility()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/flymexx/notification/RestrictedDropDownPreference;->setValue(Ljava/lang/String;)V

    :goto_0
    iget-object v6, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    const-string/jumbo v7, "%s"

    invoke-virtual {v6, v7}, Lcom/android/flymexx/notification/RestrictedDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    new-instance v7, Lcom/android/flymexx/notification/NotificationSettingsBase$5;

    invoke-direct {v7, p0}, Lcom/android/flymexx/notification/NotificationSettingsBase$5;-><init>(Lcom/android/flymexx/notification/NotificationSettingsBase;)V

    invoke-virtual {v6, v7}, Lcom/android/flymexx/notification/RestrictedDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/flymexx/notification/RestrictedDropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected toastAndFinish()V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0836

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method abstract updateDependents(I)V
.end method
