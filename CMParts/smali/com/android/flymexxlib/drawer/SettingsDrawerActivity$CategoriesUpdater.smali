.class Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoriesUpdater;
.super Landroid/os/AsyncTask;
.source "SettingsDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoriesUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/flymexxlib/drawer/DashboardCategory;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;


# direct methods
.method private constructor <init>(Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoriesUpdater;->this$0:Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoriesUpdater;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoriesUpdater;-><init>(Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoriesUpdater;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexxlib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->-get1()Lcom/android/flymexxlib/applications/InterestingConfigChanges;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoriesUpdater;->this$0:Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;

    invoke-virtual {v1}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->-get3()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoriesUpdater;->this$0:Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;

    invoke-static {}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->-get3()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexxlib/drawer/TileUtils;->getCategories(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoriesUpdater;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexxlib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/drawer/DashboardCategory;

    const/4 v2, 0x0

    :goto_1
    iget-object v5, v0, Lcom/android/flymexxlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v5, v0, Lcom/android/flymexxlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/flymexxlib/drawer/Tile;

    invoke-static {}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->-get2()Landroid/util/ArraySet;

    move-result-object v5

    iget-object v6, v4, Lcom/android/flymexxlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/flymexxlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v2, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->-set0(Ljava/util/List;)Ljava/util/List;

    iget-object v5, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoriesUpdater;->this$0:Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;

    invoke-virtual {v5}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->onCategoriesChanged()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-static {}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->-get1()Lcom/android/flymexxlib/applications/InterestingConfigChanges;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->-get3()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoriesUpdater;->this$0:Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;

    invoke-virtual {v0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->getDashboardCategories()Ljava/util/List;

    :cond_1
    return-void
.end method
