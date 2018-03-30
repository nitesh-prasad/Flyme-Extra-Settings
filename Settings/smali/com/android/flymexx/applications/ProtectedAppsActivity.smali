.class public Lcom/android/flymexx/applications/ProtectedAppsActivity;
.super Landroid/app/Activity;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/applications/ProtectedAppsActivity$1;,
        Lcom/android/flymexx/applications/ProtectedAppsActivity$AppEntry;,
        Lcom/android/flymexx/applications/ProtectedAppsActivity$AppProtectList;,
        Lcom/android/flymexx/applications/ProtectedAppsActivity$AppViewHolder;,
        Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;,
        Lcom/android/flymexx/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;
    }
.end annotation


# instance fields
.field private mAppClickListener:Landroid/view/View$OnClickListener;

.field private mAppsAdapter:Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mOrientation:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProtect:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mProtectedApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIntent:Landroid/content/Intent;

.field private mUserIsAuth:Z

.field private mWaitUserAuth:Z


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/applications/ProtectedAppsActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mAppClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/applications/ProtectedAppsActivity;)Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/applications/ProtectedAppsActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/applications/ProtectedAppsActivity;Landroid/content/ComponentName;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->getProtectedStateFromComponentName(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/applications/ProtectedAppsActivity;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->refreshApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/flymexx/applications/ProtectedAppsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->updateProtectedComponentsList()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    iput-boolean v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mProtectedApps:Ljava/util/HashSet;

    new-instance v0, Lcom/android/flymexx/applications/ProtectedAppsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/applications/ProtectedAppsActivity$1;-><init>(Lcom/android/flymexx/applications/ProtectedAppsActivity;)V

    iput-object v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mAppClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private getProtectedStateFromComponentName(Landroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private launchTargetActivityInfoAndFinish()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->finish()V

    return-void
.end method

.method private refreshApps()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexx/applications/ProtectedAppsActivity$AppEntry;",
            ">;"
        }
    .end annotation

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    new-instance v5, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v6, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v5, v6}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    new-instance v5, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppEntry;

    invoke-direct {v5, p0, v2}, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppEntry;-><init>(Lcom/android/flymexx/applications/ProtectedAppsActivity;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private reset()V
    .locals 13

    const/4 v12, 0x1

    const/4 v8, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "protected_components"

    invoke-static {v5, v7}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    new-instance v4, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppProtectList;

    invoke-direct {v4, p0, v1, v12}, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppProtectList;-><init>(Lcom/android/flymexx/applications/ProtectedAppsActivity;Ljava/util/ArrayList;Z)V

    new-instance v6, Lcom/android/flymexx/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;

    invoke-direct {v6, p0, p0}, Lcom/android/flymexx/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;-><init>(Lcom/android/flymexx/applications/ProtectedAppsActivity;Landroid/content/Context;)V

    new-array v7, v12, [Lcom/android/flymexx/applications/ProtectedAppsActivity$AppProtectList;

    aput-object v4, v7, v8

    invoke-virtual {v6, v7}, Lcom/android/flymexx/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    const-string/jumbo v7, "\\|"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v7, v8

    :goto_0
    if-ge v7, v10, :cond_0

    aget-object v2, v9, v7

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private resetLock()V
    .locals 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "recreate_pattern_lock"

    const-class v2, Lcom/android/flymexx/applications/LockPatternActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private updateProtectedComponentsList()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "protected_components"

    invoke-static {v4, v5}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    :cond_0
    const-string/jumbo v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/util/HashSet;

    array-length v5, v2

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    iput-object v4, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mProtectedApps:Ljava/util/HashSet;

    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v2, v4

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iput-boolean v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    iget-object v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mTargetIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->launchTargetActivityInfoAndFinish()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->finish()V

    goto :goto_0

    :pswitch_3
    iput-boolean v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    iput-boolean v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "com.android.flymexx.PROTECTED_APP_TARGET_INTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "com.android.flymexx.PROTECTED_APP_TARGET_INTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mTargetIntent:Landroid/content/Intent;

    :cond_0
    const v2, 0x7f0c024e

    invoke-virtual {p0, v2}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->setTitle(I)V

    const v2, 0x7f04008d

    invoke-virtual {p0, v2}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v2, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;

    const v3, 0x7f04008e

    invoke-direct {v2, p0, p0, v3}, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;-><init>(Lcom/android/flymexx/applications/ProtectedAppsActivity;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;

    iget-object v2, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-virtual {v2, v4}, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;->setNotifyOnChange(Z)V

    const v2, 0x7f110149

    invoke-virtual {p0, v2}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mProtect:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    const-string/jumbo v2, "needs_unlock"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    const-string/jumbo v2, "target_intent"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mTargetIntent:Landroid/content/Intent;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mOrientation:I

    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    if-nez v2, :cond_3

    iput-boolean v4, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/flymexx/applications/LockPatternActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1, v4}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mTargetIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->launchTargetActivityInfoAndFinish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7f0c024c

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0c024d

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->reset()V

    return v1

    :sswitch_1
    invoke-direct {p0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->resetLock()V

    return v1

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->finish()V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Lcom/android/flymexx/applications/ProtectedAppsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/flymexx/applications/ProtectedAppsActivity$2;-><init>(Lcom/android/flymexx/applications/ProtectedAppsActivity;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-direct {p0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->updateProtectedComponentsList()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "needs_unlock"

    iget-boolean v1, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "target_intent"

    iget-object v1, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
