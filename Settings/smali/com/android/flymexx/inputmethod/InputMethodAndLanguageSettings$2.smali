.class final Lcom/android/flymexx/inputmethod/InputMethodAndLanguageSettings$2;
.super Lcom/android/flymexx/search/BaseSearchIndexProvider;
.source "InputMethodAndLanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexx/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const v25, 0x7f0c088e

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/android/flymexx/inputmethod/InputMethodAndLanguageSettings;->-wrap1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    new-instance v10, Lcom/android/flymexx/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/flymexx/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v25, "phone_language"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v25, 0x7f0c0890

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v10, Lcom/android/flymexx/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/flymexx/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v25, "spellcheckers_settings"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v25, 0x7f0c0b2f

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const v25, 0x7f0c0c1b

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Lcom/android/flymexx/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v25

    if-eqz v25, :cond_1

    new-instance v10, Lcom/android/flymexx/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/flymexx/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v25, "user_dict_settings"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v25, 0x7f0c08b5

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/flymexx/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/flymexx/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/flymexx/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/android/flymexx/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Lcom/android/flymexx/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/flymexx/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v25, "current_input_method"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v25, 0x7f0c08cd

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v3, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    iput-object v3, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v25, "input_method"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v9}, Lcom/android/flymexx/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v16

    if-nez v16, :cond_2

    const/4 v14, 0x0

    :goto_0
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v14, :cond_3

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v15, v13, v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1, v13}, Lcom/android/flymexx/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameListAsSentence(Ljava/util/List;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v21

    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/android/flymexx/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/flymexx/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v14

    goto :goto_0

    :cond_3
    const-string/jumbo v25, "input"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/input/InputManager;

    const/4 v6, 0x0

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v5

    const/4 v7, 0x0

    :goto_2
    array-length v0, v5

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v7, v0, :cond_7

    aget v25, v5, v7

    invoke-static/range {v25 .. v25}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v25

    if-nez v25, :cond_4

    invoke-virtual {v4}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v25

    if-eqz v25, :cond_4

    const/4 v6, 0x1

    invoke-virtual {v4}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v8

    invoke-virtual {v12, v8}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_5

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v17

    :goto_3
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v23

    :goto_4
    new-instance v10, Lcom/android/flymexx/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/flymexx/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    const/16 v17, 0x0

    goto :goto_3

    :cond_6
    const v25, 0x7f0c08b3

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_4

    :cond_7
    if-eqz v6, :cond_8

    new-instance v10, Lcom/android/flymexx/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/flymexx/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v25, "builtin_keyboard_settings"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v25, 0x7f0c08da

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    new-instance v24, Landroid/speech/tts/TtsEngines;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v24 .. v24}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_9

    new-instance v10, Lcom/android/flymexx/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/flymexx/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v25, "tts_settings"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v25, 0x7f0c006f

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const v25, 0x7f0c0c1d

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    new-instance v10, Lcom/android/flymexx/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/flymexx/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v25, "pointer_settings_category"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v25, 0x7f0c08ab

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/android/flymexx/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/flymexx/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v25, "pointer_speed"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v25, 0x7f0c08ac

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v25

    const/16 v26, 0x800

    invoke-virtual/range {v25 .. v26}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v25

    if-eqz v25, :cond_a

    new-instance v10, Lcom/android/flymexx/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/flymexx/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v25, "touch_hovering"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v25, 0x7f0c025e

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v25, 0x7f0c025f

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    const v25, 0x7f0c025f

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-static {}, Lcom/android/flymexx/inputmethod/InputMethodAndLanguageSettings;->-wrap0()Z

    move-result v25

    if-eqz v25, :cond_b

    new-instance v10, Lcom/android/flymexx/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/flymexx/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v25, "vibrate_input_devices"

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v25, 0x7f0c08ae

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v25, 0x7f0c08af

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    const v25, 0x7f0c08af

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/android/flymexx/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-object v11
.end method
