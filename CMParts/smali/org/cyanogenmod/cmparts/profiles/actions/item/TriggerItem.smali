.class public Lorg/cyanogenmod/cmparts/profiles/actions/item/TriggerItem;
.super Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;
.source "TriggerItem.java"


# instance fields
.field mProfile:Lcyanogenmod/app/Profile;

.field mTriggerType:I


# direct methods
.method public constructor <init>(Lcyanogenmod/app/Profile;I)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;-><init>()V

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/TriggerItem;->mProfile:Lcyanogenmod/app/Profile;

    iput p2, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/TriggerItem;->mTriggerType:I

    return-void
.end method

.method public static getTitleString(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const v0, 0x7f080254

    return v0

    :pswitch_1
    const v0, 0x7f080255

    return v0

    :pswitch_2
    const v0, 0x7f080256

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

    sget-object v0, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;->TRIGGER_ITEM:Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/TriggerItem;->mProfile:Lcyanogenmod/app/Profile;

    iget v4, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/TriggerItem;->mTriggerType:I

    invoke-virtual {v3, v4}, Lcyanogenmod/app/Profile;->getTriggersFromType(I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcyanogenmod/app/Profile$ProfileTrigger;

    invoke-virtual {v3}, Lcyanogenmod/app/Profile$ProfileTrigger;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    const-string/jumbo v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/TriggerItem;->mTriggerType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const v3, 0x7f080260

    invoke-virtual {p0, v3}, Lorg/cyanogenmod/cmparts/profiles/actions/item/TriggerItem;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    const v3, 0x7f08025f

    invoke-virtual {p0, v3}, Lorg/cyanogenmod/cmparts/profiles/actions/item/TriggerItem;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/TriggerItem;->mTriggerType:I

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/TriggerItem;->getTitleString(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/TriggerItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerType()I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/TriggerItem;->mTriggerType:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
