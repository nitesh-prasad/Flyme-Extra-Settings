.class public abstract Lcyanogenmod/weatherservice/WeatherProviderService;
.super Landroid/app/Service;
.source "WeatherProviderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weatherservice/WeatherProviderService$1;,
        Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;
    }
.end annotation


# instance fields
.field private final mBinder:Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;

.field private mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

.field private mHandler:Landroid/os/Handler;

.field private mWeakRequestsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcyanogenmod/weatherservice/ServiceRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcyanogenmod/weatherservice/WeatherProviderService;)Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/weatherservice/WeatherProviderService;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    return-object v0
.end method

.method static synthetic -get1(Lcyanogenmod/weatherservice/WeatherProviderService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/weatherservice/WeatherProviderService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcyanogenmod/weatherservice/WeatherProviderService;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/weatherservice/WeatherProviderService;->mWeakRequestsSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -set0(Lcyanogenmod/weatherservice/WeatherProviderService;Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;)Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/weatherservice/WeatherProviderService;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/weatherservice/WeatherProviderService;->mWeakRequestsSet:Ljava/util/Set;

    new-instance v0, Lcyanogenmod/weatherservice/WeatherProviderService$1;

    invoke-direct {v0, p0}, Lcyanogenmod/weatherservice/WeatherProviderService$1;-><init>(Lcyanogenmod/weatherservice/WeatherProviderService;)V

    iput-object v0, p0, Lcyanogenmod/weatherservice/WeatherProviderService;->mBinder:Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;

    return-void
.end method


# virtual methods
.method protected final attachBaseContext(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    new-instance v0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;-><init>(Lcyanogenmod/weatherservice/WeatherProviderService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcyanogenmod/weatherservice/WeatherProviderService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/weatherservice/WeatherProviderService;->mBinder:Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;

    return-object v0
.end method

.method protected onConnected()V
    .locals 0

    return-void
.end method

.method protected onDisconnected()V
    .locals 0

    return-void
.end method

.method protected abstract onRequestCancelled(Lcyanogenmod/weatherservice/ServiceRequest;)V
.end method

.method protected abstract onRequestSubmitted(Lcyanogenmod/weatherservice/ServiceRequest;)V
.end method
