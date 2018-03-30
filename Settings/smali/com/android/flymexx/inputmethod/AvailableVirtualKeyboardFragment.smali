.class public final Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;
.super Lcom/android/flymexx/SettingsPreferenceFragment;
.source "AvailableVirtualKeyboardFragment.java"

# interfaces
.implements Lcom/android/flymexx/inputmethod/InputMethodPreference$OnSavePreferenceListener;


# instance fields
.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexx/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodSettingValues:Lcom/android/flymexx/inputmethod/InputMethodSettingValuesWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    return-void
.end method

.method private static getInputMethodIcon(Landroid/content/pm/PackageManager;Landroid/view/inputmethod/InputMethodInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v4

    :cond_1
    if-eqz v2, :cond_0

    iget v4, v3, Landroid/content/pm/ServiceInfo;->logo:I

    invoke-static {p0, v2, v4, v0}, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    iget v4, v3, Landroid/content/pm/ServiceInfo;->icon:I

    invoke-static {p0, v2, v4, v0}, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    invoke-static {p0, v2, v4, v0}, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p0, v2, v4, v0}, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    return-object v1

    :cond_5
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v4
.end method

.method private static loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    return-object v1
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 12

    iget-object v3, p0, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/flymexx/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3}, Lcom/android/flymexx/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    iget-object v3, p0, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v3, p0, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/flymexx/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3}, Lcom/android/flymexx/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_0

    const/4 v6, 0x0

    :goto_0
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_2

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v11, :cond_1

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    :goto_2
    new-instance v0, Lcom/android/flymexx/inputmethod/InputMethodPreference;

    const/4 v3, 0x1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/flymexx/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/flymexx/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V

    invoke-static {v10, v2}, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->getInputMethodIcon(Landroid/content/pm/PackageManager;Landroid/view/inputmethod/InputMethodInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/flymexx/inputmethod/InputMethodPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v7

    iget-object v3, p0, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment$1;

    invoke-direct {v5, p0, v7}, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment$1;-><init>(Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;Ljava/text/Collator;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_3

    iget-object v3, p0, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/inputmethod/InputMethodPreference;

    invoke-virtual {v0, v8}, Lcom/android/flymexx/inputmethod/InputMethodPreference;->setOrder(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-static {v0}, Lcom/android/flymexx/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v0}, Lcom/android/flymexx/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x15b

    return v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    const v2, 0x7f0c08a1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-static {v0}, Lcom/android/flymexx/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/flymexx/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/flymexx/inputmethod/InputMethodSettingValuesWrapper;

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/flymexx/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v0}, Lcom/android/flymexx/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    invoke-direct {p0}, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->updateInputMethodPreferenceViews()V

    return-void
.end method

.method public onSaveInputMethodPreference(Lcom/android/flymexx/inputmethod/InputMethodPreference;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v4

    invoke-static {p0, v3, v4, v0}, Lcom/android/flymexx/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/flymexx/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    iget-object v3, p0, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/flymexx/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3}, Lcom/android/flymexx/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    iget-object v3, p0, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/inputmethod/InputMethodPreference;

    invoke-virtual {v1}, Lcom/android/flymexx/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method
