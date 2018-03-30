.class Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;
.super Landroid/support/v7/preference/Preference;
.source "WeatherServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherProviderPreference"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInfo:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mSettingsButton:Landroid/view/View;

.field final synthetic this$0:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;)Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->launchSettingsActivity(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;Landroid/content/Context;Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;)V
    .locals 1

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->this$0:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;

    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f03006d

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->setLayoutResource(I)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private isActiveProvider()Z
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-boolean v0, v0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    return v0
.end method

.method private launchSettingsActivity(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v1, p1, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p1, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->settingsComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f080316

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->settingsComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private markAsActiveProvider()V
    .locals 6

    const-string/jumbo v5, "weather_service_providers"

    invoke-virtual {p0, v5}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    instance-of v5, v2, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;

    if-eqz v5, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;

    invoke-direct {v3}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->isActiveProvider()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->setActiveState(Z)V

    :cond_0
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->setActiveState(Z)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setActiveWeatherProviderService()V
    .locals 3

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-boolean v0, v0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->markAsActiveProvider()V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "weather_provider_service"

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-object v2, v2, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 6

    const/4 v4, 0x4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v2, 0x7f0c003f

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-boolean v5, v5, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mRadioButton:Landroid/widget/RadioButton;

    new-instance v5, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference$1;

    invoke-direct {v5, p0, p1}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference$1;-><init>(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;Landroid/support/v7/preference/PreferenceViewHolder;)V

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-object v2, v2, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    const v2, 0x7f0c00e7

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0c00e8

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mSettingsButton:Landroid/view/View;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mSettingsButton:Landroid/view/View;

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mSettingsButton:Landroid/view/View;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-boolean v2, v2, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mSettingsButton:Landroid/view/View;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-boolean v3, v3, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mSettingsButton:Landroid/view/View;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-boolean v3, v3, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mSettingsButton:Landroid/view/View;

    new-instance v3, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference$2;

    invoke-direct {v3, p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference$2;-><init>(Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    const v2, 0x3ecccccd    # 0.4f

    goto :goto_3
.end method

.method public performClick()V
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->isActiveProvider()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->setActiveWeatherProviderService()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->notifyChanged()V

    return-void
.end method

.method public setActiveState(Z)V
    .locals 3

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

    iput-boolean p1, v1, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-object v1, v1, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mSettingsButton:Landroid/view/View;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-boolean v1, v1, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mSettingsButton:Landroid/view/View;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-boolean v2, v2, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mSettingsButton:Landroid/view/View;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-boolean v2, v2, Lorg/cyanogenmod/cmparts/weather/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const v1, 0x3ecccccd    # 0.4f

    goto :goto_1
.end method
