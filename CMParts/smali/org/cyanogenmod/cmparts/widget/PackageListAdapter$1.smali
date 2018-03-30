.class Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$1;
.super Landroid/os/Handler;
.source "PackageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$1;->this$0:Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$1;->this$0:Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;

    invoke-static {v2}, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->-get0(Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$1;->this$0:Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;

    invoke-static {v2}, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->-get0(Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;)Ljava/util/List;

    move-result-object v2

    neg-int v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$1;->this$0:Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;

    invoke-virtual {v2}, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$1;->this$0:Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;

    invoke-static {v2}, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;->-get0(Lorg/cyanogenmod/cmparts/widget/PackageListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;

    invoke-static {v2}, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;->-get0(Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;)Ljava/util/TreeSet;

    move-result-object v2

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;->-get0(Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;)Ljava/util/TreeSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
