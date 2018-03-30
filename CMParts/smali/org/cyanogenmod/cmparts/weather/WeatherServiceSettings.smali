.class public Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "WeatherServiceSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1;,
        Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$2;,
        Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;,
        Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER:Lorg/cyanogenmod/cmparts/PartsUpdater$Refreshable$SummaryProvider;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGeneralSettingsCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mProvidersCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mTemperatureUnit:Landroid/support/v7/preference/ListPreference;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->getInstalledServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->launchGetWeatherProviders()V

    return-void
.end method

.method static synthetic -wrap2(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->updateAdapter()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->TAG:Ljava/lang/String;

    new-instance v0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$2;

    invoke-direct {v0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$2;-><init>()V

    sput-object v0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->SUMMARY_PROVIDER:Lorg/cyanogenmod/cmparts/PartsUpdater$Refreshable$SummaryProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$1;-><init>(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method private static getEnabledWeatherServiceProvider(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "weather_provider_service"

    invoke-static {v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private static getInstalledServices(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v8, "cyanogenmod.weatherservice.WeatherProviderService"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x84

    invoke-virtual {v2, v1, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->getEnabledWeatherServiceProvider(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v8, :cond_0

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string/jumbo v9, "cyanogenmod.permission.BIND_WEATHER_PROVIDER_SERVICE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v6, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

    invoke-direct {v6, v11}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;-><init>(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;)V

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v6, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->componentName:Landroid/content/ComponentName;

    iget-object v8, v6, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v6, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    invoke-virtual {v3, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v6, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v6, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v6, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->settingsComponentName:Landroid/content/ComponentName;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v7
.end method

.method public static getSelectedTemperatureUnit(Landroid/content/Context;)I
    .locals 7

    const/4 v3, 0x1

    const/4 v6, -0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "weather_temperature_unit"

    invoke-static {v4, v5, v6}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v6, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v0, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "en_BS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "en_BZ"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "en_KY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_1

    const/4 v3, 0x2

    :cond_1
    return v3

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private static getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 14

    if-eqz p1, :cond_0

    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v11, :cond_1

    :cond_0
    const/4 v11, 0x0

    return-object v11

    :cond_1
    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v11, :cond_0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string/jumbo v12, "cyanogenmod.weatherservice"

    invoke-virtual {v11, p0, v12}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    if-nez v7, :cond_3

    sget-object v11, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Can\'t find cyanogenmod.weatherservice meta-data"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    return-object v11

    :cond_3
    :try_start_1
    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :cond_4
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    :cond_5
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v11, "weather-provider-service"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    sget-object v11, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Meta-data does not start with weather-provider-service tag"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v11, 0x0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    return-object v11

    :cond_7
    :try_start_2
    sget-object v11, Lcom/android/internal/R$styleable;->Dream:[I

    invoke-virtual {v8, v0, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_8
    :goto_0
    if-eqz v1, :cond_a

    sget-object v11, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error parsing : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v11, 0x0

    return-object v11

    :catch_0
    move-exception v5

    move-object v1, v5

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v1, v4

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    :catch_2
    move-exception v3

    move-object v1, v3

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    :catchall_0
    move-exception v11

    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    throw v11

    :cond_a
    if-eqz v2, :cond_b

    const/16 v11, 0x2f

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_b
    if-nez v2, :cond_c

    const/4 v11, 0x0

    :goto_1
    return-object v11

    :cond_c
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    goto :goto_1
.end method

.method private launchGetWeatherProviders()V
    .locals 5

    const/high16 v4, 0x10000000

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    const v3, 0x7f080318

    invoke-virtual {p0, v3}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    const v3, 0x7f080319

    invoke-virtual {p0, v3}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private registerPackageMonitor()V
    .locals 5

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method private unregisterPackageMonitor()V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    return-void
.end method

.method private updateAdapter()V
    .locals 8

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->getInstalledServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "weather_general_settings"

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mGeneralSettingsCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    const-string/jumbo v5, "weather_service_providers"

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mProvidersCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    iget-object v5, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mProvidersCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mProvidersCategory:Landroid/support/v7/preference/PreferenceCategory;

    new-instance v6, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;

    iget-object v7, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7, v1}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;-><init>(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;Landroid/content/Context;Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;)V

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v7/preference/Preference;

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v5, 0x7f080317

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    const v5, 0x7f020075

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    new-instance v5, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$3;

    invoke-direct {v5, p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$3;-><init>(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;)V

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mProvidersCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_1
    return-void

    :cond_3
    iget-object v5, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mGeneralSettingsCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mProvidersCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const v1, 0x7f050015

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "weather_general_settings"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mGeneralSettingsCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v1, "weather_service_providers"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mProvidersCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v1, "weather_temperature_unit"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mTemperatureUnit:Landroid/support/v7/preference/ListPreference;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mTemperatureUnit:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const-string/jumbo v2, "weather_provider_service"

    invoke-static {v2}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->watch([Landroid/net/Uri;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onPause()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->unregisterPackageMonitor()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mTemperatureUnit:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "weather_temperature_unit"

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->updateAdapter()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->registerPackageMonitor()V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mTemperatureUnit:Landroid/support/v7/preference/ListPreference;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->getSelectedTemperatureUnit(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1, p2}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03002a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0c0096

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f080313

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f0c0097

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v4, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$4;

    invoke-direct {v4, p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$4;-><init>(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->setEmptyView(Landroid/view/View;)V

    return-void
.end method
