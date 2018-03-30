.class public Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;
.super Landroid/app/Activity;
.source "SettingsDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoriesUpdater;,
        Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoryListener;,
        Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$PackageReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sConfigTracker:Lcom/android/flymexxlib/applications/InterestingConfigChanges;

.field private static sDashboardCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexxlib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static sTileBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sTileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/flymexxlib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCategoryListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContentHeaderContainer:Landroid/widget/FrameLayout;

.field private mDrawerAdapter:Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private final mPackageReceiver:Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$PackageReceiver;

.field private mShowingMenu:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;)Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;

    return-object v0
.end method

.method static synthetic -get1()Lcom/android/flymexxlib/applications/InterestingConfigChanges;
    .locals 1

    sget-object v0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->sConfigTracker:Lcom/android/flymexxlib/applications/InterestingConfigChanges;

    return-object v0
.end method

.method static synthetic -get2()Landroid/util/ArraySet;
    .locals 1

    sget-object v0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get3()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->sTileCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -set0(Ljava/util/List;)Ljava/util/List;
    .locals 0

    sput-object p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "SettingsDrawerActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->DEBUG:Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$PackageReceiver;-><init>(Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$PackageReceiver;)V

    iput-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$PackageReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    return-void
.end method

.method private isTopLevelTile(Landroid/content/Intent;)Z
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_0

    return v9

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexxlib/drawer/DashboardCategory;

    iget-object v6, v1, Lcom/android/flymexxlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/flymexxlib/drawer/Tile;

    iget-object v6, v4, Lcom/android/flymexxlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-boolean v6, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string/jumbo v6, "SettingsDrawerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "intent is for top level tile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/flymexxlib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v6, 0x1

    return v6

    :cond_4
    sget-boolean v6, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string/jumbo v6, "SettingsDrawerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Intent is not for top level settings "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v9
.end method

.method private updateUserHandlesIfNeeded(Lcom/android/flymexxlib/drawer/Tile;)V
    .locals 5

    iget-object v1, p1, Lcom/android/flymexxlib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mUserManager:Landroid/os/UserManager;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v3, "SettingsDrawerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Delete the user: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addCategoryListener(Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoryListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public closeDrawer()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    :cond_0
    return-void
.end method

.method public getDashboardCategories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexxlib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->sTileCache:Ljava/util/HashMap;

    new-instance v0, Lcom/android/flymexxlib/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/flymexxlib/applications/InterestingConfigChanges;-><init>()V

    sput-object v0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->sConfigTracker:Lcom/android/flymexxlib/applications/InterestingConfigChanges;

    sget-object v0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->sConfigTracker:Lcom/android/flymexxlib/applications/InterestingConfigChanges;

    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    sget-object v0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->sTileCache:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/android/flymexxlib/drawer/TileUtils;->getCategories(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    return-object v0
.end method

.method protected onCategoriesChanged()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->updateDrawer()V

    iget-object v2, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoryListener;

    invoke-interface {v2}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoryListener;->onCategoriesChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    const/16 v9, 0x26

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget-object v6, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, -0x80000000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x4000000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v8}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->requestWindowFeature(I)Z

    :cond_0
    sget v5, Lcom/android/flymexxlib/R$layout;->settings_with_drawer:I

    invoke-super {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    sget v5, Lcom/android/flymexxlib/R$id;->content_header_container:I

    invoke-virtual {p0, v5}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mContentHeaderContainer:Landroid/widget/FrameLayout;

    sget v5, Lcom/android/flymexxlib/R$id;->drawer_layout:I

    invoke-virtual {p0, v5}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout;

    iput-object v5, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v5, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-nez v5, :cond_1

    return-void

    :cond_1
    sget v5, Lcom/android/flymexxlib/R$id;->action_bar:I

    invoke-virtual {p0, v5}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Toolbar;

    invoke-virtual {v1, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Toolbar;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v5, v8}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    iput-object v10, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->getDashboardCategories()Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->setActionBar(Landroid/widget/Toolbar;)V

    new-instance v5, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;

    invoke-direct {v5, p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;-><init>(Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;)V

    iput-object v5, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;

    sget v5, Lcom/android/flymexxlib/R$id;->left_drawer:I

    invoke-virtual {p0, v5}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v5, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$1;

    invoke-direct {v5, p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$1;-><init>(Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mShowingMenu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;

    invoke-virtual {v0}, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->openDrawer()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$PackageReceiver;

    invoke-virtual {p0, v0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onProfileTileOpen()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v2, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$PackageReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoriesUpdater;

    invoke-direct {v2, p0, v3}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoriesUpdater;-><init>(Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoriesUpdater;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoriesUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "show_drawer_menu"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "show_drawer_menu"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->showMenuIcon()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->isTopLevelTile(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->showMenuIcon()V

    goto :goto_0
.end method

.method protected onTileClicked(Lcom/android/flymexxlib/drawer/Tile;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->openTile(Lcom/android/flymexxlib/drawer/Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->finish()V

    :cond_0
    return-void
.end method

.method public openDrawer()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    :cond_0
    return-void
.end method

.method public openTile(Lcom/android/flymexxlib/drawer/Tile;)Z
    .locals 6

    const/4 v3, 0x0

    const v4, 0x8000

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->closeDrawer()V

    if-nez p1, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->startActivity(Landroid/content/Intent;)V

    return v5

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->updateUserHandlesIfNeeded(Lcom/android/flymexxlib/drawer/Tile;)V

    iget-object v2, p1, Lcom/android/flymexxlib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/flymexxlib/drawer/ProfileSelectDialog;->show(Landroid/app/FragmentManager;Lcom/android/flymexxlib/drawer/Tile;)V

    return v3

    :cond_1
    if-ne v1, v5, :cond_2

    iget-object v2, p1, Lcom/android/flymexxlib/drawer/Tile;->intent:Landroid/content/Intent;

    const-string/jumbo v3, "show_drawer_menu"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/flymexxlib/drawer/Tile;->intent:Landroid/content/Intent;

    const v3, 0x8000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p1, Lcom/android/flymexxlib/drawer/Tile;->intent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/flymexxlib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v2}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    return v5

    :cond_2
    iget-object v2, p1, Lcom/android/flymexxlib/drawer/Tile;->intent:Landroid/content/Intent;

    const-string/jumbo v3, "show_drawer_menu"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/flymexxlib/drawer/Tile;->intent:Landroid/content/Intent;

    const v3, 0x8000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/flymexxlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SettingsDrawerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t find tile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/flymexxlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public remCategoryListener(Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoryListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setContentHeaderView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mContentHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mContentHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 2

    sget v1, Lcom/android/flymexxlib/R$id;->content_frame:I

    invoke-virtual {p0, v1}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/android/flymexxlib/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    sget v0, Lcom/android/flymexxlib/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIsDrawerPresent(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    sget v0, Lcom/android/flymexxlib/R$id;->drawer_layout:I

    invoke-virtual {p0, v0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->updateDrawer()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    iput-object v2, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    goto :goto_0
.end method

.method public setTileEnabled(Landroid/content/ComponentName;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-ne v2, v4, :cond_2

    move v0, v4

    :goto_0
    if-ne v0, p2, :cond_0

    if-nez v2, :cond_1

    :cond_0
    if-eqz p2, :cond_3

    sget-object v3, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_1
    if-eqz p2, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v1, p1, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v3, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoriesUpdater;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoriesUpdater;-><init>(Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoriesUpdater;)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoriesUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    goto :goto_2
.end method

.method public showMenuIcon()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mShowingMenu:Z

    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/android/flymexxlib/R$drawable;->ic_menu:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/android/flymexxlib/R$string;->content_description_menu_button:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public updateDrawer()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;

    invoke-virtual {v0}, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->updateCategories()V

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;

    invoke-virtual {v0}, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto :goto_0
.end method
