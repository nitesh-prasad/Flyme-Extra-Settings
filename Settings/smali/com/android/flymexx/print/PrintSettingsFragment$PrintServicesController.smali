.class final Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrintServicesController"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/printservice/PrintServiceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/print/PrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/flymexx/print/PrintSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/flymexx/print/PrintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexx/print/PrintSettingsFragment;Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;-><init>(Lcom/android/flymexx/print/PrintSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/flymexx/print/PrintSettingsFragment;

    invoke-virtual {v1}, Lcom/android/flymexx/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "print"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/print/PrintServicesLoader;

    iget-object v2, p0, Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/flymexx/print/PrintSettingsFragment;

    invoke-virtual {v2}, Lcom/android/flymexx/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Landroid/print/PrintServicesLoader;-><init>(Landroid/print/PrintManager;Landroid/content/Context;I)V

    return-object v1

    :cond_0
    return-object v3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/flymexx/print/PrintSettingsFragment;

    invoke-virtual {v10}, Lcom/android/flymexx/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/flymexx/print/PrintSettingsFragment;

    invoke-static {v11}, Lcom/android/flymexx/print/PrintSettingsFragment;->-get1(Lcom/android/flymexx/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    return-void

    :cond_0
    iget-object v10, p0, Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/flymexx/print/PrintSettingsFragment;

    invoke-virtual {v10}, Lcom/android/flymexx/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "print_services_category"

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/flymexx/print/PrintSettingsFragment;

    invoke-virtual {v10}, Lcom/android/flymexx/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/flymexx/print/PrintSettingsFragment;

    invoke-static {v11}, Lcom/android/flymexx/print/PrintSettingsFragment;->-get1(Lcom/android/flymexx/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    iget-object v10, p0, Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/flymexx/print/PrintSettingsFragment;

    invoke-static {v10}, Lcom/android/flymexx/print/PrintSettingsFragment;->-get1(Lcom/android/flymexx/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    iget-object v10, p0, Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/flymexx/print/PrintSettingsFragment;

    invoke-virtual {v10}, Lcom/android/flymexx/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_4

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/printservice/PrintServiceInfo;

    iget-object v10, p0, Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/flymexx/print/PrintSettingsFragment;

    invoke-virtual {v10}, Lcom/android/flymexx/print/PrintSettingsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/flymexx/print/PrintSettingsFragment;

    invoke-virtual {v11}, Lcom/android/flymexx/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v8}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    const-class v10, Lcom/android/flymexx/print/PrintServiceSettingsFragment;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/PreferenceScreen;->setPersistent(Z)V

    invoke-virtual {v8}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/flymexx/print/PrintSettingsFragment;

    const v11, 0x7f0c0945

    invoke-virtual {v10, v11}, Lcom/android/flymexx/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v8}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v7, v2}, Landroid/support/v7/preference/PreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v10, "EXTRA_CHECKED"

    invoke-virtual {v8}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v11

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v10, "EXTRA_TITLE"

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/flymexx/print/PrintSettingsFragment;

    invoke-static {v10}, Lcom/android/flymexx/print/PrintSettingsFragment;->-get1(Lcom/android/flymexx/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v10, p0, Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/flymexx/print/PrintSettingsFragment;

    const v11, 0x7f0c0946

    invoke-virtual {v10, v11}, Lcom/android/flymexx/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v10, p0, Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/flymexx/print/PrintSettingsFragment;

    invoke-static {v10}, Lcom/android/flymexx/print/PrintSettingsFragment;->-wrap0(Lcom/android/flymexx/print/PrintSettingsFragment;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v10, p0, Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/flymexx/print/PrintSettingsFragment;

    invoke-static {v10}, Lcom/android/flymexx/print/PrintSettingsFragment;->-get1(Lcom/android/flymexx/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/flymexx/print/PrintSettingsFragment;

    invoke-virtual {v0}, Lcom/android/flymexx/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/flymexx/print/PrintSettingsFragment;

    invoke-static {v1}, Lcom/android/flymexx/print/PrintSettingsFragment;->-get1(Lcom/android/flymexx/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method
