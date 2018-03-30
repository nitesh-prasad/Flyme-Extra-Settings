.class public Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingsDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->mActivity:Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getTile(I)Lcom/android/flymexxlib/drawer/Tile;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;

    iget-object v0, v0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;->tile:Lcom/android/flymexxlib/drawer/Tile;

    :cond_0
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;

    if-nez v1, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v4, Lcom/android/flymexxlib/R$id;->spacer:I

    if-eq v2, v4, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->mActivity:Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/android/flymexxlib/R$layout;->drawer_spacer:I

    invoke-virtual {v2, v4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_1
    return-object p2

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v4, Lcom/android/flymexxlib/R$id;->spacer:I

    if-ne v2, v4, :cond_3

    const/4 p2, 0x0

    :cond_3
    iget-object v2, v1, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;->icon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_7

    const/4 v0, 0x1

    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v4, Lcom/android/flymexxlib/R$id;->tile_item:I

    if-ne v2, v4, :cond_8

    const/4 v2, 0x1

    :goto_1
    if-eq v0, v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->mActivity:Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    if-eqz v0, :cond_9

    sget v2, Lcom/android/flymexxlib/R$layout;->drawer_item:I

    :goto_2
    invoke-virtual {v4, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_5
    if-eqz v0, :cond_6

    const v2, 0x1020006

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    :cond_6
    const v2, 0x1020016

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    move v2, v3

    goto :goto_1

    :cond_9
    sget v2, Lcom/android/flymexxlib/R$layout;->drawer_category:I

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;

    iget-object v0, v0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;->icon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method updateCategories()V
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->mActivity:Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;

    invoke-virtual {v7}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    iget-object v7, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;

    invoke-direct {v6, v9}, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;-><init>(Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;)V

    iget-object v7, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->mActivity:Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;

    sget v8, Lcom/android/flymexxlib/R$string;->home:I

    invoke-virtual {v7, v8}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;->label:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->mActivity:Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;

    sget v8, Lcom/android/flymexxlib/R$drawable;->home:I

    invoke-static {v7, v8}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    iput-object v7, v6, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;->icon:Landroid/graphics/drawable/Icon;

    iget-object v7, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    new-instance v1, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;

    invoke-direct {v1, v9}, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;-><init>(Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;)V

    iput-object v9, v1, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;->icon:Landroid/graphics/drawable/Icon;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/flymexxlib/drawer/DashboardCategory;

    iget-object v7, v2, Lcom/android/flymexxlib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    iput-object v7, v1, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;->label:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    :goto_1
    iget-object v7, v2, Lcom/android/flymexxlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    new-instance v6, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;

    invoke-direct {v6, v9}, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;-><init>(Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;)V

    iget-object v7, v2, Lcom/android/flymexxlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/flymexxlib/drawer/Tile;

    iget-object v7, v3, Lcom/android/flymexxlib/drawer/Tile;->title:Ljava/lang/CharSequence;

    iput-object v7, v6, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;->label:Ljava/lang/CharSequence;

    iget-object v7, v3, Lcom/android/flymexxlib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    iput-object v7, v6, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;->icon:Landroid/graphics/drawable/Icon;

    iput-object v3, v6, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter$Item;->tile:Lcom/android/flymexxlib/drawer/Tile;

    iget-object v7, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->notifyDataSetChanged()V

    return-void
.end method
