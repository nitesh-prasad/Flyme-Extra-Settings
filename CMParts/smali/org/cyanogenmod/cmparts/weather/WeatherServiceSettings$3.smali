.class Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$3;
.super Ljava/lang/Object;
.source "WeatherServiceSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->updateAdapter()V
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

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$3;->this$0:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$3;->this$0:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->-wrap1(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;)V

    const/4 v0, 0x0

    return v0
.end method
