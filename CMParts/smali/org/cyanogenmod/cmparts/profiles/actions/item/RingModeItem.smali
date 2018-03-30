.class public Lorg/cyanogenmod/cmparts/profiles/actions/item/RingModeItem;
.super Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;
.source "RingModeItem.java"


# instance fields
.field mSettings:Lcyanogenmod/profiles/RingModeSettings;


# direct methods
.method public constructor <init>(Lcyanogenmod/profiles/RingModeSettings;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Lcyanogenmod/profiles/RingModeSettings;

    invoke-direct {p1}, Lcyanogenmod/profiles/RingModeSettings;-><init>()V

    :cond_0
    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/RingModeItem;->mSettings:Lcyanogenmod/profiles/RingModeSettings;

    return-void
.end method

.method public static getModeString(Lcyanogenmod/profiles/RingModeSettings;)I
    .locals 3

    const v2, 0x7f0802ba

    if-nez p0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcyanogenmod/profiles/RingModeSettings;->isOverride()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcyanogenmod/profiles/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vibrate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0802bb

    return v0

    :cond_1
    invoke-virtual {p0}, Lcyanogenmod/profiles/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const v0, 0x7f0802bc

    return v0

    :cond_3
    const v0, 0x7f08024e

    return v0
.end method


# virtual methods
.method public getRowType()Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    sget-object v0, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;->RINGMODE_ITEM:Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSettings()Lcyanogenmod/profiles/RingModeSettings;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/RingModeItem;->mSettings:Lcyanogenmod/profiles/RingModeSettings;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/RingModeItem;->mSettings:Lcyanogenmod/profiles/RingModeSettings;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/RingModeItem;->getModeString(Lcyanogenmod/profiles/RingModeSettings;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/RingModeItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0802b9

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/RingModeItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
