.class Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "WeatherServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1;->this$0:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1;->this$0:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->-get1(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1$1;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1$1;-><init>(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1;->this$0:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->-get1(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1$2;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1$2;-><init>(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
