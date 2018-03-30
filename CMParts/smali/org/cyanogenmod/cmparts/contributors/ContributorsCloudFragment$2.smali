.class Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$2;
.super Ljava/lang/Object;
.source "ContributorsCloudFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$2;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsDataHolder;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$2;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    invoke-static {v1, v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->-wrap3(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsDataHolder;)V

    return-void
.end method
