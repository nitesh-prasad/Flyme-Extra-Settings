.class Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference$2;
.super Ljava/lang/Object;
.source "WeatherServiceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference$2;->this$1:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference$2;->this$1:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference$2;->this$1:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->-get0(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;)Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->-wrap0(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;)V

    return-void
.end method
