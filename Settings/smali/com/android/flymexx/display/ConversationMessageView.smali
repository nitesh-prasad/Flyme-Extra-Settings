.class public Lcom/android/flymexx/display/ConversationMessageView;
.super Landroid/widget/FrameLayout;
.source "ConversationMessageView.java"


# instance fields
.field private mContactIconView:Landroid/widget/TextView;

.field private final mIconBackgroundColor:I

.field private final mIconText:Ljava/lang/CharSequence;

.field private final mIconTextColor:I

.field private final mIncoming:Z

.field private mMessageBubble:Landroid/widget/LinearLayout;

.field private final mMessageText:Ljava/lang/CharSequence;

.field private mMessageTextAndInfoView:Landroid/view/ViewGroup;

.field private mMessageTextView:Landroid/widget/TextView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private final mTimestampText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/flymexx/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/flymexx/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/flymexx/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v1, Lcom/android/flymexx/R$styleable;->ConversationMessageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/flymexx/display/ConversationMessageView;->mIncoming:Z

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/display/ConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/display/ConversationMessageView;->mTimestampText:Ljava/lang/CharSequence;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/display/ConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/flymexx/display/ConversationMessageView;->mIconTextColor:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/flymexx/display/ConversationMessageView;->mIconBackgroundColor:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040047

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040046

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private static getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p2, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method private static isLayoutRtl(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTextAppearance()V
    .locals 4

    iget-boolean v3, p0, Lcom/android/flymexx/display/ConversationMessageView;->mIncoming:Z

    if-eqz v3, :cond_0

    const v1, 0x7f0d008b

    :goto_0
    iget-boolean v3, p0, Lcom/android/flymexx/display/ConversationMessageView;->mIncoming:Z

    if-eqz v3, :cond_1

    const v2, 0x7f0d008e

    :goto_1
    invoke-virtual {p0}, Lcom/android/flymexx/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/flymexx/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/flymexx/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v3, p0, Lcom/android/flymexx/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    const v1, 0x7f0d008c

    goto :goto_0

    :cond_1
    const v2, 0x7f0d008d

    goto :goto_1
.end method

.method private updateViewAppearance()V
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/display/ConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v18, 0x7f0b0150

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const v18, 0x7f0b0152

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    const v18, 0x7f0b0153

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v17

    const v18, 0x7f0b0154

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/flymexx/display/ConversationMessageView;->mIncoming:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    add-int v15, v9, v4

    move/from16 v16, v9

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/flymexx/display/ConversationMessageView;->mIncoming:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    const v8, 0x800013

    :goto_1
    const v18, 0x7f0b0151

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v18, 0x7f0b0155

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/flymexx/display/ConversationMessageView;->mIncoming:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    const v6, 0x7f020161

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/flymexx/display/ConversationMessageView;->mIncoming:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    const v5, 0x7f0d008f

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual {v7, v5}, Landroid/content/Context;->getColor(I)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v7, v0, v1}, Lcom/android/flymexx/display/ConversationMessageView;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static/range {p0 .. p0}, Lcom/android/flymexx/display/ConversationMessageView;->isLayoutRtl(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    add-int v19, v17, v11

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15, v14}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/display/ConversationMessageView;->getPaddingLeft()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/flymexx/display/ConversationMessageView;->getPaddingRight()I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/android/flymexx/display/ConversationMessageView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/flymexx/display/ConversationMessageView;->updateTextAppearance()V

    return-void

    :cond_0
    move v15, v9

    add-int v16, v9, v4

    goto/16 :goto_0

    :cond_1
    const v8, 0x800015

    goto/16 :goto_1

    :cond_2
    const v6, 0x7f020162

    goto :goto_2

    :cond_3
    const v5, 0x7f0d0090

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/flymexx/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    add-int v19, v17, v11

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-virtual {v0, v15, v1, v2, v14}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_4
.end method

.method private updateViewContent()V
    .locals 4

    iget-object v1, p0, Lcom/android/flymexx/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/flymexx/display/ConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/flymexx/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/flymexx/display/ConversationMessageView;->mTimestampText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/flymexx/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/flymexx/display/ConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/flymexx/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/flymexx/display/ConversationMessageView;->mIconTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020072

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/flymexx/display/ConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/flymexx/display/ConversationMessageView;->mIconBackgroundColor:I

    invoke-static {v2, v0, v3}, Lcom/android/flymexx/display/ConversationMessageView;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    const v0, 0x7f1100c8

    invoke-virtual {p0, v0}, Lcom/android/flymexx/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/flymexx/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    const v0, 0x7f1100c9

    invoke-virtual {p0, v0}, Lcom/android/flymexx/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/flymexx/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    const v0, 0x7f1100ca

    invoke-virtual {p0, v0}, Lcom/android/flymexx/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/flymexx/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    const v0, 0x7f1100cb

    invoke-virtual {p0, v0}, Lcom/android/flymexx/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/flymexx/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    const v0, 0x7f1100cc

    invoke-virtual {p0, v0}, Lcom/android/flymexx/display/ConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/flymexx/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/flymexx/display/ConversationMessageView;->updateViewContent()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    invoke-static {p0}, Lcom/android/flymexx/display/ConversationMessageView;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    iget-object v9, p0, Lcom/android/flymexx/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    iget-object v9, p0, Lcom/android/flymexx/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/flymexx/display/ConversationMessageView;->getPaddingTop()I

    move-result v6

    sub-int v9, p4, p2

    sub-int/2addr v9, v7

    invoke-virtual {p0}, Lcom/android/flymexx/display/ConversationMessageView;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/flymexx/display/ConversationMessageView;->getPaddingRight()I

    move-result v10

    sub-int v3, v9, v10

    iget-object v9, p0, Lcom/android/flymexx/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    move v2, v6

    iget-boolean v9, p0, Lcom/android/flymexx/display/ConversationMessageView;->mIncoming:Z

    if-eqz v9, :cond_1

    if-eqz v8, :cond_0

    sub-int v9, p4, p2

    invoke-virtual {p0}, Lcom/android/flymexx/display/ConversationMessageView;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v5, v9, v7

    sub-int v1, v5, v3

    :goto_0
    iget-object v9, p0, Lcom/android/flymexx/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    add-int v10, v5, v7

    add-int v11, v6, v4

    invoke-virtual {v9, v5, v6, v10, v11}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v9, p0, Lcom/android/flymexx/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    add-int v10, v1, v3

    add-int v11, v6, v0

    invoke-virtual {v9, v1, v6, v10, v11}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/display/ConversationMessageView;->getPaddingLeft()I

    move-result v5

    add-int v1, v5, v7

    goto :goto_0

    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/android/flymexx/display/ConversationMessageView;->getPaddingLeft()I

    move-result v5

    add-int v1, v5, v7

    goto :goto_0

    :cond_2
    sub-int v9, p4, p2

    invoke-virtual {p0}, Lcom/android/flymexx/display/ConversationMessageView;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v5, v9, v7

    sub-int v1, v5, v3

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/flymexx/display/ConversationMessageView;->updateViewAppearance()V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v7, p0, Lcom/android/flymexx/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v2}, Landroid/widget/TextView;->measure(II)V

    iget-object v7, p0, Lcom/android/flymexx/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/flymexx/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v7, p0, Lcom/android/flymexx/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {p0}, Lcom/android/flymexx/display/ConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0150

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v7, p0, Lcom/android/flymexx/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    sub-int/2addr v7, v0

    invoke-virtual {p0}, Lcom/android/flymexx/display/ConversationMessageView;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/flymexx/display/ConversationMessageView;->getPaddingRight()I

    move-result v8

    sub-int v4, v7, v8

    const/high16 v7, -0x80000000

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v7, p0, Lcom/android/flymexx/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v6}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v7, p0, Lcom/android/flymexx/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/flymexx/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/flymexx/display/ConversationMessageView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {p0}, Lcom/android/flymexx/display/ConversationMessageView;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0, v1, v7}, Lcom/android/flymexx/display/ConversationMessageView;->setMeasuredDimension(II)V

    return-void
.end method
