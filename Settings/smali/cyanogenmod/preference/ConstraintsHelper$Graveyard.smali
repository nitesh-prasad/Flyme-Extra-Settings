.class Lcyanogenmod/preference/ConstraintsHelper$Graveyard;
.super Ljava/lang/Object;
.source "ConstraintsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/preference/ConstraintsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Graveyard"
.end annotation


# static fields
.field private static sInstance:Lcyanogenmod/preference/ConstraintsHelper$Graveyard;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeathRow:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->mDeathRow:Ljava/util/Set;

    iput-object p1, p0, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcyanogenmod/preference/ConstraintsHelper$Graveyard;
    .locals 2

    const-class v1, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->sInstance:Lcyanogenmod/preference/ConstraintsHelper$Graveyard;

    if-nez v0, :cond_0

    new-instance v0, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;

    invoke-direct {v0, p0}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->sInstance:Lcyanogenmod/preference/ConstraintsHelper$Graveyard;

    :cond_0
    sget-object v0, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->sInstance:Lcyanogenmod/preference/ConstraintsHelper$Graveyard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getParent(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;)Landroid/support/v7/preference/PreferenceGroup;
    .locals 1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->getParent(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v0

    return-object v0
.end method

.method private getParent(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)Landroid/support/v7/preference/PreferenceGroup;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-ne v1, p2, :cond_0

    return-object p1

    :cond_0
    const-class v3, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v1, p2}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->getParent(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method private removePreference(Landroid/support/v7/preference/PreferenceManager;Landroid/support/v7/preference/Preference;)V
    .locals 2

    invoke-direct {p0, p2, p2}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->getParent(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2, v0}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->getParent(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addTombstone(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->mDeathRow:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->mDeathRow:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public summonReaper(Landroid/support/v7/preference/PreferenceManager;)V
    .locals 5

    iget-object v4, p0, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->mDeathRow:Ljava/util/Set;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->mDeathRow:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v2}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->removePreference(Landroid/support/v7/preference/PreferenceManager;Landroid/support/v7/preference/Preference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->mDeathRow:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-void
.end method
