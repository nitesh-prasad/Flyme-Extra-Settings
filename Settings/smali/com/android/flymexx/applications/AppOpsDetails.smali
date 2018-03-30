.class public Lcom/android/flymexx/applications/AppOpsDetails;
.super Lcom/android/flymexx/SettingsPreferenceFragment;
.source "AppOpsDetails.java"


# static fields
.field private static OP_ICONS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MODE_ALLOWED:I

.field private final MODE_ASK:I

.field private final MODE_ENTRIES:[Ljava/lang/String;

.field private final MODE_IGNORED:I

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mState:Lcom/android/flymexx/applications/AppOpsState;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/applications/AppOpsDetails;)Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/applications/AppOpsDetails;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/flymexx/applications/AppOpsDetails;->positionToMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/applications/AppOpsDetails;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/flymexx/applications/AppOpsDetails;->getSummary([Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    const v4, 0x7f0200ec

    const v3, 0x7f0200e0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/flymexx/applications/AppOpsDetails;->OP_ICONS:Ljava/util/HashMap;

    sget-object v0, Lcom/android/flymexx/applications/AppOpsDetails;->OP_ICONS:Ljava/util/HashMap;

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0200df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/flymexx/applications/AppOpsDetails;->OP_ICONS:Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/flymexx/applications/AppOpsDetails;->OP_ICONS:Ljava/util/HashMap;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0200e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/flymexx/applications/AppOpsDetails;->OP_ICONS:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0200e3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/flymexx/applications/AppOpsDetails;->OP_ICONS:Ljava/util/HashMap;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0200e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/flymexx/applications/AppOpsDetails;->OP_ICONS:Ljava/util/HashMap;

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0200e5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/flymexx/applications/AppOpsDetails;->OP_ICONS:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0200e7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/flymexx/applications/AppOpsDetails;->OP_ICONS:Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/flymexx/applications/AppOpsDetails;->OP_ICONS:Ljava/util/HashMap;

    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0200de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/flymexx/applications/AppOpsDetails;->OP_ICONS:Ljava/util/HashMap;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0200ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/flymexx/applications/AppOpsDetails;->OP_ICONS:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0200e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/flymexx/applications/AppOpsDetails;->OP_ICONS:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0200dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/flymexx/applications/AppOpsDetails;->OP_ICONS:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0200eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/flymexx/applications/AppOpsDetails;->OP_ICONS:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0200e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/flymexx/applications/AppOpsDetails;->OP_ICONS:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/flymexx/applications/AppOpsDetails;->OP_ICONS:Ljava/util/HashMap;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/flymexx/applications/AppOpsDetails;->OP_ICONS:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0200e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/flymexx/applications/AppOpsDetails;->OP_ICONS:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0200e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;-><init>()V

    iput v2, p0, Lcom/android/flymexx/applications/AppOpsDetails;->MODE_ALLOWED:I

    iput v3, p0, Lcom/android/flymexx/applications/AppOpsDetails;->MODE_IGNORED:I

    iput v4, p0, Lcom/android/flymexx/applications/AppOpsDetails;->MODE_ASK:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/flymexx/applications/AppOpsDetails;->MODE_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method private getIconByPermission(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/flymexx/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/flymexx/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v2

    iget v4, v2, Landroid/content/pm/PermissionGroupInfo;->icon:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/flymexx/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/PermissionGroupInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getListPrefForEntry(Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;Landroid/graphics/drawable/Drawable;)Landroid/support/v7/preference/ListPreference;
    .locals 13

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v3

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v9

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsDetails;->mState:Lcom/android/flymexx/applications/AppOpsState;

    invoke-virtual {p1, v0}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getSwitchText(Lcom/android/flymexx/applications/AppOpsState;)Ljava/lang/CharSequence;

    move-result-object v10

    new-instance v8, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0400c4

    invoke-virtual {v8, v0}, Landroid/support/v7/preference/ListPreference;->setLayoutResource(I)V

    invoke-virtual {v8, p2}, Landroid/support/v7/preference/ListPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0082

    invoke-virtual {v8, v0}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsDetails;->MODE_ENTRIES:[Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-direct {p0, v9}, Lcom/android/flymexx/applications/AppOpsDetails;->modeToPosition(I)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v8}, Landroid/support/v7/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v0, v5

    invoke-virtual {p1, v6}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getCountsText(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v0, v5

    const/4 v1, 0x1

    invoke-virtual {p1, v6, v1}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getTimeText(Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v0, v5

    invoke-direct {p0, v0}, Lcom/android/flymexx/applications/AppOpsDetails;->getSummary([Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/flymexx/applications/AppOpsDetails$1;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/flymexx/applications/AppOpsDetails$1;-><init>(Lcom/android/flymexx/applications/AppOpsDetails;IILjava/lang/String;Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;Landroid/content/res/Resources;)V

    invoke-virtual {v8, v0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-object v8
.end method

.method private getNoBlockablePermissionsPref()Landroid/support/v7/preference/Preference;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c022a

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    return-object v0
.end method

.method private varargs getSummary([Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/util/StringJoiner;

    const-string/jumbo v2, "\n"

    invoke-direct {v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSwitchPrefForEntry(Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;Landroid/graphics/drawable/Drawable;)Landroid/support/v14/preference/SwitchPreference;
    .locals 13

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v9

    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v10

    invoke-static {v10}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v7

    iget-object v10, p0, Lcom/android/flymexx/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v10, v7, v9, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    iget-object v10, p0, Lcom/android/flymexx/applications/AppOpsDetails;->mState:Lcom/android/flymexx/applications/AppOpsState;

    invoke-virtual {p1, v10}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getSwitchText(Lcom/android/flymexx/applications/AppOpsState;)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v8, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0400c4

    invoke-virtual {v8, v10}, Landroid/support/v14/preference/SwitchPreference;->setLayoutResource(I)V

    invoke-virtual {v8, p2}, Landroid/support/v14/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v2}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v5}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getCountsText(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v11, 0x1

    invoke-virtual {p1, v5, v11}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getTimeText(Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-direct {p0, v10}, Lcom/android/flymexx/applications/AppOpsDetails;->getSummary([Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_0

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {v8, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    new-instance v10, Lcom/android/flymexx/applications/AppOpsDetails$2;

    invoke-direct {v10, p0, v7, v9, v3}, Lcom/android/flymexx/applications/AppOpsDetails$2;-><init>(Lcom/android/flymexx/applications/AppOpsDetails;IILjava/lang/String;)V

    invoke-virtual {v8, v10}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-object v8

    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private isPlatformSigned()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/flymexx/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v3, "android"

    iget-object v4, p0, Lcom/android/flymexx/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private modeToPosition(I)I
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_2
    return v0

    :pswitch_3
    const/4 v0, 0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private positionToMode(I)I
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private refreshUi()Z
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    const/16 v19, 0x0

    return v19

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/AppOpsDetails;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/flymexx/applications/AppOpsDetails;->setAppHeader(Landroid/content/pm/PackageInfo;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/applications/AppOpsDetails;->isPlatformSigned()Z

    move-result v11

    sget-object v21, Lcom/android/flymexx/applications/AppOpsState;->ALL_TEMPLATES:[Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    const/16 v19, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v20, v19

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    aget-object v18, v21, v20

    if-eqz v11, :cond_2

    sget-object v19, Lcom/android/flymexx/applications/AppOpsState;->SU_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_2

    :cond_1
    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/AppOpsDetails;->mState:Lcom/android/flymexx/applications/AppOpsState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/flymexx/applications/AppOpsState;->buildState(Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;ILjava/lang/String;Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v6}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getNumOpEntry()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    if-nez v15, :cond_3

    invoke-virtual {v6, v9}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    invoke-static {v14}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/flymexx/applications/AppOpsDetails;->getIconByPermission(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-nez v10, :cond_4

    if-eqz v14, :cond_4

    sget-object v19, Lcom/android/flymexx/applications/AppOpsDetails;->OP_ICONS:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v23

    sget-object v19, Lcom/android/flymexx/applications/AppOpsDetails;->OP_ICONS:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :cond_4
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/app/AppOpsManager;->isStrictOp(I)Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v10}, Lcom/android/flymexx/applications/AppOpsDetails;->getListPrefForEntry(Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;Landroid/graphics/drawable/Drawable;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/AppOpsDetails;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v10}, Lcom/android/flymexx/applications/AppOpsDetails;->getSwitchPrefForEntry(Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;Landroid/graphics/drawable/Drawable;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/AppOpsDetails;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/AppOpsDetails;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v19

    if-nez v19, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/applications/AppOpsDetails;->getNoBlockablePermissionsPref()Landroid/support/v7/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/applications/AppOpsDetails;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_7
    const/16 v19, 0x1

    return v19
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppOpsDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/flymexx/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x2200

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/flymexx/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v3

    :cond_1
    move-object v3, v5

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object v2, v4

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v4, "AppOpsDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception when retrieving package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v5, p0, Lcom/android/flymexx/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method private setAppHeader(Landroid/content/pm/PackageInfo;)V
    .locals 9

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/flymexx/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/flymexx/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    :try_start_0
    iget-object v6, p0, Lcom/android/flymexx/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v2, v3, v6, v5}, Lcom/android/flymexx/AppHeader;->createAppHeader(Lcom/android/flymexx/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception v4

    const-string/jumbo v6, "AppOpsDetails"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error loading application label for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v1

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/SettingsActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/flymexx/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/flymexx/applications/AppOpsState;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/flymexx/applications/AppOpsState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/flymexx/applications/AppOpsDetails;->mState:Lcom/android/flymexx/applications/AppOpsState;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/flymexx/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppOpsDetails;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/AppOpsDetails;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/flymexx/applications/AppOpsDetails;->retrieveAppEntry()Ljava/lang/String;

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsDetails;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/AppOpsDetails;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/AppOpsDetails;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/flymexx/applications/AppOpsDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/android/flymexx/applications/AppOpsDetails;->setIntentAndFinish(ZZ)V

    :cond_0
    return-void
.end method
