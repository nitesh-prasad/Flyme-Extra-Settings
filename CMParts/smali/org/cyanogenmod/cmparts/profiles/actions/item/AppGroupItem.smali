.class public Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;
.super Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;
.source "AppGroupItem.java"


# instance fields
.field mGroup:Lcyanogenmod/app/ProfileGroup;

.field mNotifGroup:Landroid/app/NotificationGroup;

.field mProfile:Lcyanogenmod/app/Profile;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcyanogenmod/app/Profile;Lcyanogenmod/app/ProfileGroup;Landroid/app/NotificationGroup;)V
    .locals 2

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;-><init>()V

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;->mProfile:Lcyanogenmod/app/Profile;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "profile group can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;->mGroup:Lcyanogenmod/app/ProfileGroup;

    iput-object p3, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;->mNotifGroup:Landroid/app/NotificationGroup;

    return-void
.end method


# virtual methods
.method public getGroupUuid()Ljava/util/UUID;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;->mGroup:Lcyanogenmod/app/ProfileGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;->mGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v0}, Lcyanogenmod/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getRowType()Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    sget-object v0, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;->APP_GROUP_ITEM:Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;->mGroup:Lcyanogenmod/app/ProfileGroup;

    if-nez v0, :cond_0

    const v0, 0x7f080279

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;->mGroup:Lcyanogenmod/app/ProfileGroup;

    if-nez v0, :cond_0

    const v0, 0x7f080278

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;->mNotifGroup:Landroid/app/NotificationGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/AppGroupItem;->mNotifGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v0}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "<unknown>"

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
