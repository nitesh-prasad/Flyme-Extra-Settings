.class Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;
.super Ljava/lang/Object;
.source "ExpandedDesktopSettings.java"

# interfaces
.implements Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityFilter"
.end annotation


# instance fields
.field private final mLauncherResolveInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;


# direct methods
.method private constructor <init>(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;Landroid/content/pm/PackageManager;)V
    .locals 1

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;->this$0:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;->mLauncherResolveInfoList:Ljava/util/List;

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;->updateLauncherInfoList()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;Landroid/content/pm/PackageManager;Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;-><init>(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;Landroid/content/pm/PackageManager;)V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)Z
    .locals 4

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;->this$0:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->-get0(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;)Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;

    move-result-object v1

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->-get0(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;->mLauncherResolveInfoList:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;->mLauncherResolveInfoList:Ljava/util/List;

    iget-object v3, p1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v2

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public updateLauncherInfoList()V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;->mLauncherResolveInfoList:Ljava/util/List;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;->mLauncherResolveInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;->mLauncherResolveInfoList:Ljava/util/List;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_0
    monitor-exit v5

    return-void
.end method
