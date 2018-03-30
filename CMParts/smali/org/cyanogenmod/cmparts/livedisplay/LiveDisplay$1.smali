.class final Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay$1;
.super Lorg/cyanogenmod/cmparts/search/BaseSearchIndexProvider;
.source "LiveDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/livedisplay/LiveDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcyanogenmod/hardware/LiveDisplayManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/LiveDisplayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcyanogenmod/hardware/LiveDisplayManager;->getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "live_display_color_profile"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "display_auto_outdoor_mode"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "display_color_enhance"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "display_low_power"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "color_calibration"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "picture_adjustment"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v1
.end method

.method public getRawDataToIndex(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {p1}, Lcyanogenmod/hardware/LiveDisplayManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/LiveDisplayManager;

    move-result-object v6

    invoke-virtual {v6}, Lcyanogenmod/hardware/LiveDisplayManager;->getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const/16 v6, 0xf

    invoke-virtual {v0, v6}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p1}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v6

    invoke-virtual {v6}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v6, v2

    if-lez v6, :cond_0

    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v2, v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, v1, Lcyanogenmod/hardware/DisplayMode;->name:Ljava/lang/String;

    const-string/jumbo v9, "live_display_color_profile_%s_title"

    invoke-static {v7, v8, v9}, Lorg/cyanogenmod/cmparts/utils/ResourceUtils;->getLocalizedString(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, " "

    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    const-string/jumbo v5, "live_display_color_profile"

    iput-object v5, v3, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v5, 0x7f0801d6

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const/4 v5, 0x2

    iput v5, v3, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->rank:I

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method
