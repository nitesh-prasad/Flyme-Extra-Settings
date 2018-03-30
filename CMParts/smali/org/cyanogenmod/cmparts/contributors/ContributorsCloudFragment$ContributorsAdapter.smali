.class Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ContributorsCloudFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContributorsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsDataHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f0c0069

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f03001d

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsViewHolder;

    invoke-direct {v2, v4}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsViewHolder;-><init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsViewHolder;)V

    const v3, 0x7f0c0069

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsDataHolder;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsViewHolder;

    iget-object v3, v2, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsViewHolder;->mLabel:Landroid/widget/TextView;

    iget-object v4, v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsDataHolder;->mLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
