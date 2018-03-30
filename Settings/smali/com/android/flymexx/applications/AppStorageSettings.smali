.class public Lcom/android/flymexx/applications/AppStorageSettings;
.super Lcom/android/flymexx/applications/AppInfoWithHeader;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/flymexxlib/applications/ApplicationsState$Callbacks;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/applications/AppStorageSettings$1;,
        Lcom/android/flymexx/applications/AppStorageSettings$ClearCacheObserver;,
        Lcom/android/flymexx/applications/AppStorageSettings$ClearUserDataObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppSize:Landroid/support/v7/preference/Preference;

.field private mCacheSize:Landroid/support/v7/preference/Preference;

.field private mCanClearData:Z

.field private mCandidates:[Landroid/os/storage/VolumeInfo;

.field private mChangeStorageButton:Landroid/widget/Button;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/flymexx/applications/AppStorageSettings$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/flymexx/applications/AppStorageSettings$ClearUserDataObserver;

.field private mClearUri:Lcom/android/flymexx/applications/LayoutPreference;

.field private mClearUriButton:Landroid/widget/Button;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/support/v7/preference/Preference;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mExternalCodeSize:Landroid/support/v7/preference/Preference;

.field private mExternalDataSize:Landroid/support/v7/preference/Preference;

.field private final mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mStorageUsed:Landroid/support/v7/preference/Preference;

.field private mTotalSize:Landroid/support/v7/preference/Preference;

.field private mUri:Landroid/support/v7/preference/PreferenceCategory;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/applications/AppStorageSettings;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/applications/AppStorageSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/applications/AppStorageSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->initiateClearUserData()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/applications/AppStorageSettings;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/applications/AppStorageSettings;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/flymexx/applications/AppStorageSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/flymexx/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Lcom/android/flymexx/applications/AppInfoWithHeader;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mCanClearData:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mHaveSizes:Z

    iput-wide v2, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastCodeSize:J

    iput-wide v2, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastDataSize:J

    iput-wide v2, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastExternalCodeSize:J

    iput-wide v2, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastExternalDataSize:J

    iput-wide v2, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastCacheSize:J

    iput-wide v2, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastTotalSize:J

    new-instance v0, Lcom/android/flymexx/applications/AppStorageSettings$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/applications/AppStorageSettings$1;-><init>(Lcom/android/flymexx/applications/AppStorageSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private clearUriPermissions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->clearGrantedUriPermissions(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->refreshGrantedUriPermissions()V

    return-void
.end method

.method private static getSize(Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    iget-wide v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const v2, 0x7f0c0844

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 7

    const/4 v6, 0x0

    iget-wide v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v4, -0x2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    const v1, 0x7f0c0843

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    const v1, 0x7f0c0d13

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/flymexx/applications/AppStorageSettings;->getSize(Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const v2, 0x7f0c0d0c

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const v1, 0x7f0c0d12

    goto :goto_0
.end method

.method private initDataButtons()V
    .locals 10

    const v9, 0x7f0c0810

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v7, :cond_3

    const/4 v1, 0x1

    :goto_0
    iget-object v7, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v8, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    iget-object v7, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x41

    if-ne v7, v5, :cond_4

    :goto_1
    if-nez v5, :cond_5

    move v2, v0

    :goto_2
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    iget-object v7, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v3, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_6

    const/4 v4, 0x1

    :goto_3
    if-nez v1, :cond_1

    if-nez v2, :cond_7

    :cond_1
    if-eqz v4, :cond_7

    if-eqz v1, :cond_8

    iget-object v7, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const v8, 0x7f0c0822

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    :goto_4
    iget-object v7, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    iget-boolean v7, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    iget-object v7, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(I)V

    iget-object v7, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iput-boolean v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mCanClearData:Z

    goto :goto_5

    :cond_8
    iget-object v7, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(I)V

    goto :goto_4
.end method

.method private initMoveDialog()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/CharSequence;

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5, v7}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mStorageUsed:Landroid/support/v7/preference/Preference;

    invoke-virtual {v7}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v2, v3

    :cond_0
    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Landroid/os/storage/VolumeInfo;

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/storage/VolumeInfo;

    iput-object v7, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0c0d18

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0c03bb

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    :goto_1
    return-void

    :cond_2
    const-string/jumbo v7, "storage_used"

    invoke-virtual {p0, v7}, Lcom/android/flymexx/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v7, "change_storage_button"

    invoke-virtual {p0, v7}, Lcom/android/flymexx/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v7, "storage_space"

    invoke-virtual {p0, v7}, Lcom/android/flymexx/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initiateClearUserData()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/android/flymexx/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Clearing user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/flymexx/applications/AppStorageSettings$ClearUserDataObserver;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/flymexx/applications/AppStorageSettings$ClearUserDataObserver;

    invoke-direct {v3, p0}, Lcom/android/flymexx/applications/AppStorageSettings$ClearUserDataObserver;-><init>(Lcom/android/flymexx/applications/AppStorageSettings;)V

    iput-object v3, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/flymexx/applications/AppStorageSettings$ClearUserDataObserver;

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/flymexx/applications/AppStorageSettings$ClearUserDataObserver;

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v3, Lcom/android/flymexx/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldnt clear application user data for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v6}, Lcom/android/flymexx/applications/AppStorageSettings;->showDialogInner(II)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f0c0830

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private isMoveInProgress()Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    return v1
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f0c0810

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    if-ne v1, v4, :cond_0

    sget-object v2, Lcom/android/flymexx/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cleared user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mState:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/flymexxlib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->initMoveDialog()V

    invoke-direct {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->initDataButtons()V

    return-void
.end method

.method private refreshGrantedUriPermissions()V
    .locals 22

    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/applications/AppStorageSettings;->removeUriPermissionsFromUi()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "activity"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->getGrantedUriPermissions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    new-instance v17, Ljava/util/TreeMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/UriPermission;

    invoke-virtual {v11}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v5, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/MutableInt;

    if-nez v6, :cond_1

    new-instance v18, Landroid/util/MutableInt;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroid/util/MutableInt;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget v0, v6, Landroid/util/MutableInt;->value:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v6, Landroid/util/MutableInt;->value:I

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/MutableInt;

    move-object/from16 v0, v18

    iget v9, v0, Landroid/util/MutableInt;->value:I

    new-instance v15, Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    const v20, 0x7f12000c

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v9, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    const v18, 0x7f04008f

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {v15, v10}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    sget-object v18, Lcom/android/flymexx/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Adding preference \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\' at order "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearUri:Lcom/android/flymexx/applications/LayoutPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/flymexx/applications/LayoutPreference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private refreshSizeInfo()V
    .locals 10

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    :cond_0
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastTotalSize:J

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastCacheSize:J

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastDataSize:J

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastCodeSize:J

    iget-boolean v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mHaveSizes:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppSize:Landroid/support/v7/preference/Preference;

    iget-object v7, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mDataSize:Landroid/support/v7/preference/Preference;

    iget-object v7, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mCacheSize:Landroid/support/v7/preference/Preference;

    iget-object v7, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mTotalSize:Landroid/support/v7/preference/Preference;

    iget-object v7, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    iget-boolean v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mHaveSizes:Z

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-wide v2, v6, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->codeSize:J

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-wide v4, v6, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->dataSize:J

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    add-long/2addr v2, v6

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v4, v6

    :cond_4
    :goto_1
    iget-wide v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastCodeSize:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_5

    iput-wide v2, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastCodeSize:J

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppSize:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/flymexx/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    iget-wide v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastDataSize:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_6

    iput-wide v4, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastDataSize:J

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mDataSize:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v4, v5}, Lcom/android/flymexx/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-object v8, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long v0, v6, v8

    iget-wide v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastCacheSize:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_7

    iput-wide v0, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastCacheSize:J

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mCacheSize:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/flymexx/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    iget-wide v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastTotalSize:J

    iget-object v8, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastTotalSize:J

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mTotalSize:Landroid/support/v7/preference/Preference;

    iget-object v7, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v8, v9}, Lcom/android/flymexx/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->dataSize:J

    iget-object v8, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_b

    iget-boolean v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mCanClearData:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_c

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_9
    iget-wide v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastExternalCodeSize:J

    iget-object v8, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iput-wide v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastExternalCodeSize:J

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mExternalCodeSize:Landroid/support/v7/preference/Preference;

    iget-object v7, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    invoke-direct {p0, v8, v9}, Lcom/android/flymexx/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_a
    iget-wide v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastExternalDataSize:J

    iget-object v8, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    iput-wide v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mLastExternalDataSize:J

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mExternalDataSize:Landroid/support/v7/preference/Preference;

    iget-object v7, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    invoke-direct {p0, v8, v9}, Lcom/android/flymexx/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_b
    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    :cond_c
    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private removeUriPermissionsFromUi()V
    .locals 4

    iget-object v3, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearUri:Lcom/android/flymexx/applications/LayoutPreference;

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setupViews()V
    .locals 4

    const v3, 0x7f110183

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0843

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0844

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mInvalidSizeStr:Ljava/lang/CharSequence;

    const-string/jumbo v1, "total_size"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mTotalSize:Landroid/support/v7/preference/Preference;

    const-string/jumbo v1, "app_size"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppSize:Landroid/support/v7/preference/Preference;

    const-string/jumbo v1, "data_size"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mDataSize:Landroid/support/v7/preference/Preference;

    const-string/jumbo v1, "external_code_size"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mExternalCodeSize:Landroid/support/v7/preference/Preference;

    const-string/jumbo v1, "external_data_size"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mExternalDataSize:Landroid/support/v7/preference/Preference;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "storage_category"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mExternalCodeSize:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mExternalDataSize:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    const-string/jumbo v1, "clear_data_button"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/applications/LayoutPreference;

    invoke-virtual {v1, v3}, Lcom/android/flymexx/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const-string/jumbo v1, "storage_used"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mStorageUsed:Landroid/support/v7/preference/Preference;

    const-string/jumbo v1, "change_storage_button"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/applications/LayoutPreference;

    invoke-virtual {v1, v3}, Lcom/android/flymexx/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    const v2, 0x7f0c0d17

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v1, "cache_size"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mCacheSize:Landroid/support/v7/preference/Preference;

    const-string/jumbo v1, "clear_cache_button"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/applications/LayoutPreference;

    invoke-virtual {v1, v3}, Lcom/android/flymexx/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const v2, 0x7f0c0801

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    const-string/jumbo v1, "uri_category"

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v2, "clear_uri_button"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/applications/LayoutPreference;

    iput-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearUri:Lcom/android/flymexx/applications/LayoutPreference;

    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearUri:Lcom/android/flymexx/applications/LayoutPreference;

    invoke-virtual {v1, v3}, Lcom/android/flymexx/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    const v2, 0x7f0c0803

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f0c0833

    packed-switch p1, :pswitch_data_0

    return-object v4

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0831

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0832

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/flymexx/applications/AppStorageSettings$2;

    invoke-direct {v1, p0}, Lcom/android/flymexx/applications/AppStorageSettings$2;-><init>(Lcom/android/flymexx/applications/AppStorageSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0834

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0838

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0839

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/flymexx/applications/AppStorageSettings$3;

    invoke-direct {v1, p0}, Lcom/android/flymexx/applications/AppStorageSettings$3;-><init>(Lcom/android/flymexx/applications/AppStorageSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v4, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    aget-object v3, v4, p2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/flymexx/deviceinfo/StorageWizardMoveConfirm;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.PACKAGE_NAME"

    iget-object v5, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/flymexx/applications/AppStorageSettings;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/flymexx/applications/AppStorageSettings$ClearCacheObserver;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/flymexx/applications/AppStorageSettings$ClearCacheObserver;

    invoke-direct {v1, p0}, Lcom/android/flymexx/applications/AppStorageSettings$ClearCacheObserver;-><init>(Lcom/android/flymexx/applications/AppStorageSettings;)V

    iput-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/flymexx/applications/AppStorageSettings$ClearCacheObserver;

    :cond_1
    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/flymexx/applications/AppStorageSettings$ClearCacheObserver;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v1, v2}, Lcom/android/flymexxlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_8

    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/flymexx/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/flymexx/applications/AppStorageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v1, v2}, Lcom/android/flymexxlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/flymexx/applications/AppStorageSettings;->showDialogInner(II)V

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_9

    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->isMoveInProgress()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_9
    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-eqz v1, :cond_c

    :cond_a
    invoke-direct {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->clearUriPermissions()V

    goto :goto_0

    :cond_b
    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v1, v2}, Lcom/android/flymexxlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/AppStorageSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->setupViews()V

    invoke-direct {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->initMoveDialog()V

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->refreshSizeInfo()V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/flymexx/applications/AppInfoWithHeader;->onResume()V

    iget-object v0, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mState:Lcom/android/flymexxlib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/flymexxlib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    return-void
.end method

.method protected refreshUi()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->retrieveAppEntry()Ljava/lang/String;

    iget-object v2, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->refreshSizeInfo()V

    invoke-direct {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->refreshGrantedUriPermissions()V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mAppEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/flymexx/applications/AppStorageSettings;->mStorageUsed:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/flymexx/applications/AppStorageSettings;->refreshButtons()V

    const/4 v2, 0x1

    return v2
.end method
