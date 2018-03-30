.class public Lcom/android/flymexx/applications/AppStatePowerBridge;
.super Lcom/android/flymexx/applications/AppStateBaseBridge;
.source "AppStatePowerBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/applications/AppStatePowerBridge$1;,
        Lcom/android/flymexx/applications/AppStatePowerBridge$HighPowerState;
    }
.end annotation


# static fields
.field public static final FILTER_POWER_WHITELISTED:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;


# instance fields
.field private final mBackend:Lcom/android/flymexx/fuelgauge/PowerWhitelistBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/flymexxlib/applications/ApplicationsState$CompoundFilter;

    sget-object v1, Lcom/android/flymexxlib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    new-instance v2, Lcom/android/flymexx/applications/AppStatePowerBridge$1;

    invoke-direct {v2}, Lcom/android/flymexx/applications/AppStatePowerBridge$1;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/flymexxlib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;)V

    sput-object v0, Lcom/android/flymexx/applications/AppStatePowerBridge;->FILTER_POWER_WHITELISTED:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/flymexxlib/applications/ApplicationsState;Lcom/android/flymexx/applications/AppStateBaseBridge$Callback;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/applications/AppStateBaseBridge;-><init>(Lcom/android/flymexxlib/applications/ApplicationsState;Lcom/android/flymexx/applications/AppStateBaseBridge$Callback;)V

    invoke-static {}, Lcom/android/flymexx/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/flymexx/fuelgauge/PowerWhitelistBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/AppStatePowerBridge;->mBackend:Lcom/android/flymexx/fuelgauge/PowerWhitelistBackend;

    return-void
.end method


# virtual methods
.method protected loadAllExtraInfo()V
    .locals 6

    iget-object v4, p0, Lcom/android/flymexx/applications/AppStatePowerBridge;->mAppSession:Lcom/android/flymexxlib/applications/ApplicationsState$Session;

    invoke-virtual {v4}, Lcom/android/flymexxlib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v4, p0, Lcom/android/flymexx/applications/AppStatePowerBridge;->mBackend:Lcom/android/flymexx/fuelgauge/PowerWhitelistBackend;

    iget-object v5, v1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/flymexx/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    iput-object v4, v1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/AppStatePowerBridge;->mBackend:Lcom/android/flymexx/fuelgauge/PowerWhitelistBackend;

    invoke-virtual {v0, p2}, Lcom/android/flymexx/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    iput-object v0, p1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method
