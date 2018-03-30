.class public Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils;
.super Ljava/lang/Object;
.source "ConditionAdapterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDismiss(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    new-instance v0, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$1;

    const/4 v2, 0x0

    const/16 v3, 0x30

    invoke-direct {v0, v2, v3, p0}, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$1;-><init>(IILandroid/support/v7/widget/RecyclerView;)V

    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private static animateChange(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 3

    const/4 v2, 0x0

    const v1, 0x7f1100bc

    invoke-static {p2, v1, p4}, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils;->setViewVisibility(Landroid/view/View;IZ)V

    const v1, 0x7f1100bd

    invoke-static {p2, v1, p4}, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils;->setViewVisibility(Landroid/view/View;IZ)V

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-eqz p3, :cond_0

    const/4 v1, -0x2

    :goto_0
    invoke-static {p2, v1}, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils;->setHeight(Landroid/view/View;I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$3;

    invoke-direct {v1, p1, v0, p3, p2}, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$3;-><init>(Landroid/view/View;IZLandroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static bindViews(Lcom/android/flymexx/dashboard/conditional/Condition;Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 11

    iget-object v8, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v9, 0x7f1100b8

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/conditional/Condition;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    iget-object v8, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/conditional/Condition;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v9, 0x7f1100b9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v8, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v9, 0x7f1100ba

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    const v8, 0x7f0200b8

    :goto_0
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    if-eqz p2, :cond_2

    const v8, 0x7f0c0df1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v9, 0x7f1100bb

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/conditional/Condition;->getActions()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    if-eq p2, v8, :cond_0

    iget-object v9, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    iget-object v8, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v10, 0x7f1100b8

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    array-length v8, v0

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_3
    invoke-static {v9, v10, v4, p2, v8}, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils;->animateChange(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZ)V

    :cond_0
    if-eqz p2, :cond_7

    iget-object v8, p1, Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/conditional/Condition;->getSummary()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    :goto_4
    const/4 v8, 0x2

    if-ge v6, v8, :cond_7

    if-nez v6, :cond_5

    const v8, 0x7f1100be

    :goto_5
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    array-length v8, v0

    if-le v8, v6, :cond_6

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    aget-object v8, v0, v6

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move v7, v6

    new-instance v8, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$2;

    invoke-direct {v8, p0, v7}, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils$2;-><init>(Lcom/android/flymexx/dashboard/conditional/Condition;I)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_1
    const v8, 0x7f0200b9

    goto :goto_0

    :cond_2
    const v8, 0x7f0c0df0

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    :cond_5
    const v8, 0x7f1100bf

    goto :goto_5

    :cond_6
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    :cond_7
    return-void
.end method

.method private static setHeight(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static setViewVisibility(Landroid/view/View;IZ)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method
