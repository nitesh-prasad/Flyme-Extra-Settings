.class public Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTrigger;
.super Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;
.source "WifiTriggerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiTrigger"
.end annotation


# instance fields
.field public mConfig:Landroid/net/wifi/WifiConfiguration;

.field public mSSID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;-><init>()V

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTrigger;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTrigger;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;-><init>()V

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTrigger;->mSSID:Ljava/lang/String;

    return-void
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTrigger;->mSSID:Ljava/lang/String;

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTrigger;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-void

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTrigger;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const-string/jumbo v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getSSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTrigger;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTrigger;->mSSID:Ljava/lang/String;

    return-object v0
.end method
