.class public Lcyanogenmod/preference/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/preference/SettingsHelper$Observatory;,
        Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;
    }
.end annotation


# static fields
.field private static final CMSETTINGS_GLOBAL:Ljava/lang/String;

.field private static final CMSETTINGS_SECURE:Ljava/lang/String;

.field private static final CMSETTINGS_SYSTEM:Ljava/lang/String;

.field private static final SETTINGS_GLOBAL:Ljava/lang/String;

.field private static final SETTINGS_SECURE:Ljava/lang/String;

.field private static final SETTINGS_SYSTEM:Ljava/lang/String;

.field private static sInstance:Lcyanogenmod/preference/SettingsHelper;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mObservatory:Lcyanogenmod/preference/SettingsHelper$Observatory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_GLOBAL:Ljava/lang/String;

    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_SECURE:Ljava/lang/String;

    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_SYSTEM:Ljava/lang/String;

    sget-object v0, Lcyanogenmod/providers/CMSettings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_GLOBAL:Ljava/lang/String;

    sget-object v0, Lcyanogenmod/providers/CMSettings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_SECURE:Ljava/lang/String;

    sget-object v0, Lcyanogenmod/providers/CMSettings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_SYSTEM:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcyanogenmod/preference/SettingsHelper;->mContext:Landroid/content/Context;

    new-instance v0, Lcyanogenmod/preference/SettingsHelper$Observatory;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p1, v1}, Lcyanogenmod/preference/SettingsHelper$Observatory;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcyanogenmod/preference/SettingsHelper;->mObservatory:Lcyanogenmod/preference/SettingsHelper$Observatory;

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcyanogenmod/preference/SettingsHelper;
    .locals 2

    const-class v1, Lcyanogenmod/preference/SettingsHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcyanogenmod/preference/SettingsHelper;->sInstance:Lcyanogenmod/preference/SettingsHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcyanogenmod/preference/SettingsHelper;

    invoke-direct {v0, p0}, Lcyanogenmod/preference/SettingsHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/preference/SettingsHelper;->sInstance:Lcyanogenmod/preference/SettingsHelper;

    :cond_0
    sget-object v0, Lcyanogenmod/preference/SettingsHelper;->sInstance:Lcyanogenmod/preference/SettingsHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public varargs startWatching(Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;[Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcyanogenmod/preference/SettingsHelper;->mObservatory:Lcyanogenmod/preference/SettingsHelper$Observatory;

    invoke-virtual {v0, p1, p2}, Lcyanogenmod/preference/SettingsHelper$Observatory;->register(Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;[Landroid/net/Uri;)V

    return-void
.end method

.method public stopWatching(Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcyanogenmod/preference/SettingsHelper;->mObservatory:Lcyanogenmod/preference/SettingsHelper$Observatory;

    invoke-virtual {v0, p1}, Lcyanogenmod/preference/SettingsHelper$Observatory;->unregister(Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;)V

    return-void
.end method
