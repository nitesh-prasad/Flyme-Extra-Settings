.class public Lcyanogenmod/preference/ConstraintsHelper;
.super Ljava/lang/Object;
.source "ConstraintsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/preference/ConstraintsHelper$Graveyard;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAttrs:Landroid/util/AttributeSet;

.field private mAvailable:Z

.field private final mContext:Landroid/content/Context;

.field private final mPref:Landroid/support/v7/preference/Preference;

.field private mReplacesKey:Ljava/lang/String;

.field private mSummaryMinLines:I

.field private mVerifyIntent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ConstraintsHelper"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcyanogenmod/preference/ConstraintsHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/support/v7/preference/Preference;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mAvailable:Z

    iput-boolean v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mVerifyIntent:Z

    iput v3, p0, Lcyanogenmod/preference/ConstraintsHelper;->mSummaryMinLines:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mReplacesKey:Ljava/lang/String;

    iput-object p1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcyanogenmod/preference/ConstraintsHelper;->mAttrs:Landroid/util/AttributeSet;

    iput-object p3, p0, Lcyanogenmod/preference/ConstraintsHelper;->mPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcyanogenmod/platform/R$styleable;->cm_SelfRemovingPreference:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mSummaryMinLines:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mReplacesKey:Ljava/lang/String;

    invoke-direct {p0}, Lcyanogenmod/preference/ConstraintsHelper;->checkConstraints()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcyanogenmod/preference/ConstraintsHelper;->setAvailable(Z)V

    const-string/jumbo v1, "ConstraintsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "construct key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/preference/ConstraintsHelper;->mPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " available="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcyanogenmod/preference/ConstraintsHelper;->mAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkConstraints()Z
    .locals 13

    iget-object v10, p0, Lcyanogenmod/preference/ConstraintsHelper;->mAttrs:Landroid/util/AttributeSet;

    if-nez v10, :cond_0

    const/4 v10, 0x1

    return v10

    :cond_0
    iget-object v10, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, p0, Lcyanogenmod/preference/ConstraintsHelper;->mAttrs:Landroid/util/AttributeSet;

    sget-object v12, Lcyanogenmod/platform/R$styleable;->cm_SelfRemovingPreference:[I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v10, 0x4

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v10

    :cond_1
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-direct {p0, v6}, Lcyanogenmod/preference/ConstraintsHelper;->isNegated(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_2
    iget-object v10, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Lcyanogenmod/preference/ConstraintsHelper;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-ne v1, v2, :cond_3

    const/4 v10, 0x0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v10

    :cond_3
    const/4 v10, 0x5

    :try_start_2
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v3}, Lcyanogenmod/preference/ConstraintsHelper;->isNegated(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_4
    iget-object v10, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    invoke-static {v10, v3}, Lcyanogenmod/preference/ConstraintsHelper;->resolveIntent(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-ne v1, v2, :cond_5

    const/4 v10, 0x0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v10

    :cond_5
    const/4 v10, 0x1

    :try_start_3
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-direct {p0, v4}, Lcyanogenmod/preference/ConstraintsHelper;->isNegated(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_6
    const-string/jumbo v10, "cmhardware:"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v10

    const-string/jumbo v11, "cmhardware:"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    :goto_0
    if-ne v1, v2, :cond_8

    const/4 v10, 0x0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v10

    :cond_7
    :try_start_4
    iget-object v10, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    invoke-static {v10, v4}, Lcyanogenmod/preference/ConstraintsHelper;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_8
    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-direct {p0, v7}, Lcyanogenmod/preference/ConstraintsHelper;->isNegated(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :cond_9
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    :goto_1
    if-ne v1, v2, :cond_b

    const/4 v10, 0x0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v10

    :cond_a
    const/4 v1, 0x0

    goto :goto_1

    :cond_b
    const/4 v10, 0x2

    :try_start_5
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    if-eqz v8, :cond_d

    iget v10, v8, Landroid/util/TypedValue;->type:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_c

    iget v10, v8, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, v8, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v10

    if-nez v10, :cond_d

    const/4 v10, 0x0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v10

    :cond_c
    :try_start_6
    iget v10, v8, Landroid/util/TypedValue;->type:I

    const/16 v11, 0x12

    if-ne v10, v11, :cond_d

    iget v10, v8, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_d

    iget v10, v8, Landroid/util/TypedValue;->data:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v10, :cond_d

    const/4 v10, 0x0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v10

    :cond_d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v10, 0x1

    return v10

    :catchall_0
    move-exception v10

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v10
.end method

.method private checkIntent()V
    .locals 3

    iget-object v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcyanogenmod/preference/ConstraintsHelper;->resolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->get(Landroid/content/Context;)Lcyanogenmod/preference/ConstraintsHelper$Graveyard;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/preference/ConstraintsHelper;->mPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->addTombstone(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mAvailable:Z

    :cond_0
    return-void
.end method

.method public static getAttr(Landroid/content/Context;II)I
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    return p1

    :cond_0
    return p2
.end method

.method public static hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isNegated(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "!"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    return v4

    :catch_0
    move-exception v0

    return v4
.end method

.method public static resolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 8

    const/4 v7, 0x0

    sget-boolean v4, Lcyanogenmod/preference/ConstraintsHelper;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "ConstraintsHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resolveIntent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/high16 v5, 0x100000

    invoke-virtual {v0, p1, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    sget-boolean v4, Lcyanogenmod/preference/ConstraintsHelper;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "ConstraintsHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resolveInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    return v4

    :cond_3
    return v7
.end method

.method public static resolveIntent(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcyanogenmod/preference/ConstraintsHelper;->resolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcyanogenmod/preference/ConstraintsHelper;->mAvailable:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-direct {p0}, Lcyanogenmod/preference/ConstraintsHelper;->checkIntent()V

    invoke-virtual {p0}, Lcyanogenmod/preference/ConstraintsHelper;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mReplacesKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->get(Landroid/content/Context;)Lcyanogenmod/preference/ConstraintsHelper$Graveyard;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/preference/ConstraintsHelper;->mReplacesKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->addTombstone(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->get(Landroid/content/Context;)Lcyanogenmod/preference/ConstraintsHelper$Graveyard;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/preference/ConstraintsHelper;->mPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->summonReaper(Landroid/support/v7/preference/PreferenceManager;)V

    invoke-virtual {p0}, Lcyanogenmod/preference/ConstraintsHelper;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mSummaryMinLines:I

    if-lez v1, :cond_2

    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mSummaryMinLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    :cond_2
    return-void
.end method

.method public setAvailable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mAvailable:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->get(Landroid/content/Context;)Lcyanogenmod/preference/ConstraintsHelper$Graveyard;

    move-result-object v0

    iget-object v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->addTombstone(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
