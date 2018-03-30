.class public Lcom/android/flymexx/users/UserSettings;
.super Lcom/android/flymexx/SettingsPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/flymexx/users/EditUserInfoController$OnContentChangedCallback;
.implements Lcom/android/flymexx/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/users/UserSettings$1;,
        Lcom/android/flymexx/users/UserSettings$2;,
        Lcom/android/flymexx/users/UserSettings$3;,
        Lcom/android/flymexx/users/UserSettings$4;,
        Lcom/android/flymexx/users/UserSettings$SummaryProvider;,
        Lcom/android/flymexx/users/UserSettings$UserCapabilities;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mAddUser:Lcom/android/flymexx/DimmableIconPreference;

.field private mAddUserWhenLocked:Lcom/android/flymexxlib/RestrictedSwitchPreference;

.field private mAddedUserId:I

.field private mAddingUser:Z

.field private mAddingUserName:Ljava/lang/String;

.field private mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mEditUserInfoController:Lcom/android/flymexx/users/EditUserInfoController;

.field private mEmergencyInfoPreference:Landroid/support/v7/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mLockScreenSettings:Landroid/support/v7/preference/PreferenceGroup;

.field private mMePreference:Lcom/android/flymexx/users/UserPreference;

.field private mRemovingUserId:I

.field private mShouldUpdateUserList:Z

.field private mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

.field private final mUserLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/users/UserSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/flymexx/users/UserSettings;->mAddedUserId:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/users/UserSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/users/UserSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/flymexx/users/UserSettings;->mRemovingUserId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/flymexx/users/UserSettings;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/flymexx/users/UserSettings;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/flymexx/users/UserSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/flymexx/users/UserSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/flymexx/users/UserSettings;->mAddingUser:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/flymexx/users/UserSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/flymexx/users/UserSettings;->mRemovingUserId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/users/UserSettings;->createRestrictedProfile()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/users/UserSettings;->createTrustedUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/flymexx/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/users/UserSettings;->removeUserNow()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/flymexx/users/UserSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/users/UserSettings;->switchUserNow(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/flymexx/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/users/UserSettings;->updateUserList()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/flymexx/users/UserSettings;->emergencyInfoActivityPresent(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/flymexx/users/UserSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/users/UserSettings;->addUserNow(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/flymexx/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/users/UserSettings;->exitGuest()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/flymexx/users/UserSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/flymexx/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/users/UserSettings;->launchChooseLockscreen()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/flymexx/users/UserSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/users/UserSettings;->onAddUserClicked(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/flymexx/users/UserSettings;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/users/UserSettings;->onManageUserClicked(IZ)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/flymexx/users/UserSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/users/UserSettings;->onUserCreated(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/flymexx/users/UserSettings$3;

    invoke-direct {v0}, Lcom/android/flymexx/users/UserSettings$3;-><init>()V

    sput-object v0, Lcom/android/flymexx/users/UserSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/flymexx/users/UserSettings$4;

    invoke-direct {v0}, Lcom/android/flymexx/users/UserSettings$4;-><init>()V

    sput-object v0, Lcom/android/flymexx/users/UserSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/flymexx/users/UserSettings;->mRemovingUserId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/flymexx/users/UserSettings;->mAddedUserId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexx/users/UserSettings;->mShouldUpdateUserList:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/flymexx/users/EditUserInfoController;

    invoke-direct {v0}, Lcom/android/flymexx/users/EditUserInfoController;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mEditUserInfoController:Lcom/android/flymexx/users/EditUserInfoController;

    new-instance v0, Lcom/android/flymexx/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/users/UserSettings$1;-><init>(Lcom/android/flymexx/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/flymexx/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/flymexx/users/UserSettings$2;-><init>(Lcom/android/flymexx/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private addUserNow(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/flymexx/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/flymexx/users/UserSettings;->mAddingUser:Z

    if-ne p1, v2, :cond_0

    const v0, 0x7f0c0b5d

    invoke-virtual {p0, v0}, Lcom/android/flymexx/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    new-instance v0, Lcom/android/flymexx/users/UserSettings$14;

    invoke-direct {v0, p0, p1}, Lcom/android/flymexx/users/UserSettings$14;-><init>(Lcom/android/flymexx/users/UserSettings;I)V

    invoke-virtual {v0}, Lcom/android/flymexx/users/UserSettings$14;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    const v0, 0x7f0c0b5e

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/flymexx/users/UserSettings;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private createRestrictedProfile()Landroid/content/pm/UserInfo;
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/flymexx/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->createRestrictedProfile(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v2}, Lcom/android/flymexx/Utils;->assignDefaultPhoto(Landroid/content/Context;I)V

    return-object v0
.end method

.method private createTrustedUser()Landroid/content/pm/UserInfo;
    .locals 4

    iget-object v1, p0, Lcom/android/flymexx/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/flymexx/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v2}, Lcom/android/flymexx/Utils;->assignDefaultPhoto(Landroid/content/Context;I)V

    :cond_0
    return-object v0
.end method

.method private static emergencyInfoActivityPresent(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.EDIT_EMERGENGY_INFO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.android.emergency"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v4

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Lcom/android/flymexx/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/flymexxlib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/flymexxlib/drawable/CircleFramedDrawable;

    move-result-object v0

    return-object v0
.end method

.method private exitGuest()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/flymexx/users/UserSettings;->removeThisUser()V

    return-void
.end method

.method private finishLoadProfile(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/flymexx/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/flymexx/users/UserSettings;->mMePreference:Lcom/android/flymexx/users/UserPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const v4, 0x7f0c0b47

    invoke-virtual {p0, v4, v3}, Lcom/android/flymexx/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/flymexx/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/flymexx/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/flymexx/users/UserSettings;->mMePreference:Lcom/android/flymexx/users/UserPreference;

    invoke-direct {p0, v0}, Lcom/android/flymexx/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/flymexx/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/flymexx/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/16 v0, -0x2710

    invoke-static {v0}, Lcom/android/flymexx/Utils;->getDefaultUserIconAsBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/flymexx/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getMaxRealUsers()I
    .locals 6

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    iget-object v5, p0, Lcom/android/flymexx/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int v5, v1, v0

    return v5
.end method

.method private hasLockscreenSecurity()Z
    .locals 2

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/flymexx/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    return v1
.end method

.method private isInitialized(Landroid/content/pm/UserInfo;)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private launchChooseLockscreen()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/flymexx/users/UserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private loadIconsAsync(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/flymexx/users/UserSettings$15;

    invoke-direct {v0, p0}, Lcom/android/flymexx/users/UserSettings$15;-><init>(Lcom/android/flymexx/users/UserSettings;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/flymexx/users/UserSettings$15;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private loadProfile()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mMePreference:Lcom/android/flymexx/users/UserPreference;

    invoke-direct {p0}, Lcom/android/flymexx/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/flymexx/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mMePreference:Lcom/android/flymexx/users/UserPreference;

    const v1, 0x7f0c0b6a

    invoke-virtual {v0, v1}, Lcom/android/flymexx/users/UserPreference;->setTitle(I)V

    return-void

    :cond_0
    new-instance v0, Lcom/android/flymexx/users/UserSettings$5;

    invoke-direct {v0, p0}, Lcom/android/flymexx/users/UserSettings$5;-><init>(Lcom/android/flymexx/users/UserSettings;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/users/UserSettings$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private onAddUserClicked(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/flymexx/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/flymexx/users/UserSettings;->mAddingUser:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/flymexx/users/UserSettings;->showDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/flymexx/users/UserSettings;->hasLockscreenSecurity()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/flymexx/users/UserSettings;->addUserNow(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/flymexx/users/UserSettings;->showDialog(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onManageUserClicked(IZ)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/users/UserSettings;->mAddingUser:Z

    const/16 v0, -0xb

    if-ne p1, v0, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "guest_user"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/flymexx/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    const-class v1, Lcom/android/flymexx/users/UserDetailsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0069

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/flymexx/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v0, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "user_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "new_user"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/flymexx/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    const-class v1, Lcom/android/flymexx/users/RestrictedProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0bcb

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/flymexx/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-static {p0}, Lcom/android/flymexx/OwnerInfoSettings;->show(Landroid/app/Fragment;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v0, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "user_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/flymexx/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    const-class v1, Lcom/android/flymexx/users/UserDetailsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/flymexx/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method private onRemoveUserClicked(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/flymexx/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/flymexx/users/UserSettings;->mAddingUser:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    iput p1, p0, Lcom/android/flymexx/users/UserSettings;->mRemovingUserId:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/users/UserSettings;->showDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onUserCreated(I)V
    .locals 1

    iput p1, p0, Lcom/android/flymexx/users/UserSettings;->mAddedUserId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/users/UserSettings;->mAddingUser:Z

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/flymexx/users/UserSettings;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/flymexx/users/UserSettings;->showDialog(I)V

    goto :goto_0
.end method

.method private removeThisUser()V
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "UserSettings"

    const-string/jumbo v2, "Cannot remove current user when switching is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    invoke-virtual {p0}, Lcom/android/flymexx/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UserSettings"

    const-string/jumbo v2, "Unable to remove self user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeUserNow()V
    .locals 2

    iget v0, p0, Lcom/android/flymexx/users/UserSettings;->mRemovingUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/flymexx/users/UserSettings;->removeThisUser()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/flymexx/users/UserSettings$13;

    invoke-direct {v0, p0}, Lcom/android/flymexx/users/UserSettings$13;-><init>(Lcom/android/flymexx/users/UserSettings;)V

    invoke-virtual {v0}, Lcom/android/flymexx/users/UserSettings$13;->start()V

    goto :goto_0
.end method

.method private setPhotoId(Landroid/support/v7/preference/Preference;Landroid/content/pm/UserInfo;)V
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/flymexx/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private switchUserNow(I)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateUserList()V
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/flymexx/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v20

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mMePreference:Lcom/android/flymexx/users/UserPreference;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/UserInfo;

    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/flymexx/users/UserSettings;->mMePreference:Lcom/android/flymexx/users/UserPreference;

    :goto_1
    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/flymexx/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_c

    const v2, 0x7f0c0b44

    invoke-virtual {v1, v2}, Lcom/android/flymexx/users/UserPreference;->setSummary(I)V

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/flymexx/users/UserPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/flymexx/users/UserPreference;->setSelectable(Z)V

    :cond_2
    :goto_3
    iget-object v2, v14, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v3, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_e

    iget v2, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/flymexx/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v2, v2, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v2, :cond_7

    if-nez v20, :cond_6

    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v13

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v2, v2, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v2, :cond_9

    if-nez v20, :cond_4

    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    const/4 v12, 0x0

    :goto_5
    new-instance v1, Lcom/android/flymexx/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget v4, v14, Landroid/content/pm/UserInfo;->id:I

    if-eqz v13, :cond_a

    move-object/from16 v5, p0

    :goto_6
    if-eqz v12, :cond_b

    move-object/from16 v6, p0

    :goto_7
    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/flymexx/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/flymexx/users/UserPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f0c0b46

    invoke-virtual {v1, v2}, Lcom/android/flymexx/users/UserPreference;->setSummary(I)V

    :cond_5
    iget-object v2, v14, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/flymexx/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/flymexx/users/UserPreference;->setSelectable(Z)V

    goto/16 :goto_1

    :cond_6
    const/4 v13, 0x1

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v12, 0x1

    goto :goto_5

    :cond_9
    const/4 v12, 0x0

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    goto :goto_6

    :cond_b
    const/4 v6, 0x0

    goto :goto_7

    :cond_c
    const v2, 0x7f0c0b43

    invoke-virtual {v1, v2}, Lcom/android/flymexx/users/UserPreference;->setSummary(I)V

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0c0b40

    invoke-virtual {v1, v2}, Lcom/android/flymexx/users/UserPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v14}, Lcom/android/flymexx/users/UserSettings;->setPhotoId(Landroid/support/v7/preference/Preference;Landroid/content/pm/UserInfo;)V

    goto/16 :goto_0

    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/flymexx/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/flymexx/users/UserSettings;->mAddingUser:Z

    if-eqz v2, :cond_11

    new-instance v1, Lcom/android/flymexx/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, -0xa

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/flymexx/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/flymexx/users/UserPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/flymexx/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/flymexx/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v2, v2, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v2, v2, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mCanAddGuest:Z

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v2, v2, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    if-eqz v2, :cond_13

    :cond_12
    new-instance v1, Lcom/android/flymexx/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v3, :cond_15

    if-eqz v20, :cond_15

    move-object/from16 v5, p0

    :goto_8
    const/4 v3, 0x0

    const/16 v4, -0xb

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/flymexx/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0c0069

    invoke-virtual {v1, v2}, Lcom/android/flymexx/users/UserPreference;->setTitle(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/flymexx/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v2, v2, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-object v2, v2, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mEnforcedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    :goto_9
    invoke-virtual {v1, v2}, Lcom/android/flymexx/users/UserPreference;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/flymexx/users/UserPreference;->setSelectable(Z)V

    :cond_13
    sget-object v2, Lcom/android/flymexx/users/UserPreference;->SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_14

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/flymexx/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/users/UserSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v2, v2, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v11, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/flymexx/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    :goto_a
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/flymexx/users/UserPreference;

    const v2, 0x7fffffff

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/flymexx/users/UserPreference;->setOrder(I)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_b

    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_8

    :cond_16
    const/4 v2, 0x0

    goto :goto_9

    :cond_17
    move-object v8, v11

    goto :goto_a

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v2, v2, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v2, v2, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    if-eqz v2, :cond_1b

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/flymexx/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mAddUser:Lcom/android/flymexx/DimmableIconPreference;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lcom/android/flymexx/DimmableIconPreference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mAddUser:Lcom/android/flymexx/DimmableIconPreference;

    invoke-virtual {v11, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/users/UserSettings;->mAddUser:Lcom/android/flymexx/DimmableIconPreference;

    if-eqz v10, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/flymexx/users/UserSettings;->mAddingUser:Z

    if-eqz v2, :cond_1f

    :cond_1a
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v3, v2}, Lcom/android/flymexx/DimmableIconPreference;->setEnabled(Z)V

    if-nez v10, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mAddUser:Lcom/android/flymexx/DimmableIconPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/users/UserSettings;->getMaxRealUsers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0c0b4a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/android/flymexx/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/flymexx/DimmableIconPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mAddUser:Lcom/android/flymexx/DimmableIconPreference;

    invoke-virtual {v2}, Lcom/android/flymexx/DimmableIconPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/users/UserSettings;->mAddUser:Lcom/android/flymexx/DimmableIconPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v2, v2, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-object v2, v2, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mEnforcedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    :goto_e
    invoke-virtual {v3, v2}, Lcom/android/flymexx/DimmableIconPreference;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v2, v2, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v2, v2, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v2, v2, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    if-eqz v2, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mLockScreenSettings:Landroid/support/v7/preference/PreferenceGroup;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mLockScreenSettings:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v11, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/users/UserSettings;->mAddUserWhenLocked:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "add_users_when_locked"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_22

    const/4 v2, 0x1

    :goto_f
    invoke-virtual {v3, v2}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mAddUserWhenLocked:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/users/UserSettings;->mAddUserWhenLocked:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v2, v2, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-object v2, v2, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mEnforcedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    :goto_10
    invoke-virtual {v3, v2}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/flymexx/users/UserSettings;->emergencyInfoActivityPresent(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mEmergencyInfoPreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mEmergencyInfoPreference:Landroid/support/v7/preference/Preference;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mEmergencyInfoPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1e
    return-void

    :cond_1f
    const/4 v2, 0x1

    goto/16 :goto_c

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/UserSettings;->mAddUser:Lcom/android/flymexx/DimmableIconPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/flymexx/DimmableIconPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_e

    :cond_22
    const/4 v2, 0x0

    goto :goto_f

    :cond_23
    const/4 v2, 0x0

    goto :goto_10
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f0c0bad

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x60

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/flymexx/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/flymexx/users/UserSettings;->hasLockscreenSecurity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/flymexx/users/UserSettings;->addUserNow(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mEditUserInfoController:Lcom/android/flymexx/users/EditUserInfoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/flymexx/users/EditUserInfoController;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/flymexx/users/UserPreference;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/flymexx/users/UserPreference;

    invoke-virtual {v2}, Lcom/android/flymexx/users/UserPreference;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/flymexx/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "no_remove_user"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/flymexxlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/flymexxlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/flymexx/users/UserSettings;->onRemoveUserClicked(I)V

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/flymexx/users/UserSettings;->onManageUserClicked(IZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f110213
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    const-string/jumbo v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/flymexx/users/UserSettings;->mAddedUserId:I

    :cond_0
    const-string/jumbo v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/flymexx/users/UserSettings;->mRemovingUserId:I

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mEditUserInfoController:Lcom/android/flymexx/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/users/EditUserInfoController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/flymexx/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->create(Landroid/content/Context;)Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    const-string/jumbo v0, "user"

    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Lcom/android/flymexx/users/UserSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "user_list"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    new-instance v0, Lcom/android/flymexx/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/flymexx/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mMePreference:Lcom/android/flymexx/users/UserPreference;

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mMePreference:Lcom/android/flymexx/users/UserPreference;

    const-string/jumbo v1, "user_me"

    invoke-virtual {v0, v1}, Lcom/android/flymexx/users/UserPreference;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mMePreference:Lcom/android/flymexx/users/UserPreference;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/users/UserPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mMePreference:Lcom/android/flymexx/users/UserPreference;

    const v1, 0x7f0c0b46

    invoke-virtual {v0, v1}, Lcom/android/flymexx/users/UserPreference;->setSummary(I)V

    :cond_4
    const-string/jumbo v0, "user_add"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/DimmableIconPreference;

    iput-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mAddUser:Lcom/android/flymexx/DimmableIconPreference;

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mAddUser:Lcom/android/flymexx/DimmableIconPreference;

    invoke-virtual {v0, v11}, Lcom/android/flymexx/DimmableIconPreference;->useAdminDisabledSummary(Z)V

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/flymexx/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/flymexx/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mAddUser:Lcom/android/flymexx/DimmableIconPreference;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/DimmableIconPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mAddUser:Lcom/android/flymexx/DimmableIconPreference;

    const v1, 0x7f0c0b3f

    invoke-virtual {v0, v1}, Lcom/android/flymexx/DimmableIconPreference;->setTitle(I)V

    :cond_5
    const-string/jumbo v0, "lock_screen_settings"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mLockScreenSettings:Landroid/support/v7/preference/PreferenceGroup;

    const-string/jumbo v0, "add_users_when_locked"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/RestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mAddUserWhenLocked:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    const-string/jumbo v0, "emergency_info"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mEmergencyInfoPreference:Landroid/support/v7/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/users/UserSettings;->setHasOptionsMenu(Z)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/flymexx/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v9, p0, Lcom/android/flymexx/users/UserSettings;->mHandler:Landroid/os/Handler;

    move-object v4, v10

    move-object v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/flymexx/users/UserSettings;->loadProfile()V

    invoke-direct {p0}, Lcom/android/flymexx/users/UserSettings;->updateUserList()V

    iput-boolean v11, p0, Lcom/android/flymexx/users/UserSettings;->mShouldUpdateUserList:Z

    invoke-virtual {p0}, Lcom/android/flymexx/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "device_provisioned"

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/flymexx/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_6
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 23

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    if-nez v17, :cond_0

    const/4 v5, 0x0

    return-object v5

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 v5, 0x0

    return-object v5

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/flymexx/users/UserSettings;->mRemovingUserId:I

    new-instance v8, Lcom/android/flymexx/users/UserSettings$6;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/flymexx/users/UserSettings$6;-><init>(Lcom/android/flymexx/users/UserSettings;)V

    invoke-static {v5, v7, v8}, Lcom/android/flymexx/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v18

    return-object v18

    :pswitch_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0c0b57

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string/jumbo v5, "key_add_user_long_message_displayed"

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_1

    const v20, 0x7f0c0b51

    :goto_0
    const/4 v5, 0x2

    move/from16 v0, p1

    if-ne v0, v5, :cond_2

    const/16 v22, 0x1

    :goto_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0c0b4f

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v7, Lcom/android/flymexx/users/UserSettings$7;

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v19

    move-object/from16 v3, v21

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/android/flymexx/users/UserSettings$7;-><init>(Lcom/android/flymexx/users/UserSettings;IZLandroid/content/SharedPreferences;)V

    const v8, 0x104000a

    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    return-object v18

    :cond_1
    const v20, 0x7f0c0b50

    goto :goto_0

    :cond_2
    const/16 v22, 0x2

    goto :goto_1

    :pswitch_3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0c0b52

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x7f0c0b53

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v7, Lcom/android/flymexx/users/UserSettings$8;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/flymexx/users/UserSettings$8;-><init>(Lcom/android/flymexx/users/UserSettings;)V

    const v8, 0x7f0c0b55

    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x7f0c0b56

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    return-object v18

    :pswitch_4
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0c0b54

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v7, Lcom/android/flymexx/users/UserSettings$9;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/flymexx/users/UserSettings$9;-><init>(Lcom/android/flymexx/users/UserSettings;)V

    const v8, 0x104000a

    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    return-object v18

    :pswitch_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "title"

    const v7, 0x7f0c0b4d

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/flymexx/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "summary"

    const v7, 0x7f0c0b4b

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/flymexx/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "title"

    const v7, 0x7f0c0b4e

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/flymexx/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "summary"

    const v7, 0x7f0c0b4c

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/flymexx/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v16, Landroid/app/AlertDialog$Builder;

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/SimpleAdapter;

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/String;

    const-string/jumbo v7, "title"

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const-string/jumbo v7, "summary"

    const/4 v9, 0x1

    aput-object v7, v8, v9

    const v7, 0x7f11003c

    const v9, 0x7f1100b7

    filled-new-array {v7, v9}, [I

    move-result-object v9

    const v7, 0x7f04017b

    invoke-direct/range {v4 .. v9}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    const v5, 0x7f0c0b49

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/flymexx/users/UserSettings$10;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/flymexx/users/UserSettings$10;-><init>(Lcom/android/flymexx/users/UserSettings;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    :pswitch_6
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0c0b41

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v7, Lcom/android/flymexx/users/UserSettings$11;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/flymexx/users/UserSettings$11;-><init>(Lcom/android/flymexx/users/UserSettings;)V

    const v8, 0x7f0c0b42

    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    return-object v18

    :pswitch_7
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0c0b6b

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x7f0c0b6c

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v7, Lcom/android/flymexx/users/UserSettings$12;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/flymexx/users/UserSettings$12;-><init>(Lcom/android/flymexx/users/UserSettings;)V

    const v8, 0x7f0c0b6d

    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    return-object v18

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/flymexx/users/UserSettings;->mEditUserInfoController:Lcom/android/flymexx/users/EditUserInfoController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/users/UserSettings;->mMePreference:Lcom/android/flymexx/users/UserPreference;

    invoke-virtual {v5}, Lcom/android/flymexx/users/UserPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/users/UserSettings;->mMePreference:Lcom/android/flymexx/users/UserPreference;

    invoke-virtual {v5}, Lcom/android/flymexx/users/UserPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    const v11, 0x7f0c03f9

    move-object/from16 v8, p0

    move-object/from16 v12, p0

    invoke-virtual/range {v7 .. v13}, Lcom/android/flymexx/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/flymexx/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;

    move-result-object v18

    return-object v18

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    const-string/jumbo v6, "no_remove_user"

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v5}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v1

    iget-object v6, p0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v6, v6, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-nez v6, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/flymexx/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/flymexx/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v9

    const v8, 0x7f0c0b59

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v9, v10, v9, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onDialogShowing()V

    invoke-virtual {p0, p0}, Lcom/android/flymexx/users/UserSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v1, p0, Lcom/android/flymexx/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/android/flymexx/users/UserSettings;->mRemovingUserId:I

    invoke-direct {p0}, Lcom/android/flymexx/users/UserSettings;->updateUserList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onLabelChanged(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mMePreference:Lcom/android/flymexx/users/UserPreference;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/flymexx/users/UserSettings;->onRemoveUserClicked(I)V

    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexx/users/UserSettings;->mShouldUpdateUserList:Z

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPhotoChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mMePreference:Lcom/android/flymexx/users/UserPreference;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/flymexx/users/UserSettings;->mAddUserWhenLocked:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    if-ne p1, v3, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/flymexx/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "add_users_when_locked"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_1
    return v1
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/flymexx/users/UserSettings;->mMePreference:Lcom/android/flymexx/users/UserPreference;

    if-ne p1, v3, :cond_3

    iget-object v3, p0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/flymexx/users/UserSettings;->showDialog(I)V

    return v4

    :cond_0
    iget-object v3, p0, Lcom/android/flymexx/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {p0, v3, v8}, Lcom/android/flymexx/users/UserSettings;->onManageUserClicked(IZ)V

    :cond_1
    :goto_0
    return v8

    :cond_2
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/android/flymexx/users/UserSettings;->showDialog(I)V

    goto :goto_0

    :cond_3
    instance-of v3, p1, Lcom/android/flymexx/users/UserPreference;

    if-eqz v3, :cond_4

    check-cast p1, Lcom/android/flymexx/users/UserPreference;

    invoke-virtual {p1}, Lcom/android/flymexx/users/UserPreference;->getUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/flymexx/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/flymexx/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/flymexx/users/UserSettings;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/flymexx/users/UserSettings;->mHandler:Landroid/os/Handler;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    iget v6, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v7, 0x2

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/flymexx/users/UserSettings;->mAddUser:Lcom/android/flymexx/DimmableIconPreference;

    if-ne p1, v3, :cond_6

    iget-object v3, p0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/flymexx/users/UserSettings;->showDialog(I)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v4}, Lcom/android/flymexx/users/UserSettings;->onAddUserClicked(I)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/flymexx/users/UserSettings;->mEmergencyInfoPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.EDIT_EMERGENGY_INFO"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x4000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/flymexx/users/UserSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/flymexx/users/UserSettings;->mShouldUpdateUserList:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mUserCaps:Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    invoke-virtual {p0}, Lcom/android/flymexx/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->updateAddUserCapabilities(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/flymexx/users/UserSettings;->loadProfile()V

    invoke-direct {p0}, Lcom/android/flymexx/users/UserSettings;->updateUserList()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mEditUserInfoController:Lcom/android/flymexx/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/users/EditUserInfoController;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "adding_user"

    iget v1, p0, Lcom/android/flymexx/users/UserSettings;->mAddedUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "removing_user"

    iget v1, p0, Lcom/android/flymexx/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings;->mEditUserInfoController:Lcom/android/flymexx/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/flymexx/users/EditUserInfoController;->startingActivityForResult()V

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
