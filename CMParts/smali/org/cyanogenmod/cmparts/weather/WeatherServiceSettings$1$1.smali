.class Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1$1;
.super Ljava/lang/Object;
.source "WeatherServiceSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1;->onPackageAdded(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1$1;->this$1:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1$1;->this$1:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1;

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1;->this$0:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->-wrap2(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;)V

    return-void
.end method
