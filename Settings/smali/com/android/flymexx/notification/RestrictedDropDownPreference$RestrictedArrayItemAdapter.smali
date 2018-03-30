.class Lcom/android/flymexx/notification/RestrictedDropDownPreference$RestrictedArrayItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RestrictedDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/notification/RestrictedDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestrictedArrayItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/notification/RestrictedDropDownPreference;


# direct methods
.method public constructor <init>(Lcom/android/flymexx/notification/RestrictedDropDownPreference;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/flymexx/notification/RestrictedDropDownPreference$RestrictedArrayItemAdapter;->this$0:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    const v0, 0x7f04012c

    const v1, 0x1020014

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/flymexx/notification/RestrictedDropDownPreference$RestrictedArrayItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/flymexx/notification/RestrictedDropDownPreference$RestrictedArrayItemAdapter;->this$0:Lcom/android/flymexx/notification/RestrictedDropDownPreference;

    invoke-static {v5, v0}, Lcom/android/flymexx/notification/RestrictedDropDownPreference;->-wrap0(Lcom/android/flymexx/notification/RestrictedDropDownPreference;Ljava/lang/CharSequence;)Z

    move-result v1

    const v5, 0x1020014

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    if-eqz v1, :cond_2

    move v5, v6

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    const v5, 0x7f110210

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object v3

    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/16 v6, 0x8

    goto :goto_1
.end method
