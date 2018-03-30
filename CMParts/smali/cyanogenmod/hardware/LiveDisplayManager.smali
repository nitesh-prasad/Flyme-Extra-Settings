.class public Lcyanogenmod/hardware/LiveDisplayManager;
.super Ljava/lang/Object;
.source "LiveDisplayManager.java"


# static fields
.field private static sInstance:Lcyanogenmod/hardware/LiveDisplayManager;

.field private static sService:Lcyanogenmod/hardware/ILiveDisplayService;


# instance fields
.field private final mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcyanogenmod/hardware/LiveDisplayManager;->mContext:Landroid/content/Context;

    :goto_0
    invoke-static {}, Lcyanogenmod/hardware/LiveDisplayManager;->getService()Lcyanogenmod/hardware/ILiveDisplayService;

    move-result-object v2

    sput-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "org.cyanogenmod.livedisplay"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    :try_start_0
    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lcyanogenmod/hardware/ILiveDisplayService;->getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/hardware/LiveDisplayManager;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayManager;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unable to get LiveDisplay configuration!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unable to fetch LiveDisplay configuration!"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    iput-object p1, p0, Lcyanogenmod/hardware/LiveDisplayManager;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "LiveDisplay"

    const-string/jumbo v3, "Unable to get LiveDisplayService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-void
.end method

.method private checkService()Z
    .locals 2

    sget-object v0, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "LiveDisplay"

    const-string/jumbo v1, "not connected to CMHardwareManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/LiveDisplayManager;
    .locals 2

    const-class v1, Lcyanogenmod/hardware/LiveDisplayManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcyanogenmod/hardware/LiveDisplayManager;->sInstance:Lcyanogenmod/hardware/LiveDisplayManager;

    if-nez v0, :cond_0

    new-instance v0, Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-direct {v0, p0}, Lcyanogenmod/hardware/LiveDisplayManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/hardware/LiveDisplayManager;->sInstance:Lcyanogenmod/hardware/LiveDisplayManager;

    :cond_0
    sget-object v0, Lcyanogenmod/hardware/LiveDisplayManager;->sInstance:Lcyanogenmod/hardware/LiveDisplayManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getService()Lcyanogenmod/hardware/ILiveDisplayService;
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    if-eqz v1, :cond_0

    sget-object v1, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    return-object v1

    :cond_0
    const-string/jumbo v1, "cmlivedisplay"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/hardware/ILiveDisplayService;

    move-result-object v1

    sput-object v1, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    sget-object v1, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    return-object v1

    :cond_1
    return-object v2
.end method


# virtual methods
.method public getColorAdjustment()[F
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ILiveDisplayService;->getColorAdjustment()[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    return-object v1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/hardware/LiveDisplayManager;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    return-object v0
.end method

.method public getDayColorTemperature()I
    .locals 3

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lcyanogenmod/hardware/ILiveDisplayService;->getDayColorTemperature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    return v1
.end method

.method public getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ILiveDisplayService;->getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMode()I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lcyanogenmod/hardware/ILiveDisplayService;->getMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    return v1
.end method

.method public getNightColorTemperature()I
    .locals 3

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lcyanogenmod/hardware/ILiveDisplayService;->getNightColorTemperature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    return v1
.end method

.method public getPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ILiveDisplayService;->getPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public setColorAdjustment([F)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setColorAdjustment([F)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    return v1
.end method

.method public setDayColorTemperature(I)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setDayColorTemperature(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    return v1
.end method

.method public setMode(I)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    return v1
.end method

.method public setNightColorTemperature(I)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setNightColorTemperature(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    return v1
.end method

.method public setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    return v1
.end method
