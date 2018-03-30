.class public Lcom/android/flymexx/dashboard/DashboardAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;,
        Lcom/android/flymexx/dashboard/DashboardAdapter$IconCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static SUGGESTION_MODE_COLLAPSED:I

.field private static SUGGESTION_MODE_DEFAULT:I

.field private static SUGGESTION_MODE_EXPANDED:I


# instance fields
.field private final mCache:Lcom/android/flymexx/dashboard/DashboardAdapter$IconCache;

.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexxlib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexx/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mExpandedCondition:Lcom/android/flymexx/dashboard/conditional/Condition;

.field private mId:I

.field private final mIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsShowingAll:Z

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionMode:I

.field private mSuggestionParser:Lcom/android/flymexxlib/SuggestionParser;

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexxlib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private final mTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/flymexx/dashboard/DashboardAdapter;->SUGGESTION_MODE_COLLAPSED:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/flymexx/dashboard/DashboardAdapter;->SUGGESTION_MODE_EXPANDED:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/dashboard/DashboardAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/flymexx/dashboard/DashboardAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mIsShowingAll:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/flymexx/dashboard/DashboardAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/flymexx/dashboard/DashboardAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestionMode:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/dashboard/DashboardAdapter;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->hasMoreSuggestions()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/dashboard/DashboardAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->recountItems()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/flymexx/dashboard/DashboardAdapter;Landroid/view/View;Lcom/android/flymexxlib/drawer/Tile;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/dashboard/DashboardAdapter;->showRemoveOption(Landroid/view/View;Lcom/android/flymexxlib/drawer/Tile;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/flymexx/dashboard/DashboardAdapter;->SUGGESTION_MODE_DEFAULT:I

    const/4 v0, 0x1

    sput v0, Lcom/android/flymexx/dashboard/DashboardAdapter;->SUGGESTION_MODE_COLLAPSED:I

    const/4 v0, 0x2

    sput v0, Lcom/android/flymexx/dashboard/DashboardAdapter;->SUGGESTION_MODE_EXPANDED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/flymexxlib/SuggestionParser;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/flymexxlib/SuggestionParser;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexx/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    sget v1, Lcom/android/flymexx/dashboard/DashboardAdapter;->SUGGESTION_MODE_DEFAULT:I

    iput v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestionMode:I

    iput-object v3, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/flymexx/dashboard/conditional/Condition;

    iput-object p1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/flymexx/dashboard/DashboardAdapter$IconCache;

    invoke-direct {v1, p1}, Lcom/android/flymexx/dashboard/DashboardAdapter$IconCache;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mCache:Lcom/android/flymexx/dashboard/DashboardAdapter$IconCache;

    iput-object p2, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestionParser:Lcom/android/flymexxlib/SuggestionParser;

    iput-object p4, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/android/flymexx/dashboard/DashboardAdapter;->setHasStableIds(Z)V

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    const-string/jumbo v1, "suggestion_list"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    const-string/jumbo v1, "category_list"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    const-string/jumbo v1, "is_showing_all"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "suggestion_mode"

    sget v2, Lcom/android/flymexx/dashboard/DashboardAdapter;->SUGGESTION_MODE_DEFAULT:I

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestionMode:I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->setShowingAll(Z)V

    return-void
.end method

.method private countItem(Ljava/lang/Object;IZI)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    iget v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mId:I

    add-int/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mId:I

    return-void
.end method

.method private getDisplayableSuggestionCount()I
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestionMode:I

    sget v2, Lcom/android/flymexx/dashboard/DashboardAdapter;->SUGGESTION_MODE_DEFAULT:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestionMode:I

    sget v2, Lcom/android/flymexx/dashboard/DashboardAdapter;->SUGGESTION_MODE_EXPANDED:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSuggestionIdentifier(Landroid/content/Context;Lcom/android/flymexxlib/drawer/Tile;)Ljava/lang/String;
    .locals 2

    iget-object v1, p1, Lcom/android/flymexxlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/flymexxlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private hasMoreSuggestions()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestionMode:I

    sget v3, Lcom/android/flymexx/dashboard/DashboardAdapter;->SUGGESTION_MODE_COLLAPSED:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestionMode:I

    sget v3, Lcom/android/flymexx/dashboard/DashboardAdapter;->SUGGESTION_MODE_DEFAULT:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private onBindCategory(Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/flymexxlib/drawer/DashboardCategory;)V
    .locals 2

    iget-object v0, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/flymexxlib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onBindSeeAll(Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;)V
    .locals 2

    iget-object v1, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mIsShowingAll:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c0dd8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/flymexx/dashboard/DashboardAdapter$6;

    invoke-direct {v1, p0}, Lcom/android/flymexx/dashboard/DashboardAdapter$6;-><init>(Lcom/android/flymexx/dashboard/DashboardAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const v0, 0x7f0c0dd7

    goto :goto_0
.end method

.method private onBindSuggestionHeader(Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->hasMoreSuggestions()Z

    move-result v0

    iget-object v3, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {p0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->getDisplayableSuggestionCount()I

    move-result v4

    sub-int v2, v3, v4

    iget-object v4, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v3, 0x7f0200b9

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0c0e01

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f120017

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v3, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez v2, :cond_2

    iget-object v3, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v3, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/android/flymexx/dashboard/DashboardAdapter$5;

    invoke-direct {v4, p0}, Lcom/android/flymexx/dashboard/DashboardAdapter$5;-><init>(Lcom/android/flymexx/dashboard/DashboardAdapter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const v3, 0x7f0200b8

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0df1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v3, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0c0e02

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private onBindTile(Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/flymexxlib/drawer/Tile;)V
    .locals 3

    iget-object v0, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mCache:Lcom/android/flymexx/dashboard/DashboardAdapter$IconCache;

    iget-object v2, p2, Lcom/android/flymexxlib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v2}, Lcom/android/flymexx/dashboard/DashboardAdapter$IconCache;->getIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/flymexxlib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/android/flymexxlib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/flymexxlib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private recountItems()V
    .locals 15

    const/16 v14, 0x7d0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x0

    invoke-direct {p0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->reset()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v8, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    iget-object v8, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/flymexx/dashboard/conditional/Condition;

    invoke-virtual {v8}, Lcom/android/flymexx/dashboard/conditional/Condition;->shouldShow()Z

    move-result v6

    or-int/2addr v1, v6

    iget-object v8, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    const v11, 0x7f04003f

    const/16 v12, 0xbb8

    invoke-direct {p0, v8, v11, v6, v12}, Lcom/android/flymexx/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v2, 0x1

    :goto_1
    if-eqz v1, :cond_2

    move v8, v2

    :goto_2
    const v11, 0x7f04005d

    invoke-direct {p0, v13, v11, v8, v9}, Lcom/android/flymexx/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    const v8, 0x7f04013a

    invoke-direct {p0, v13, v8, v2, v9}, Lcom/android/flymexx/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    invoke-direct {p0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->resetCount()V

    iget-object v8, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    if-eqz v8, :cond_4

    invoke-direct {p0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->getDisplayableSuggestionCount()I

    move-result v5

    const/4 v3, 0x0

    :goto_3
    iget-object v8, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    iget-object v8, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-ge v3, v5, :cond_3

    move v8, v10

    :goto_4
    const v12, 0x7f04013b

    const/16 v13, 0x3e8

    invoke-direct {p0, v11, v12, v8, v13}, Lcom/android/flymexx/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move v8, v9

    goto :goto_2

    :cond_3
    move v8, v9

    goto :goto_4

    :cond_4
    invoke-direct {p0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->resetCount()V

    const/4 v3, 0x0

    :goto_5
    iget-object v8, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_7

    iget-object v8, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/drawer/DashboardCategory;

    iget-boolean v8, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mIsShowingAll:Z

    const v9, 0x7f04005a

    invoke-direct {p0, v0, v9, v8, v14}, Lcom/android/flymexx/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    const/4 v4, 0x0

    :goto_6
    iget-object v8, v0, Lcom/android/flymexxlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_6

    iget-object v8, v0, Lcom/android/flymexxlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/flymexxlib/drawer/Tile;

    iget-boolean v8, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mIsShowingAll:Z

    if-nez v8, :cond_5

    sget-object v8, Lcom/android/flymexx/dashboard/DashboardSummary;->INITIAL_ITEMS:[Ljava/lang/String;

    iget-object v9, v7, Lcom/android/flymexxlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    :goto_7
    const v9, 0x7f04005e

    invoke-direct {p0, v7, v9, v8, v14}, Lcom/android/flymexx/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_5
    move v8, v10

    goto :goto_7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mId:I

    return-void
.end method

.method private resetCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mId:I

    return-void
.end method

.method private showRemoveOption(Landroid/view/View;Lcom/android/flymexxlib/drawer/Tile;)V
    .locals 4

    new-instance v0, Landroid/support/v7/widget/PopupMenu;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f10017c

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0c0e03

    invoke-interface {v1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/android/flymexx/dashboard/DashboardAdapter$4;

    invoke-direct {v2, p0, p2}, Lcom/android/flymexx/dashboard/DashboardAdapter$4;-><init>(Lcom/android/flymexx/dashboard/DashboardAdapter;Lcom/android/flymexxlib/drawer/Tile;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    return-void
.end method


# virtual methods
.method public disableSuggestion(Lcom/android/flymexxlib/drawer/Tile;)V
    .locals 4

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestionParser:Lcom/android/flymexxlib/SuggestionParser;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestionParser:Lcom/android/flymexxlib/SuggestionParser;

    invoke-virtual {v0, p1}, Lcom/android/flymexxlib/SuggestionParser;->dismissSuggestion(Lcom/android/flymexxlib/drawer/Tile;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/flymexxlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestionParser:Lcom/android/flymexxlib/SuggestionParser;

    iget-object v1, p1, Lcom/android/flymexxlib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/SuggestionParser;->markCategoryDone(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getItem(J)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexxlib/drawer/Tile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    return-object v0
.end method

.method public notifyChanged(Lcom/android/flymexxlib/drawer/Tile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/flymexx/dashboard/DashboardAdapter;->onBindViewHolder(Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;I)V
    .locals 5

    iget-object v2, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v2, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/flymexxlib/drawer/DashboardCategory;

    invoke-direct {p0, p1, v2}, Lcom/android/flymexx/dashboard/DashboardAdapter;->onBindCategory(Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/flymexxlib/drawer/DashboardCategory;)V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexxlib/drawer/Tile;

    invoke-direct {p0, p1, v1}, Lcom/android/flymexx/dashboard/DashboardAdapter;->onBindTile(Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/flymexxlib/drawer/Tile;)V

    iget-object v2, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/flymexx/dashboard/DashboardAdapter;->onBindSuggestionHeader(Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;)V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/drawer/Tile;

    invoke-direct {p0, p1, v0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->onBindTile(Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/flymexxlib/drawer/Tile;)V

    iget-object v2, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/android/flymexx/dashboard/DashboardAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/android/flymexx/dashboard/DashboardAdapter$1;-><init>(Lcom/android/flymexx/dashboard/DashboardAdapter;Lcom/android/flymexxlib/drawer/Tile;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v3, 0x7f110253

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/flymexx/dashboard/DashboardAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/android/flymexx/dashboard/DashboardAdapter$2;-><init>(Lcom/android/flymexx/dashboard/DashboardAdapter;Lcom/android/flymexxlib/drawer/Tile;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, p1}, Lcom/android/flymexx/dashboard/DashboardAdapter;->onBindSeeAll(Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;)V

    goto :goto_0

    :sswitch_5
    iget-object v2, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/flymexx/dashboard/conditional/Condition;

    iget-object v3, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/flymexx/dashboard/conditional/Condition;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_1
    new-instance v4, Lcom/android/flymexx/dashboard/DashboardAdapter$3;

    invoke-direct {v4, p0}, Lcom/android/flymexx/dashboard/DashboardAdapter$3;-><init>(Lcom/android/flymexx/dashboard/DashboardAdapter;)V

    invoke-static {v2, p1, v3, p0, v4}, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils;->bindViews(Lcom/android/flymexx/dashboard/conditional/Condition;Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f04003f -> :sswitch_5
        0x7f04005a -> :sswitch_0
        0x7f04005e -> :sswitch_1
        0x7f040113 -> :sswitch_4
        0x7f04013a -> :sswitch_2
        0x7f04013b -> :sswitch_3
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1100e9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexxlib/drawer/Tile;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/SettingsActivity;->openTile(Lcom/android/flymexxlib/drawer/Tile;)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/flymexx/dashboard/conditional/Condition;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/flymexx/dashboard/conditional/Condition;

    invoke-virtual {v1}, Lcom/android/flymexx/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v1

    const/16 v2, 0x177

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/flymexx/dashboard/conditional/Condition;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/Condition;->onPrimaryClick()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/dashboard/conditional/Condition;

    iput-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/flymexx/dashboard/conditional/Condition;

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/flymexx/dashboard/conditional/Condition;

    invoke-virtual {v1}, Lcom/android/flymexx/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v1

    const/16 v2, 0x175

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/flymexx/dashboard/DashboardAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;
    .locals 3

    new-instance v0, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onExpandClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/flymexx/dashboard/conditional/Condition;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/flymexx/dashboard/conditional/Condition;

    invoke-virtual {v1}, Lcom/android/flymexx/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v1

    const/16 v2, 0x176

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/flymexx/dashboard/conditional/Condition;

    :goto_0
    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/dashboard/conditional/Condition;

    iput-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/flymexx/dashboard/conditional/Condition;

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/flymexx/dashboard/conditional/Condition;

    invoke-virtual {v1}, Lcom/android/flymexx/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v1

    const/16 v2, 0x175

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "suggestion_list"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "category_list"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    const-string/jumbo v0, "is_showing_all"

    iget-boolean v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mIsShowingAll:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "suggestion_mode"

    iget v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestionMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setCategoriesAndSuggestions(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexxlib/drawer/DashboardCategory;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexxlib/drawer/Tile;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    iput-object p1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iget-object v4, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010435

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/flymexxlib/drawer/DashboardCategory;

    iget-object v4, v4, Lcom/android/flymexxlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/flymexxlib/drawer/DashboardCategory;

    iget-object v4, v4, Lcom/android/flymexxlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/flymexxlib/drawer/Tile;

    iget-object v4, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/android/flymexxlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/android/flymexxlib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    iget v5, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->recountItems()V

    return-void
.end method

.method public setConditions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexx/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->recountItems()V

    return-void
.end method

.method public setShowingAll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter;->mIsShowingAll:Z

    invoke-direct {p0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->recountItems()V

    return-void
.end method
