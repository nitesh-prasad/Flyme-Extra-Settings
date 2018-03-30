.class public Lcom/android/flymexx/applications/DefaultBrowserPreference;
.super Lcom/android/flymexx/AppListPreference;
.source "DefaultBrowserPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/applications/DefaultBrowserPreference$1;,
        Lcom/android/flymexx/applications/DefaultBrowserPreference$2;
    }
.end annotation


# static fields
.field private static final BROWSE_PROBE:Landroid/content/Intent;

.field private static final DEBUG:Z


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/applications/DefaultBrowserPreference;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/DefaultBrowserPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/applications/DefaultBrowserPreference;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/DefaultBrowserPreference;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/applications/DefaultBrowserPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/applications/DefaultBrowserPreference;->updateDefaultBrowserPreference()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "DefaultBrowserPref"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/flymexx/applications/DefaultBrowserPreference;->DEBUG:Z

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

    sput-object v0, Lcom/android/flymexx/applications/DefaultBrowserPreference;->BROWSE_PROBE:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/applications/DefaultBrowserPreference;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/flymexx/applications/DefaultBrowserPreference$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/applications/DefaultBrowserPreference$1;-><init>(Lcom/android/flymexx/applications/DefaultBrowserPreference;)V

    iput-object v0, p0, Lcom/android/flymexx/applications/DefaultBrowserPreference;->mUpdateRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/flymexx/applications/DefaultBrowserPreference$2;

    invoke-direct {v0, p0}, Lcom/android/flymexx/applications/DefaultBrowserPreference$2;-><init>(Lcom/android/flymexx/applications/DefaultBrowserPreference;)V

    iput-object v0, p0, Lcom/android/flymexx/applications/DefaultBrowserPreference;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/DefaultBrowserPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/DefaultBrowserPreference;->refreshBrowserApps()V

    return-void
.end method

.method public static hasBrowserPreference(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "http:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isBrowserDefault(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resolveBrowserApps()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/flymexx/applications/DefaultBrowserPreference;->mPm:Landroid/content/pm/PackageManager;

    sget-object v6, Lcom/android/flymexx/applications/DefaultBrowserPreference;->BROWSE_PROBE:Landroid/content/Intent;

    iget v7, p0, Lcom/android/flymexx/applications/DefaultBrowserPreference;->mUserId:I

    const/high16 v8, 0x20000

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private updateDefaultBrowserPreference()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/flymexx/applications/DefaultBrowserPreference;->refreshBrowserApps()V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/DefaultBrowserPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v4, p0, Lcom/android/flymexx/applications/DefaultBrowserPreference;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/android/flymexx/applications/DefaultBrowserPreference;->BROWSE_PROBE:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v4, p0, Lcom/android/flymexx/applications/DefaultBrowserPreference;->mPm:Landroid/content/pm/PackageManager;

    iget v5, p0, Lcom/android/flymexx/applications/DefaultBrowserPreference;->mUserId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/flymexx/applications/DefaultBrowserPreference;->setValue(Ljava/lang/String;)V

    const-string/jumbo v4, "%s"

    invoke-virtual {p0, v4}, Lcom/android/flymexx/applications/DefaultBrowserPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const v4, 0x7f0c0d4a

    invoke-virtual {p0, v4}, Lcom/android/flymexx/applications/DefaultBrowserPreference;->setSummary(I)V

    goto :goto_0

    :cond_1
    sget-boolean v4, Lcom/android/flymexx/applications/DefaultBrowserPreference;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "DefaultBrowserPref"

    const-string/jumbo v5, "No default browser app."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/flymexx/applications/DefaultBrowserPreference;->setSoleAppLabelAsSummary()V

    goto :goto_0
.end method


# virtual methods
.method protected getSoleAppLabel()Ljava/lang/CharSequence;
    .locals 5

    iget-object v1, p0, Lcom/android/flymexx/applications/DefaultBrowserPreference;->mPm:Landroid/content/pm/PackageManager;

    sget-object v2, Lcom/android/flymexx/applications/DefaultBrowserPreference;->BROWSE_PROBE:Landroid/content/Intent;

    iget v3, p0, Lcom/android/flymexx/applications/DefaultBrowserPreference;->mUserId:I

    const/high16 v4, 0x20000

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/android/flymexx/applications/DefaultBrowserPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onAttached()V
    .locals 4

    invoke-super {p0}, Lcom/android/flymexx/AppListPreference;->onAttached()V

    invoke-direct {p0}, Lcom/android/flymexx/applications/DefaultBrowserPreference;->updateDefaultBrowserPreference()V

    iget-object v0, p0, Lcom/android/flymexx/applications/DefaultBrowserPreference;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/DefaultBrowserPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/flymexx/applications/DefaultBrowserPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    return-void
.end method

.method public onDetached()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/DefaultBrowserPreference;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    invoke-super {p0}, Lcom/android/flymexx/AppListPreference;->onDetached()V

    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    move-object v0, p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/flymexx/applications/DefaultBrowserPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/flymexx/applications/DefaultBrowserPreference;->mUserId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v3, "%s"

    invoke-virtual {p0, v3}, Lcom/android/flymexx/applications/DefaultBrowserPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Lcom/android/flymexx/AppListPreference;->persistString(Ljava/lang/String;)Z

    move-result v2

    :cond_2
    return v2
.end method

.method public refreshBrowserApps()V
    .locals 3

    invoke-direct {p0}, Lcom/android/flymexx/applications/DefaultBrowserPreference;->resolveBrowserApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/flymexx/applications/DefaultBrowserPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method
