.class public Lorg/cyanogenmod/cmparts/profiles/actions/item/AirplaneModeItem;
.super Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;
.source "AirplaneModeItem.java"


# instance fields
.field mSettings:Lcyanogenmod/profiles/AirplaneModeSettings;


# direct methods
.method public constructor <init>(Lcyanogenmod/profiles/AirplaneModeSettings;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-direct {p1}, Lcyanogenmod/profiles/AirplaneModeSettings;-><init>()V

    :cond_0
    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/AirplaneModeItem;->mSettings:Lcyanogenmod/profiles/AirplaneModeSettings;

    return-void
.end method

.method public static getModeString(Lcyanogenmod/profiles/AirplaneModeSettings;)I
    .locals 2

    invoke-virtual {p0}, Lcyanogenmod/profiles/AirplaneModeSettings;->isOverride()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcyanogenmod/profiles/AirplaneModeSettings;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f080251

    return v0

    :cond_0
    const v0, 0x7f080250

    return v0

    :cond_1
    const v0, 0x7f08024e

    return v0
.end method


# virtual methods
.method public getRowType()Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    sget-object v0, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;->AIRPLANEMODE_ITEM:Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSettings()Lcyanogenmod/profiles/AirplaneModeSettings;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/AirplaneModeItem;->mSettings:Lcyanogenmod/profiles/AirplaneModeSettings;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/AirplaneModeItem;->mSettings:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/AirplaneModeItem;->getModeString(Lcyanogenmod/profiles/AirplaneModeSettings;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/AirplaneModeItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0802ac

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/AirplaneModeItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
