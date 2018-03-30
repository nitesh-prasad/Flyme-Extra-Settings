.class public Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;
.super Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;
.source "VolumeStreamItem.java"


# instance fields
.field private mEnabled:Z

.field private mStreamId:I

.field private mStreamSettings:Lcyanogenmod/profiles/StreamSettings;


# direct methods
.method public constructor <init>(ILcyanogenmod/profiles/StreamSettings;)V
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;->mEnabled:Z

    iput p1, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;->mStreamId:I

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;->mStreamSettings:Lcyanogenmod/profiles/StreamSettings;

    return-void
.end method

.method public static getNameForStream(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const v0, 0x7f0802c1

    return v0

    :pswitch_1
    const v0, 0x7f0802c0

    return v0

    :pswitch_2
    const v0, 0x7f0802be

    return v0

    :pswitch_3
    const v0, 0x7f0802bf

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getRowType()Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    sget-object v0, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;->VOLUME_STREAM_ITEM:Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSettings()Lcyanogenmod/profiles/StreamSettings;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;->mStreamSettings:Lcyanogenmod/profiles/StreamSettings;

    return-object v0
.end method

.method public getStreamType()I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;->mStreamId:I

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 7

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;->mStreamSettings:Lcyanogenmod/profiles/StreamSettings;

    invoke-virtual {v3}, Lcyanogenmod/profiles/StreamSettings;->isOverride()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;->mStreamSettings:Lcyanogenmod/profiles/StreamSettings;

    invoke-virtual {v3}, Lcyanogenmod/profiles/StreamSettings;->getValue()I

    move-result v1

    iget v3, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;->mStreamId:I

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const v5, 0x7f08028c

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const v3, 0x7f08024e

    invoke-virtual {p0, v3}, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;->mStreamId:I

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;->getNameForStream(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;->getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "volume_link_notification"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;->mStreamId:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    const v2, 0x1020010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    iput-boolean v4, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;->mEnabled:Z

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/VolumeStreamItem;->mEnabled:Z

    return v0
.end method
