.class Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;
.super Ljava/lang/Object;
.source "WeatherServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeatherProviderServiceInfo"
.end annotation


# instance fields
.field caption:Ljava/lang/CharSequence;

.field componentName:Landroid/content/ComponentName;

.field icon:Landroid/graphics/drawable/Drawable;

.field isActive:Z

.field public settingsComponentName:Landroid/content/ComponentName;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;-><init>()V

    return-void
.end method
