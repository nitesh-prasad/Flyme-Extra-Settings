.class public Lcom/android/flymexx/applications/AppOpsState;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/applications/AppOpsState$1;,
        Lcom/android/flymexx/applications/AppOpsState$2;,
        Lcom/android/flymexx/applications/AppOpsState$AppEntry;,
        Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;,
        Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;
    }
.end annotation


# static fields
.field public static final ALL_TEMPLATES:[Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

.field public static final BOOTUP_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

.field public static final DEVICE_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

.field public static final LABEL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCATION_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

.field public static final MEDIA_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

.field public static final MESSAGING_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

.field public static final PERSONAL_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

.field public static final RECENCY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

.field public static final SU_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;


# instance fields
.field final mAppOps:Landroid/app/AppOpsManager;

.field final mContext:Landroid/content/Context;

.field final mOpLabels:[Ljava/lang/CharSequence;

.field final mOpSummaries:[Ljava/lang/CharSequence;

.field final mPm:Landroid/content/pm/PackageManager;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x7

    const/16 v5, 0xe

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    new-array v2, v6, [Z

    fill-array-data v2, :array_1

    invoke-direct {v0, v1, v2}, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/flymexx/applications/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    new-instance v0, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    new-array v1, v7, [I

    fill-array-data v1, :array_2

    new-array v2, v7, [Z

    fill-array-data v2, :array_3

    invoke-direct {v0, v1, v2}, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/flymexx/applications/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    new-instance v0, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    const/16 v2, 0x9

    new-array v2, v2, [Z

    fill-array-data v2, :array_5

    invoke-direct {v0, v1, v2}, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/flymexx/applications/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    new-instance v0, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    new-array v1, v5, [I

    fill-array-data v1, :array_6

    new-array v2, v5, [Z

    fill-array-data v2, :array_7

    invoke-direct {v0, v1, v2}, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/flymexx/applications/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    new-instance v0, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    new-array v1, v5, [I

    fill-array-data v1, :array_8

    new-array v2, v5, [Z

    fill-array-data v2, :array_9

    invoke-direct {v0, v1, v2}, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/flymexx/applications/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    new-instance v0, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    new-array v1, v4, [I

    const/16 v2, 0x3f

    aput v2, v1, v3

    new-array v2, v4, [Z

    aput-boolean v3, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/flymexx/applications/AppOpsState;->RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    new-instance v0, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    new-array v1, v4, [I

    const/16 v2, 0x42

    aput v2, v1, v3

    new-array v2, v4, [Z

    aput-boolean v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/flymexx/applications/AppOpsState;->BOOTUP_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    new-instance v0, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    new-array v1, v4, [I

    const/16 v2, 0x45

    aput v2, v1, v3

    new-array v2, v4, [Z

    aput-boolean v3, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/flymexx/applications/AppOpsState;->SU_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    new-array v0, v7, [Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    sget-object v1, Lcom/android/flymexx/applications/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/flymexx/applications/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/flymexx/applications/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/applications/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/applications/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/applications/AppOpsState;->RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/applications/AppOpsState;->BOOTUP_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/applications/AppOpsState;->SU_TEMPLATE:Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/flymexx/applications/AppOpsState;->ALL_TEMPLATES:[Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;

    new-instance v0, Lcom/android/flymexx/applications/AppOpsState$1;

    invoke-direct {v0}, Lcom/android/flymexx/applications/AppOpsState$1;-><init>()V

    sput-object v0, Lcom/android/flymexx/applications/AppOpsState;->RECENCY_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/flymexx/applications/AppOpsState$2;

    invoke-direct {v0}, Lcom/android/flymexx/applications/AppOpsState$2;-><init>()V

    sput-object v0, Lcom/android/flymexx/applications/AppOpsState;->LABEL_COMPARATOR:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0xa
        0xc
        0x29
        0x2a
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x1d
        0x1e
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 4
        0xe
        0x10
        0x11
        0x12
        0x13
        0xf
        0x14
        0x15
        0x16
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_6
    .array-data 4
        0x3
        0x1a
        0x1b
        0x1c
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x2c
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_8
    .array-data 4
        0xb
        0x19
        0xd
        0x17
        0x18
        0x28
        0x2e
        0x2f
        0x31
        0x32
        0x40
        0x41
        0x43
        0x44
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/flymexx/applications/AppOpsState;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/flymexx/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/AppOpsState;->mOpSummaries:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    const-string/jumbo v0, "appops_manager"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/AppOpsState;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/flymexx/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;",
            ">;",
            "Landroid/app/AppOpsManager$PackageOps;",
            "Lcom/android/flymexx/applications/AppOpsState$AppEntry;",
            "Landroid/app/AppOpsManager$OpEntry;",
            "ZI)V"
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    if-eqz p5, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;

    invoke-virtual {v2}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/flymexx/applications/AppOpsState$AppEntry;

    move-result-object v4

    if-ne v4, p3, :cond_2

    invoke-virtual {v2}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-ne v3, v1, :cond_2

    invoke-virtual {v2, p4}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v4

    invoke-virtual {p3, v4}, Lcom/android/flymexx/applications/AppOpsState$AppEntry;->getOpSwitch(I)Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p4}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    return-void

    :cond_3
    new-instance v0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;

    invoke-direct {v0, p2, p4, p3, p6}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;-><init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/flymexx/applications/AppOpsState$AppEntry;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Z)Lcom/android/flymexx/applications/AppOpsState$AppEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/flymexx/applications/AppOpsState$AppEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Z)",
            "Lcom/android/flymexx/applications/AppOpsState$AppEntry;"
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p4, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/flymexx/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2200

    invoke-virtual {v2, p3, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    :cond_0
    if-eqz p5, :cond_2

    invoke-direct {p0}, Lcom/android/flymexx/applications/AppOpsState;->shouldShowUserApps()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    return-object v5

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AppOpsState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to find info for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    invoke-direct {p0}, Lcom/android/flymexx/applications/AppOpsState;->shouldShowSystemApps()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    return-object v5

    :cond_2
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/applications/AppOpsState$AppEntry;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/flymexx/applications/AppOpsState$AppEntry;

    invoke-direct {v0, p0, p4}, Lcom/android/flymexx/applications/AppOpsState$AppEntry;-><init>(Lcom/android/flymexx/applications/AppOpsState;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v0, p1}, Lcom/android/flymexx/applications/AppOpsState$AppEntry;->loadLabel(Landroid/content/Context;)V

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method private isPrivacyGuardOp(I)Z
    .locals 5

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->PRIVACY_GUARD_OP_STATES:[I

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget v0, v3, v1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private shouldShowSystemApps()Z
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsState;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "show_system_apps"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private shouldShowUserApps()Z
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsState;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "show_user_apps"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public buildState(Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;ILjava/lang/String;Ljava/util/Comparator;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/flymexx/applications/AppOpsState;->buildState(Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;ILjava/lang/String;Ljava/util/Comparator;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public buildState(Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;ILjava/lang/String;Ljava/util/Comparator;Z)Ljava/util/List;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/flymexx/applications/AppOpsState;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x46

    new-array v0, v3, [I

    move-object/from16 v32, v0

    new-instance v39, Ljava/util/HashSet;

    invoke-direct/range {v39 .. v39}, Ljava/util/HashSet;-><init>()V

    const/16 v29, 0x0

    :goto_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;->ops:[I

    array-length v3, v3

    move/from16 v0, v29

    if-ge v0, v3, :cond_3

    if-eqz p5, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v29

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/flymexx/applications/AppOpsState;->isPrivacyGuardOp(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v29

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v29

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;->showPerms:[Z

    aget-boolean v3, v3, v29

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v29

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_1

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v29, v29, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v29

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v29

    aput v29, v32, v3

    goto :goto_1

    :cond_3
    if-nez p3, :cond_5

    const/4 v8, 0x1

    :goto_2
    if-eqz p3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;->ops:[I

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v1, v6}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v38

    :goto_3
    if-eqz v38, :cond_b

    const/16 v29, 0x0

    :goto_4
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v29

    if-ge v0, v3, :cond_b

    move-object/from16 v0, v38

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/flymexx/applications/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Z)Lcom/android/flymexx/applications/AppOpsState$AppEntry;

    move-result-object v12

    if-nez v12, :cond_7

    :cond_4
    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;->ops:[I

    invoke-virtual {v3, v6}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v38

    goto :goto_3

    :cond_7
    const/16 v30, 0x0

    :goto_5
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v30

    if-ge v0, v3, :cond_4

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v3

    move/from16 v0, v30

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$OpEntry;

    if-eqz p5, :cond_8

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_6
    add-int/lit8 v30, v30, 0x1

    goto :goto_5

    :cond_8
    if-nez p3, :cond_9

    const/4 v14, 0x1

    :goto_7
    if-nez p3, :cond_a

    const/4 v15, 0x0

    :goto_8
    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v15}, Lcom/android/flymexx/applications/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/flymexx/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    goto :goto_6

    :cond_9
    const/4 v14, 0x0

    goto :goto_7

    :cond_a
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v3

    aget v15, v32, v3

    goto :goto_8

    :cond_b
    if-eqz p3, :cond_d

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x1000

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v37

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    const/16 v29, 0x0

    :goto_a
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v29

    if-ge v0, v3, :cond_16

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/flymexx/applications/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Z)Lcom/android/flymexx/applications/AppOpsState$AppEntry;

    move-result-object v12

    if-nez v12, :cond_e

    :cond_c
    add-int/lit8 v29, v29, 0x1

    goto :goto_a

    :cond_d
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v26

    goto :goto_9

    :cond_e
    const/16 v27, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_c

    const/16 v30, 0x0

    :goto_b
    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v30

    if-ge v0, v3, :cond_c

    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v3, :cond_10

    if-nez p5, :cond_10

    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v30

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_10

    :cond_f
    add-int/lit8 v30, v30, 0x1

    goto :goto_b

    :cond_10
    const/16 v31, 0x0

    :goto_c
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v31

    if-ge v0, v3, :cond_f

    move-object/from16 v0, v35

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v6, v6, v30

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_11
    :goto_d
    add-int/lit8 v31, v31, 0x1

    goto :goto_c

    :cond_12
    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/android/flymexx/applications/AppOpsState$AppEntry;->hasOp(I)Z

    move-result v3

    if-nez v3, :cond_11

    if-nez v27, :cond_13

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Landroid/app/AppOpsManager$PackageOps;

    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v27

    invoke-direct {v11, v3, v6, v0}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    :cond_13
    new-instance v13, Landroid/app/AppOpsManager$OpEntry;

    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v13 .. v24}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;II)V

    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_14

    const/4 v14, 0x1

    :goto_e
    if-nez p3, :cond_15

    const/4 v15, 0x0

    :goto_f
    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v15}, Lcom/android/flymexx/applications/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/flymexx/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    goto :goto_d

    :cond_14
    const/4 v14, 0x0

    goto :goto_e

    :cond_15
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v3

    aget v15, v32, v3

    goto :goto_f

    :cond_16
    move-object/from16 v0, p4

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v10

    :catch_0
    move-exception v28

    goto/16 :goto_9
.end method

.method public buildState(Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;ILjava/lang/String;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;",
            "I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    sget-object v4, Lcom/android/flymexx/applications/AppOpsState;->RECENCY_COMPARATOR:Ljava/util/Comparator;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/flymexx/applications/AppOpsState;->buildState(Lcom/android/flymexx/applications/AppOpsState$OpsTemplate;ILjava/lang/String;Ljava/util/Comparator;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method
