.class Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AppInfoLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final BLACKLISTED_PACKAGES:[Ljava/lang/String;


# instance fields
.field private mAppOps:Landroid/app/AppOpsManager;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mShowSystemApps:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.systemui"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;->BLACKLISTED_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;->mAppOps:Landroid/app/AppOpsManager;

    iput-boolean p2, p0, Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;->mShowSystemApps:Z

    return-void
.end method

.method private isBlacklisted(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    sget-object v3, Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;->BLACKLISTED_PACKAGES:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private loadInstalledApps()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;->mPm:Landroid/content/pm/PackageManager;

    const/16 v7, 0x1040

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, p0, Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;->mShowSystemApps:Z

    if-nez v6, :cond_1

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    :cond_1
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_0

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;->isBlacklisted(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;

    invoke-direct {v0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;-><init>()V

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->title:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v6, v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    iget-boolean v6, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iput-boolean v6, v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->enabled:Z

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v6, v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->uid:I

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;->mAppOps:Landroid/app/AppOpsManager;

    iget v7, v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->uid:I

    iget-object v8, v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/app/AppOpsManager;->getPrivacyGuardSettingForPackage(ILjava/lang/String;)Z

    move-result v6

    iput-boolean v6, v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v6, Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader$1;

    invoke-direct {v6, p0}, Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader$1;-><init>(Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;)V

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;->loadInstalledApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;->cancelLoad()Z

    return-void
.end method

.method public onStartLoading()V
    .locals 0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;->forceLoad()V

    return-void
.end method

.method public onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;->cancelLoad()Z

    return-void
.end method
