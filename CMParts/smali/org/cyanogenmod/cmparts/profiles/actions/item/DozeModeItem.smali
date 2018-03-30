.class public Lorg/cyanogenmod/cmparts/profiles/actions/item/DozeModeItem;
.super Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;
.source "DozeModeItem.java"


# instance fields
.field mProfile:Lcyanogenmod/app/Profile;


# direct methods
.method public constructor <init>(Lcyanogenmod/app/Profile;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;-><init>()V

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/DozeModeItem;->mProfile:Lcyanogenmod/app/Profile;

    return-void
.end method

.method public static getSummaryString(Lcyanogenmod/app/Profile;)I
    .locals 1

    invoke-virtual {p0}, Lcyanogenmod/app/Profile;->getDozeMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const v0, 0x7f08024e

    return v0

    :pswitch_1
    const v0, 0x7f080251

    return v0

    :pswitch_2
    const v0, 0x7f080250

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getRowType()Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    sget-object v0, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;->DOZEMODE_ITEM:Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/DozeModeItem;->mProfile:Lcyanogenmod/app/Profile;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/DozeModeItem;->getSummaryString(Lcyanogenmod/app/Profile;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/DozeModeItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0802c2

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/DozeModeItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
