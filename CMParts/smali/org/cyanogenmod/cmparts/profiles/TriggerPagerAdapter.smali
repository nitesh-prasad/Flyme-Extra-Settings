.class public Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "TriggerPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter$Holder;,
        Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter$TriggerFragments;
    }
.end annotation


# instance fields
.field private final mFragmentActivity:Landroid/app/Activity;

.field private final mFragmentArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter$Holder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/FragmentManager;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;->mFragmentArray:Landroid/util/SparseArray;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;->mHolderList:Ljava/util/List;

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;->mFragmentActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    new-instance v0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter$Holder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter$Holder;-><init>(Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter$Holder;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter$Holder;->mClassName:Ljava/lang/String;

    iput-object p2, v0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter$Holder;->mParams:Landroid/os/Bundle;

    iput p3, v0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter$Holder;->mTitleResId:I

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;->mHolderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;->mHolderList:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/support/v13/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;->mFragmentArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;->mHolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 5

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;->mHolderList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter$Holder;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;->mFragmentActivity:Landroid/app/Activity;

    iget-object v3, v0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter$Holder;->mClassName:Ljava/lang/String;

    iget-object v4, v0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter$Holder;->mParams:Landroid/os/Bundle;

    invoke-static {v2, v3, v4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;->mFragmentActivity:Landroid/app/Activity;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;->mHolderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter$Holder;

    iget v0, v0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter$Holder;->mTitleResId:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/support/v13/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;->mFragmentArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/TriggerPagerAdapter;->mFragmentArray:Landroid/util/SparseArray;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method
