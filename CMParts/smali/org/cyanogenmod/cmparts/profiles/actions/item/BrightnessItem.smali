.class public Lorg/cyanogenmod/cmparts/profiles/actions/item/BrightnessItem;
.super Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;
.source "BrightnessItem.java"


# instance fields
.field mSettings:Lcyanogenmod/profiles/BrightnessSettings;


# direct methods
.method public constructor <init>(Lcyanogenmod/profiles/BrightnessSettings;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Lcyanogenmod/profiles/BrightnessSettings;

    invoke-direct {p1}, Lcyanogenmod/profiles/BrightnessSettings;-><init>()V

    :cond_0
    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/BrightnessItem;->mSettings:Lcyanogenmod/profiles/BrightnessSettings;

    return-void
.end method


# virtual methods
.method public getRowType()Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    sget-object v0, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;->BRIGHTNESS_ITEM:Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSettings()Lcyanogenmod/profiles/BrightnessSettings;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/BrightnessItem;->mSettings:Lcyanogenmod/profiles/BrightnessSettings;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/BrightnessItem;->mSettings:Lcyanogenmod/profiles/BrightnessSettings;

    invoke-virtual {v0}, Lcyanogenmod/profiles/BrightnessSettings;->isOverride()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/BrightnessItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/BrightnessItem;->mSettings:Lcyanogenmod/profiles/BrightnessSettings;

    invoke-virtual {v2}, Lcyanogenmod/profiles/BrightnessSettings;->getValue()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0802ae

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f08024e

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/BrightnessItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0802ad

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/BrightnessItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
