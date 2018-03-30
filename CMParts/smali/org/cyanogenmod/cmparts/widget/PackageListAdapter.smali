.class public Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PackageListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$1;,
        Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;,
        Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final PACKAGE_WHITELIST:[Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mInstalledPackages:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.systemui"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.providers.downloads"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->PACKAGE_WHITELIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mInstalledPackages:Ljava/util/List;

    new-instance v0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$1;-><init>(Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->reloadList()V

    return-void
.end method

.method private reloadList()V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mInstalledPackages:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->getItem(I)Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;
    .locals 2

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mInstalledPackages:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getItemId(I)J
    .locals 4

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mInstalledPackages:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v2, v0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$ViewHolder;

    :goto_0
    invoke-virtual {p0, p1}, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->getItem(I)Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;

    move-result-object v0

    iget-object v3, v1, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, v0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, v0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;->-get0(Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;)Ljava/util/TreeSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v0}, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;->-get0(Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;)Ljava/util/TreeSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v4, v0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;->-get0(Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;)Ljava/util/TreeSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz v2, :cond_3

    iget-object v3, v1, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const-string/jumbo v4, ", "

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;->-get0(Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;)Ljava/util/TreeSet;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-object p2

    :cond_1
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03004a

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$ViewHolder;

    invoke-direct {v1, v5}, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$ViewHolder;-><init>(Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$ViewHolder;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v3, 0x1020016

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v3, 0x1020010

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v3, 0x1020006

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    iget-object v3, v1, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public run()V
    .locals 14

    const/4 v8, 0x0

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v6, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v5, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v11}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-direct {v5, v9, v10, v11}, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v5}, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;->-get0(Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;)Ljava/util/TreeSet;

    move-result-object v9

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v8, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    sget-object v9, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->PACKAGE_WHITELIST:[Ljava/lang/String;

    array-length v10, v9

    :goto_1
    if-ge v8, v10, :cond_1

    aget-object v7, v9, v8

    :try_start_0
    iget-object v11, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mPm:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v7, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v5, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    iget-object v13, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v13}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-direct {v5, v11, v12, v13}, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    iget-object v11, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_2
.end method
