.class public Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "LiveDisplay.java"

# interfaces
.implements Lorg/cyanogenmod/cmparts/search/Searchable;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lorg/cyanogenmod/cmparts/search/Searchable$SearchIndexProvider;


# instance fields
.field private final DISPLAY_TEMPERATURE_DAY_URI:Landroid/net/Uri;

.field private final DISPLAY_TEMPERATURE_MODE_URI:Landroid/net/Uri;

.field private final DISPLAY_TEMPERATURE_NIGHT_URI:Landroid/net/Uri;

.field private mColorEnhancement:Landroid/support/v14/preference/SwitchPreference;

.field private mColorProfile:Landroid/support/v7/preference/ListPreference;

.field private mColorProfileSummaries:[Ljava/lang/String;

.field private mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

.field private mDisplayColor:Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;

.field private mDisplayTemperature:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;

.field private mHardware:Lcyanogenmod/hardware/CMHardwareManager;

.field private mHasDisplayModes:Z

.field private mLiveDisplay:Landroid/support/v7/preference/ListPreference;

.field private mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

.field private mLowPower:Landroid/support/v14/preference/SwitchPreference;

.field private mModeEntries:[Ljava/lang/String;

.field private mModeSummaries:[Ljava/lang/String;

.field private mModeValues:[Ljava/lang/String;

.field private mOutdoorMode:Landroid/support/v14/preference/SwitchPreference;

.field private mPictureAdjustment:Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay$1;

    invoke-direct {v0}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay$1;-><init>()V

    sput-object v0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->SEARCH_INDEX_DATA_PROVIDER:Lorg/cyanogenmod/cmparts/search/Searchable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    const-string/jumbo v0, "display_temperature_day"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->DISPLAY_TEMPERATURE_DAY_URI:Landroid/net/Uri;

    const-string/jumbo v0, "display_temperature_night"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->DISPLAY_TEMPERATURE_NIGHT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "display_temperature_mode"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->DISPLAY_TEMPERATURE_MODE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mHasDisplayModes:Z

    return-void
.end method

.method private updateColorProfileSummary(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mHasDisplayModes:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/CMHardwareManager;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/CMHardwareManager;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lcyanogenmod/hardware/DisplayMode;->id:I

    if-ltz v2, :cond_1

    iget v2, v0, Lcyanogenmod/hardware/DisplayMode;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mColorProfile:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    const-string/jumbo v2, "LiveDisplay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No summary resource found for profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mColorProfile:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/CMHardwareManager;->getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mColorProfile:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mColorProfile:Landroid/support/v7/preference/ListPreference;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mColorProfileSummaries:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDisplayModes()Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v7}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v7, v4

    if-nez v7, :cond_1

    :cond_0
    return v10

    :cond_1
    iget-object v7, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v7}, Lcyanogenmod/hardware/CMHardwareManager;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v7}, Lcyanogenmod/hardware/CMHardwareManager;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    :goto_0
    const/4 v1, -0x1

    array-length v7, v4

    new-array v2, v7, [Ljava/lang/String;

    array-length v7, v4

    new-array v6, v7, [Ljava/lang/String;

    array-length v7, v4

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mColorProfileSummaries:[Ljava/lang/String;

    const/4 v3, 0x0

    :goto_1
    array-length v7, v4

    if-ge v3, v7, :cond_5

    aget-object v7, v4, v3

    iget v7, v7, Lcyanogenmod/hardware/DisplayMode;->id:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    aget-object v8, v4, v3

    iget-object v8, v8, Lcyanogenmod/hardware/DisplayMode;->name:Ljava/lang/String;

    const-string/jumbo v9, "live_display_color_profile_%s_title"

    invoke-static {v7, v8, v9}, Lorg/cyanogenmod/cmparts/utils/ResourceUtils;->getLocalizedString(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    aget-object v8, v4, v3

    iget-object v8, v8, Lcyanogenmod/hardware/DisplayMode;->name:Ljava/lang/String;

    const-string/jumbo v9, "live_display_color_profile_%s_summary"

    invoke-static {v7, v8, v9}, Lorg/cyanogenmod/cmparts/utils/ResourceUtils;->getLocalizedString(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string/jumbo v7, "%s - %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aget-object v9, v2, v3

    aput-object v9, v8, v10

    aput-object v5, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    iget-object v7, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mColorProfileSummaries:[Ljava/lang/String;

    aput-object v5, v7, v3

    if-eqz v0, :cond_3

    aget-object v7, v4, v3

    iget v7, v7, Lcyanogenmod/hardware/DisplayMode;->id:I

    iget v8, v0, Lcyanogenmod/hardware/DisplayMode;->id:I

    if-ne v7, v8, :cond_3

    iget v1, v0, Lcyanogenmod/hardware/DisplayMode;->id:I

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v7}, Lcyanogenmod/hardware/CMHardwareManager;->getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mColorProfile:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v7, v2}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mColorProfile:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    if-ltz v1, :cond_6

    iget-object v7, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mColorProfile:Landroid/support/v7/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_6
    return v11
.end method

.method private updateModeSummary()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/LiveDisplayManager;->getMode()I

    move-result v1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/support/v7/preference/ListPreference;

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/support/v7/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mDisplayTemperature:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;

    if-eqz v2, :cond_1

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mDisplayTemperature:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;

    if-eqz v1, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->setEnabled(Z)V

    :cond_1
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method private updateTemperatureSummary()V
    .locals 7

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/LiveDisplayManager;->getDayColorTemperature()I

    move-result v0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/LiveDisplayManager;->getNightColorTemperature()I

    move-result v1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mDisplayTemperature:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mDisplayTemperature:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;

    invoke-virtual {v5, v0}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->roundUp(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mDisplayTemperature:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;

    invoke-virtual {v5, v1}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->roundUp(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const v5, 0x7f0801cc

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x0

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v10

    iput-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcyanogenmod/hardware/LiveDisplayManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/LiveDisplayManager;

    move-result-object v10

    iput-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v10}, Lcyanogenmod/hardware/LiveDisplayManager;->getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v10

    iput-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    const v10, 0x7f050008

    invoke-virtual {p0, v10}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->addPreferencesFromResource(I)V

    const-string/jumbo v10, "live_display_options"

    invoke-virtual {p0, v10}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "advanced"

    invoke-virtual {p0, v10}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v10}, Lcyanogenmod/hardware/LiveDisplayManager;->getMode()I

    move-result v0

    const-string/jumbo v10, "live_display"

    invoke-virtual {p0, v10}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/ListPreference;

    iput-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/support/v7/preference/ListPreference;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/support/v7/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const v10, 0x3f040004

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    const v10, 0x3f040006

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    const v10, 0x3f040005

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    invoke-virtual {v10, v13}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    new-array v2, v10, [Ljava/lang/String;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    new-array v9, v10, [Ljava/lang/String;

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    new-array v8, v10, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    array-length v10, v10

    if-ge v3, v10, :cond_1

    if-ne v3, v4, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    aget-object v10, v10, v3

    aput-object v10, v2, v5

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    aget-object v10, v10, v3

    aput-object v10, v9, v5

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    aget-object v10, v10, v3

    aput-object v10, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iput-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    iput-object v9, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    iput-object v8, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    :cond_2
    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/support/v7/preference/ListPreference;

    iget-object v11, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/support/v7/preference/ListPreference;

    iget-object v11, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v10, "live_display_color_temperature"

    invoke-virtual {p0, v10}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;

    iput-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mDisplayTemperature:Lorg/cyanogenmod/cmparts/livedisplay/DisplayTemperature;

    const-string/jumbo v10, "live_display_color_profile"

    invoke-virtual {p0, v10}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/ListPreference;

    iput-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mColorProfile:Landroid/support/v7/preference/ListPreference;

    if-eqz v6, :cond_3

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mColorProfile:Landroid/support/v7/preference/ListPreference;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    const/16 v11, 0xf

    invoke-virtual {v10, v11}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->updateDisplayModes()Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_3
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mHasDisplayModes:Z

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mColorProfile:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_2
    const-string/jumbo v10, "display_auto_outdoor_mode"

    invoke-virtual {p0, v10}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v6, :cond_4

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    invoke-virtual {v10, v13}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_4
    :goto_3
    const-string/jumbo v10, "display_low_power"

    invoke-virtual {p0, v10}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mLowPower:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_5

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mLowPower:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v10

    if-eqz v10, :cond_b

    :cond_5
    :goto_4
    const-string/jumbo v10, "display_color_enhance"

    invoke-virtual {p0, v10}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_6

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_6
    :goto_5
    const-string/jumbo v10, "picture_adjustment"

    invoke-virtual {p0, v10}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;

    iput-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mPictureAdjustment:Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;

    if-eqz v1, :cond_7

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mPictureAdjustment:Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_7
    :goto_6
    const-string/jumbo v10, "color_calibration"

    invoke-virtual {p0, v10}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;

    iput-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mDisplayColor:Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;

    if-eqz v1, :cond_8

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mDisplayColor:Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    const/16 v11, 0xd

    invoke-virtual {v10, v11}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v10

    if-eqz v10, :cond_e

    :cond_8
    :goto_7
    return-void

    :cond_9
    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mColorProfile:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_2

    :cond_a
    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v12, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/support/v14/preference/SwitchPreference;

    goto :goto_3

    :cond_b
    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mLowPower:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v12, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mLowPower:Landroid/support/v14/preference/SwitchPreference;

    goto :goto_4

    :cond_c
    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v12, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/support/v14/preference/SwitchPreference;

    goto :goto_5

    :cond_d
    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mPictureAdjustment:Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;

    invoke-virtual {v1, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v12, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mPictureAdjustment:Lorg/cyanogenmod/cmparts/livedisplay/PictureAdjustment;

    goto :goto_6

    :cond_e
    iget-object v10, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mDisplayColor:Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;

    invoke-virtual {v1, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v12, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mDisplayColor:Lorg/cyanogenmod/cmparts/livedisplay/DisplayColor;

    goto :goto_7
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/preference/SettingsHelper;->get(Landroid/content/Context;)Lcyanogenmod/preference/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcyanogenmod/preference/SettingsHelper;->stopWatching(Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcyanogenmod/hardware/LiveDisplayManager;->setMode(I)Z

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mColorProfile:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v2, :cond_0

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v2, "LiveDisplay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    iget v5, v1, Lcyanogenmod/hardware/DisplayMode;->id:I

    if-ne v5, v0, :cond_2

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v2, v1, v6}, Lcyanogenmod/hardware/CMHardwareManager;->setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->updateColorProfileSummary(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->updateModeSummary()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->updateTemperatureSummary()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->updateColorProfileSummary(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/preference/SettingsHelper;->get(Landroid/content/Context;)Lcyanogenmod/preference/SettingsHelper;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/net/Uri;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->DISPLAY_TEMPERATURE_DAY_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->DISPLAY_TEMPERATURE_MODE_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->DISPLAY_TEMPERATURE_NIGHT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcyanogenmod/preference/SettingsHelper;->startWatching(Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;[Landroid/net/Uri;)V

    return-void
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->updateModeSummary()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;->updateTemperatureSummary()V

    return-void
.end method
