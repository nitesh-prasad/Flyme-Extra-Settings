.class final Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings$1;
.super Ljava/lang/Object;
.source "ProfilesSettings.java"

# interfaces
.implements Lorg/cyanogenmod/cmparts/PartsUpdater$Refreshable$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileManager;->isProfilesEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f080268

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcyanogenmod/app/ProfileManager;->getActiveProfile()Lcyanogenmod/app/Profile;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    return-object v3
.end method
