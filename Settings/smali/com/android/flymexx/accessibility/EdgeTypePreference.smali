.class public Lcom/android/flymexx/accessibility/EdgeTypePreference;
.super Lcom/android/flymexx/accessibility/ListDialogPreference;
.source "EdgeTypePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/flymexx/accessibility/EdgeTypePreference;->setValues([I)V

    const v1, 0x7f0a005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/flymexx/accessibility/EdgeTypePreference;->setTitles([Ljava/lang/CharSequence;)V

    const v1, 0x7f04008b

    invoke-virtual {p0, v1}, Lcom/android/flymexx/accessibility/EdgeTypePreference;->setDialogLayoutResource(I)V

    const v1, 0x7f0400eb

    invoke-virtual {p0, v1}, Lcom/android/flymexx/accessibility/EdgeTypePreference;->setListItemLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindListItem(Landroid/view/View;I)V
    .locals 6

    const v5, 0x7f110121

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SubtitleView;

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/SubtitleView;->setForegroundColor(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/SubtitleView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/EdgeTypePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x42000000    # 32.0f

    mul-float/2addr v5, v0

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    invoke-virtual {p0, p2}, Lcom/android/flymexx/accessibility/EdgeTypePreference;->getValueAt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/SubtitleView;->setEdgeType(I)V

    const/high16 v5, -0x1000000

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/SubtitleView;->setEdgeColor(I)V

    invoke-virtual {p0, p2}, Lcom/android/flymexx/accessibility/EdgeTypePreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    const v5, 0x7f1100b7

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/EdgeTypePreference;->getValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/flymexx/accessibility/ListDialogPreference;->shouldDisableDependents()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
