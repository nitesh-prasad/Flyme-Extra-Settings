.class public Lcom/android/flymexx/applications/VrListenerSettings;
.super Lcom/android/flymexx/utils/ManagedServiceSettings;
.source "VrListenerSettings.java"


# static fields
.field private static final CONFIG:Lcom/android/flymexx/utils/ManagedServiceSettings$Config;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/flymexx/applications/VrListenerSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/flymexx/applications/VrListenerSettings;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/flymexx/applications/VrListenerSettings;->getVrListenerConfig()Lcom/android/flymexx/utils/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/flymexx/applications/VrListenerSettings;->CONFIG:Lcom/android/flymexx/utils/ManagedServiceSettings$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/utils/ManagedServiceSettings;-><init>()V

    return-void
.end method

.method private static final getVrListenerConfig()Lcom/android/flymexx/utils/ManagedServiceSettings$Config;
    .locals 2

    new-instance v0, Lcom/android/flymexx/utils/ManagedServiceSettings$Config;

    invoke-direct {v0}, Lcom/android/flymexx/utils/ManagedServiceSettings$Config;-><init>()V

    sget-object v1, Lcom/android/flymexx/applications/VrListenerSettings;->TAG:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/flymexx/utils/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    const-string/jumbo v1, "enabled_vr_listeners"

    iput-object v1, v0, Lcom/android/flymexx/utils/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    const-string/jumbo v1, "android.service.vr.VrListenerService"

    iput-object v1, v0, Lcom/android/flymexx/utils/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    const-string/jumbo v1, "android.permission.BIND_VR_LISTENER_SERVICE"

    iput-object v1, v0, Lcom/android/flymexx/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    const-string/jumbo v1, "vr listener"

    iput-object v1, v0, Lcom/android/flymexx/utils/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    const v1, 0x7f0c0c89

    iput v1, v0, Lcom/android/flymexx/utils/ManagedServiceSettings$Config;->warningDialogTitle:I

    const v1, 0x7f0c0c8a

    iput v1, v0, Lcom/android/flymexx/utils/ManagedServiceSettings$Config;->warningDialogSummary:I

    const v1, 0x7f0c0c88

    iput v1, v0, Lcom/android/flymexx/utils/ManagedServiceSettings$Config;->emptyText:I

    return-object v0
.end method


# virtual methods
.method protected getConfig()Lcom/android/flymexx/utils/ManagedServiceSettings$Config;
    .locals 1

    sget-object v0, Lcom/android/flymexx/applications/VrListenerSettings;->CONFIG:Lcom/android/flymexx/utils/ManagedServiceSettings$Config;

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x14e

    return v0
.end method
