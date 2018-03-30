.class public Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;
.super Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;
.source "ConnectionOverrideItem.java"


# instance fields
.field mConnectionId:I

.field mConnectionSettings:Lcyanogenmod/profiles/ConnectionSettings;


# direct methods
.method public constructor <init>(ILcyanogenmod/profiles/ConnectionSettings;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;-><init>()V

    iput p1, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->mConnectionId:I

    if-nez p2, :cond_0

    new-instance p2, Lcyanogenmod/profiles/ConnectionSettings;

    invoke-direct {p2, p1}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(I)V

    :cond_0
    iput-object p2, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Lcyanogenmod/profiles/ConnectionSettings;

    return-void
.end method

.method public static getConnectionTitle(Landroid/content/Context;Lcyanogenmod/profiles/ConnectionSettings;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcyanogenmod/profiles/ConnectionSettings;->getConnectionId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_1
    const v1, 0x7f0802b2

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0802b4

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcyanogenmod/profiles/ConnectionSettings;->getSubId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {p1}, Lcyanogenmod/profiles/ConnectionSettings;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v3, 0x7f0802b7

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const v1, 0x7f0802b6

    goto :goto_0

    :pswitch_4
    const v1, 0x7f0802b3

    goto :goto_0

    :pswitch_5
    const v1, 0x7f0802b8

    goto :goto_0

    :pswitch_6
    const v1, 0x7f0802b5

    goto :goto_0

    :pswitch_7
    const v1, 0x7f0802b0

    goto :goto_0

    :pswitch_8
    const v1, 0x7f0802b1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getConnectionType()I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->mConnectionId:I

    return v0
.end method

.method public getRowType()Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    sget-object v0, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;->CONNECTION_ITEM:Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSettings()Lcyanogenmod/profiles/ConnectionSettings;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Lcyanogenmod/profiles/ConnectionSettings;

    return-object v0
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Lcyanogenmod/profiles/ConnectionSettings;

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->mConnectionId:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v1}, Lcyanogenmod/profiles/ConnectionSettings;->isOverride()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v1}, Lcyanogenmod/profiles/ConnectionSettings;->getValue()I

    move-result v1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    invoke-static {p1, v1, v2}, Lorg/cyanogenmod/cmparts/utils/TelephonyUtils;->getNetworkModeString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const v0, 0x7f08024e

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v1}, Lcyanogenmod/profiles/ConnectionSettings;->isOverride()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v1}, Lcyanogenmod/profiles/ConnectionSettings;->getValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const v0, 0x7f080251

    goto :goto_0

    :cond_2
    const v0, 0x7f080250

    goto :goto_0

    :cond_3
    const v0, 0x7f08024e

    goto :goto_0

    :cond_4
    const v0, 0x7f08024e

    goto :goto_0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-static {v0, v1}, Lorg/cyanogenmod/cmparts/profiles/actions/item/ConnectionOverrideItem;->getConnectionTitle(Landroid/content/Context;Lcyanogenmod/profiles/ConnectionSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
