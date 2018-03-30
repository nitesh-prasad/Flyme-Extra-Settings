.class public Lorg/cyanogenmod/cmparts/profiles/actions/item/DisabledItem;
.super Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;
.source "DisabledItem.java"


# instance fields
.field private final mResSummary:I

.field private final mResTitle:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;-><init>()V

    iput p1, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/DisabledItem;->mResTitle:I

    iput p2, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/DisabledItem;->mResSummary:I

    return-void
.end method


# virtual methods
.method public getRowType()Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    sget-object v0, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;->DISABLED_ITEM:Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/DisabledItem;->mResSummary:I

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/DisabledItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/item/DisabledItem;->mResTitle:I

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/DisabledItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lorg/cyanogenmod/cmparts/profiles/actions/item/BaseItem;->getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    const v1, 0x1020010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
