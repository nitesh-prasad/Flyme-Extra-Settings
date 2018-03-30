.class Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader$1;
.super Ljava/lang/Object;
.source "AppInfoLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;->loadInstalledApps()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader$1;->this$0:Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;

    check-cast p2, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;

    invoke-virtual {p0, p1, p2}, Lorg/cyanogenmod/cmparts/privacyguard/AppInfoLoader$1;->compare(Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;)I
    .locals 2

    iget-boolean v0, p1, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->enabled:Z

    iget-boolean v1, p2, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->enabled:Z

    if-eq v0, v1, :cond_1

    iget-boolean v0, p1, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->title:Ljava/lang/String;

    iget-object v1, p2, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
