.class public Lcom/android/flymexx/notification/AppNotificationSettings;
.super Lcom/android/flymexx/notification/NotificationSettingsBase;
.source "AppNotificationSettings.java"


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z


# instance fields
.field private mAppRow:Lcom/android/flymexx/notification/NotificationBackend$AppRow;

.field private mDndVisualEffectsSuppressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "AppNotificationSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/flymexx/notification/AppNotificationSettings;->DEBUG:Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/flymexx/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/notification/NotificationSettingsBase;-><init>()V

    return-void
.end method

.method private applyConfigActivities(Landroid/util/ArrayMap;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/flymexx/notification/NotificationBackend$AppRow;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    sget-boolean v5, Lcom/android/flymexx/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v6, "AppNotificationSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " preference activities"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, " ;_;"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    if-nez v4, :cond_3

    sget-boolean v5, Lcom/android/flymexx/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "AppNotificationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") for unknown package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string/jumbo v5, ""

    goto :goto_0

    :cond_3
    iget-object v5, v4, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_4

    sget-boolean v5, Lcom/android/flymexx/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "AppNotificationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/flymexx/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method private collectConfigActivities(Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/flymexx/notification/NotificationBackend$AppRow;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/flymexx/notification/AppNotificationSettings;->queryNotificationConfigActivities()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/flymexx/notification/AppNotificationSettings;->applyConfigActivities(Landroid/util/ArrayMap;Ljava/util/List;)V

    return-void
.end method

.method private queryNotificationConfigActivities()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    sget-boolean v1, Lcom/android/flymexx/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AppNotificationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/flymexx/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    sget-object v2, Lcom/android/flymexx/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected checkCanBeVisible(II)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, -0x3e8

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    const/4 p2, 0x2

    :cond_1
    if-lt p2, p1, :cond_2

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x48

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/flymexx/notification/NotificationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mAppRow:Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mAppRow:Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    iget-object v1, v0, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mAppRow:Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    iget-object v2, v0, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mAppRow:Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    iget-object v3, v0, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mAppRow:Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    iget v4, v0, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->uid:I

    iget-object v0, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mAppRow:Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    iget-object v5, v0, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/flymexx/AppHeader;->createAppHeader(Lcom/android/flymexx/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/flymexx/notification/NotificationSettingsBase;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f08000d

    invoke-virtual {p0, v2}, Lcom/android/flymexx/notification/AppNotificationSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v2, "importance"

    invoke-virtual {p0, v2}, Lcom/android/flymexx/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;

    iput-object v2, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mImportance:Lcom/android/flymexx/notification/ImportanceSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v4, "bypass_dnd"

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/flymexxlib/RestrictedSwitchPreference;

    iput-object v2, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mPriority:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v4, "visibility_override"

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    iput-object v2, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mVisibilityOverride:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v4, "block"

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/flymexxlib/RestrictedSwitchPreference;

    iput-object v2, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mBlock:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v4, "silent"

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/flymexxlib/RestrictedSwitchPreference;

    iput-object v2, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mSilent:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v4, "sound_timeout"

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    iput-object v2, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mSoundTimeout:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    iget-object v2, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mBackend:Lcom/android/flymexx/notification/NotificationBackend;

    iget-object v4, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/flymexx/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mAppRow:Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    iget-object v2, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mDndVisualEffectsSuppressed:Z

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iget-object v2, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mAppRow:Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mAppRow:Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/android/flymexx/notification/AppNotificationSettings;->collectConfigActivities(Landroid/util/ArrayMap;)V

    iget-object v2, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mAppRow:Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    iget-boolean v2, v2, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->cantBlock:Z

    iget-object v3, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mAppRow:Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    iget-boolean v3, v3, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->cantSilence:Z

    iget-object v4, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mAppRow:Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    iget v4, v4, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->appImportance:I

    iget-object v5, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mAppRow:Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    iget-boolean v5, v5, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->banned:Z

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/flymexx/notification/AppNotificationSettings;->setupImportancePrefs(ZZIZ)V

    iget-object v2, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mAppRow:Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    iget-boolean v2, v2, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->appBypassDnd:Z

    invoke-virtual {p0, v2}, Lcom/android/flymexx/notification/AppNotificationSettings;->setupPriorityPref(Z)V

    iget-object v2, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mAppRow:Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    iget v2, v2, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->appVisOverride:I

    invoke-virtual {p0, v2}, Lcom/android/flymexx/notification/AppNotificationSettings;->setupVisOverridePref(I)V

    iget-object v2, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mAppRow:Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    iget-wide v2, v2, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->soundTimeout:J

    invoke-virtual {p0, v2, v3}, Lcom/android/flymexx/notification/AppNotificationSettings;->setupSoundTimeoutPref(J)V

    iget-object v2, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mAppRow:Lcom/android/flymexx/notification/NotificationBackend$AppRow;

    iget v2, v2, Lcom/android/flymexx/notification/NotificationBackend$AppRow;->appImportance:I

    invoke-virtual {p0, v2}, Lcom/android/flymexx/notification/AppNotificationSettings;->updateDependents(I)V

    :cond_1
    return-void

    :cond_2
    iget v2, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected updateDependents(I)V
    .locals 8

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/flymexx/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    iget-object v3, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    or-int/2addr v0, v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mBlock:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {v6}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mSilent:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    invoke-virtual {p0, v4, p1}, Lcom/android/flymexx/notification/AppNotificationSettings;->checkCanBeVisible(II)Z

    move-result v6

    invoke-virtual {p0, v3, v6}, Lcom/android/flymexx/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    iget-object v6, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mSilent:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    if-eq p1, v7, :cond_1

    const/4 v3, 0x6

    if-ne p1, v3, :cond_3

    :cond_1
    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setChecked(Z)V

    :cond_2
    iget-object v6, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mPriority:Lcom/android/flymexxlib/RestrictedSwitchPreference;

    const/4 v3, 0x3

    invoke-virtual {p0, v3, p1}, Lcom/android/flymexx/notification/AppNotificationSettings;->checkCanBeVisible(II)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v7, p1}, Lcom/android/flymexx/notification/AppNotificationSettings;->checkCanBeVisible(II)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mDndVisualEffectsSuppressed:Z

    :goto_1
    invoke-virtual {p0, v6, v3}, Lcom/android/flymexx/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    iget-object v3, p0, Lcom/android/flymexx/notification/AppNotificationSettings;->mVisibilityOverride:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    invoke-virtual {p0, v4, p1}, Lcom/android/flymexx/notification/AppNotificationSettings;->checkCanBeVisible(II)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_2
    invoke-virtual {p0, v3, v0}, Lcom/android/flymexx/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    return-void

    :cond_3
    move v3, v5

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_1

    :cond_6
    move v0, v5

    goto :goto_2
.end method
