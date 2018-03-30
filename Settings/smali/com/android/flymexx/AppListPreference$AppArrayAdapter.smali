.class public Lcom/android/flymexx/AppListPreference$AppArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/AppListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mImageDrawables:[Landroid/graphics/drawable/Drawable;

.field private mSelectedIndex:I

.field final synthetic this$0:Lcom/android/flymexx/AppListPreference;


# direct methods
.method public constructor <init>(Lcom/android/flymexx/AppListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/flymexx/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/flymexx/AppListPreference;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/flymexx/AppListPreference$AppArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/flymexx/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    iput p6, p0, Lcom/android/flymexx/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    iput-object p5, p0, Lcom/android/flymexx/AppListPreference$AppArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/AppListPreference$AppArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f040028

    invoke-virtual {v2, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/AppListPreference$AppArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v6, p0, Lcom/android/flymexx/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    if-ne p1, v6, :cond_3

    iget-object v6, p0, Lcom/android/flymexx/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/flymexx/AppListPreference;

    invoke-static {v6}, Lcom/android/flymexx/AppListPreference;->-get1(Lcom/android/flymexx/AppListPreference;)I

    move-result v6

    if-ne p1, v6, :cond_3

    const v6, 0x7f11007d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/flymexx/AppListPreference$AppArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, p1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/flymexx/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/flymexx/AppListPreference;

    invoke-static {v6}, Lcom/android/flymexx/AppListPreference;->-get0(Lcom/android/flymexx/AppListPreference;)[Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/flymexx/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/flymexx/AppListPreference;

    invoke-static {v6}, Lcom/android/flymexx/AppListPreference;->-get0(Lcom/android/flymexx/AppListPreference;)[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, p1

    if-nez v6, :cond_5

    :cond_1
    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    if-nez v0, :cond_2

    const v6, 0x1020010

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/flymexx/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/flymexx/AppListPreference;

    invoke-static {v6}, Lcom/android/flymexx/AppListPreference;->-get0(Lcom/android/flymexx/AppListPreference;)[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, p1

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-object v5

    :cond_3
    iget v6, p0, Lcom/android/flymexx/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    if-ne p1, v6, :cond_4

    const v6, 0x7f11007b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/flymexx/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/flymexx/AppListPreference;

    invoke-static {v6}, Lcom/android/flymexx/AppListPreference;->-get1(Lcom/android/flymexx/AppListPreference;)I

    move-result v6

    if-ne p1, v6, :cond_0

    const v6, 0x7f11007c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    move v0, v7

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/flymexx/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/flymexx/AppListPreference;

    invoke-static {v1}, Lcom/android/flymexx/AppListPreference;->-get0(Lcom/android/flymexx/AppListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/flymexx/AppListPreference;

    invoke-static {v1}, Lcom/android/flymexx/AppListPreference;->-get0(Lcom/android/flymexx/AppListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
