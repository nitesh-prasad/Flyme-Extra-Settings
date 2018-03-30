.class public Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ItemListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/cyanogenmod/cmparts/profiles/actions/item/Item;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/cyanogenmod/cmparts/profiles/actions/item/Item;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/profiles/actions/item/Item;

    invoke-interface {v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/Item;->getRowType()Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/profiles/actions/item/Item;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-interface {v0, v1, p2, p3}, Lorg/cyanogenmod/cmparts/profiles/actions/item/Item;->getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-static {}, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;->values()[Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter$RowType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/profiles/actions/item/Item;

    invoke-interface {v0}, Lorg/cyanogenmod/cmparts/profiles/actions/item/Item;->isEnabled()Z

    move-result v0

    return v0
.end method
