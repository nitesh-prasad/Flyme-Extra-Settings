.class public Lcom/android/flymexx/datausage/DataSaverBackend;
.super Ljava/lang/Object;
.source "DataSaverBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/datausage/DataSaverBackend$1;,
        Lcom/android/flymexx/datausage/DataSaverBackend$Listener;
    }
.end annotation


# instance fields
.field private mBlacklist:Landroid/util/SparseBooleanArray;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mIPolicyManager:Landroid/net/INetworkPolicyManager;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexx/datausage/DataSaverBackend$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mWhitelist:Landroid/util/SparseBooleanArray;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/datausage/DataSaverBackend;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mBlacklist:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/datausage/DataSaverBackend;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/datausage/DataSaverBackend;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mWhitelist:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/datausage/DataSaverBackend;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/datausage/DataSaverBackend;->handleBlacklistChanged(IZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/datausage/DataSaverBackend;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/datausage/DataSaverBackend;->handleRestrictBackgroundChanged(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/flymexx/datausage/DataSaverBackend;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/datausage/DataSaverBackend;->handleWhitelistChanged(IZ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/flymexx/datausage/DataSaverBackend;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/DataSaverBackend;->loadBlacklist()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/flymexx/datausage/DataSaverBackend;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/DataSaverBackend;->loadWhitelist()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/flymexx/datausage/DataSaverBackend$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/datausage/DataSaverBackend$1;-><init>(Lcom/android/flymexx/datausage/DataSaverBackend;)V

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    iput-object p1, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mIPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-void
.end method

.method private handleBlacklistChanged(IZ)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/datausage/DataSaverBackend$Listener;

    invoke-interface {v1, p1, p2}, Lcom/android/flymexx/datausage/DataSaverBackend$Listener;->onBlacklistStatusChanged(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleRestrictBackgroundChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/datausage/DataSaverBackend$Listener;

    invoke-interface {v1, p1}, Lcom/android/flymexx/datausage/DataSaverBackend$Listener;->onDataSaverChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleWhitelistChanged(IZ)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/datausage/DataSaverBackend$Listener;

    invoke-interface {v1, p1, p2}, Lcom/android/flymexx/datausage/DataSaverBackend$Listener;->onWhitelistStatusChanged(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadBlacklist()V
    .locals 7

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mBlacklist:Landroid/util/SparseBooleanArray;

    :try_start_0
    iget-object v2, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mIPolicyManager:Landroid/net/INetworkPolicyManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/net/INetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v3, v2

    iget-object v5, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mBlacklist:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method

.method private loadWhitelist()V
    .locals 7

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mWhitelist:Landroid/util/SparseBooleanArray;

    :try_start_0
    iget-object v2, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mIPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v2}, Landroid/net/INetworkPolicyManager;->getRestrictBackgroundWhitelistedUids()[I

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v3, v2

    iget-object v5, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mWhitelist:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/flymexx/datausage/DataSaverBackend$Listener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/flymexx/datausage/DataSaverBackend$Listener;->onDataSaverChanged(Z)V

    return-void
.end method

.method public isBlacklisted(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mBlacklist:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/DataSaverBackend;->loadBlacklist()V

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mBlacklist:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isDataSaverEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    return v0
.end method

.method public isWhitelisted(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mWhitelist:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/DataSaverBackend;->loadWhitelist()V

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mWhitelist:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public refreshBlacklist()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/DataSaverBackend;->loadBlacklist()V

    return-void
.end method

.method public refreshWhitelist()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/DataSaverBackend;->loadWhitelist()V

    return-void
.end method

.method public remListener(Lcom/android/flymexx/datausage/DataSaverBackend$Listener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    :cond_0
    return-void
.end method

.method public setDataSaverEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x18a

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsBlacklisted(ILjava/lang/String;Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    const/16 v1, 0x18c

    invoke-static {v0, v1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsWhitelisted(ILjava/lang/String;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mWhitelist:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz p3, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mIPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->addRestrictBackgroundWhitelistedUid(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    const/16 v2, 0x18b

    invoke-static {v1, v2, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/flymexx/datausage/DataSaverBackend;->mIPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->removeRestrictBackgroundWhitelistedUid(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DataSaverBackend"

    const-string/jumbo v2, "Can\'t reach policy manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
