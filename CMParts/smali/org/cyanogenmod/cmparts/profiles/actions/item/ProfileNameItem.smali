.class public Lorg/cyanogenmod/cmparts/profiles/actions/item/ProfileNameItem;
.super Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;
.source "ProfileNameItem.java"


# instance fields
.field mProfile:Lcyanogenmod/app/Profile;


# direct methods
.method public constructor <init>(Lcyanogenmod/app/Profile;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;-><init>()V

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/ProfileNameItem;->mProfile:Lcyanogenmod/app/Profile;

    return-void
.end method


# virtual methods
.method public getRowType()Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    sget-object v0, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;->NAME_ITEM:Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/ProfileNameItem;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v0}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
