.class public Lcyanogenmod/preference/RemotePreference;
.super Lcyanogenmod/preference/SelfRemovingPreference;
.source "RemotePreference.java"

# interfaces
.implements Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcyanogenmod/preference/RemotePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/preference/RemotePreference;->TAG:Ljava/lang/String;

    sget-object v0, Lcyanogenmod/preference/RemotePreference;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcyanogenmod/preference/RemotePreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget v0, Landroid/support/v7/preference/R$attr;->preferenceScreenStyle:I

    const v1, 0x101008b

    invoke-static {p1, v0, v1}, Lcyanogenmod/preference/ConstraintsHelper;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcyanogenmod/preference/RemotePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcyanogenmod/preference/RemotePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcyanogenmod/preference/SelfRemovingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcyanogenmod/preference/RemotePreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getReceiverIntent()Landroid/content/Intent;
    .locals 15

    const/4 v14, 0x0

    invoke-virtual {p0}, Lcyanogenmod/preference/RemotePreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v11, Lcyanogenmod/preference/RemotePreference;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "No target intent specified in preference!"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v14

    :cond_0
    iget-object v11, p0, Lcyanogenmod/preference/RemotePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    const v12, 0x100080

    invoke-virtual {v3, v0, v12, v11}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_1

    sget-object v11, Lcyanogenmod/preference/RemotePreference;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "No activity found for: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    sget-object v11, Lcyanogenmod/preference/RemotePreference;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ResolveInfo "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    const-string/jumbo v11, "org.cyanogenmod.settings.summary.receiver"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string/jumbo v11, "org.cyanogenmod.settings.summary.receiver"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcyanogenmod/preference/RemotePreference;->getRemoteKey(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    sget-boolean v11, Lcyanogenmod/preference/RemotePreference;->DEBUG:Z

    if-eqz v11, :cond_3

    sget-object v11, Lcyanogenmod/preference/RemotePreference;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getReceiverIntent class="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " package="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " key="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v6, :cond_2

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v11, "cyanogenmod.intent.action.UPDATE_PREFERENCE"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v11, Landroid/content/ComponentName;

    invoke-direct {v11, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v11, ":cm:pref_key"

    invoke-virtual {v10, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v10

    :cond_4
    return-object v14
.end method

.method protected getRemoteKey(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v2, "org.cyanogenmod.settings.summary.key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcyanogenmod/preference/RemotePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public onAttached()V
    .locals 2

    invoke-super {p0}, Lcyanogenmod/preference/SelfRemovingPreference;->onAttached()V

    invoke-virtual {p0}, Lcyanogenmod/preference/RemotePreference;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyanogenmod/preference/RemotePreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcyanogenmod/preference/RemotePreferenceManager;->get(Landroid/content/Context;)Lcyanogenmod/preference/RemotePreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcyanogenmod/preference/RemotePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcyanogenmod/preference/RemotePreferenceManager;->attach(Ljava/lang/String;Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;)V

    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 2

    invoke-super {p0}, Lcyanogenmod/preference/SelfRemovingPreference;->onDetached()V

    iget-object v0, p0, Lcyanogenmod/preference/RemotePreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcyanogenmod/preference/RemotePreferenceManager;->get(Landroid/content/Context;)Lcyanogenmod/preference/RemotePreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcyanogenmod/preference/RemotePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcyanogenmod/preference/RemotePreferenceManager;->detach(Ljava/lang/String;Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;)V

    return-void
.end method

.method public onRemoteUpdated(Landroid/os/Bundle;)V
    .locals 4

    sget-boolean v1, Lcyanogenmod/preference/RemotePreference;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcyanogenmod/preference/RemotePreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRemoteUpdated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v1, ":cm:pref_enabled"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, ":cm:pref_enabled"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcyanogenmod/preference/RemotePreference;->isAvailable()Z

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcyanogenmod/preference/RemotePreference;->setAvailable(Z)V

    :cond_1
    invoke-virtual {p0}, Lcyanogenmod/preference/RemotePreference;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, ":cm:pref_summary"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcyanogenmod/preference/RemotePreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
