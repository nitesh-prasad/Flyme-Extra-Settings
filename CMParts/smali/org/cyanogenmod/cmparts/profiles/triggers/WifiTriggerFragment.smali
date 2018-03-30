.class public Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;
.super Landroid/app/ListFragment;
.source "WifiTriggerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$Trigger;,
        Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTrigger;,
        Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;
    }
.end annotation


# instance fields
.field private mEmptyView:Landroid/view/View;

.field private mListAdapter:Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;

.field mProfile:Lcyanogenmod/app/Profile;

.field private mProfileManager:Lcyanogenmod/app/ProfileManager;

.field private mTriggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTrigger;",
            ">;"
        }
    .end annotation
.end field

.field mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;)Lcyanogenmod/app/ProfileManager;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->mTriggers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->reloadTriggerListItems()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->mTriggers:Ljava/util/List;

    return-void
.end method

.method private initPreference(Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;ILandroid/content/res/Resources;I)V
    .locals 3

    const v2, 0x7f06003c

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p2, :cond_1

    const v2, 0x7f06003b

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;->setSummary(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p2}, Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;->setTriggerState(I)V

    invoke-virtual {p1, p4}, Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;->setIcon(I)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private reloadTriggerListItems()V
    .locals 13

    const v12, 0x7f02008c

    const/4 v11, 0x0

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->mTriggers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    new-instance v0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTrigger;

    invoke-direct {v0, v1}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTrigger;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTrigger;->getSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Lcyanogenmod/app/Profile;->getTriggerState(ILjava/lang/String;)I

    move-result v5

    invoke-direct {p0, v0, v5, v4, v12}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->initPreference(Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;ILandroid/content/res/Resources;I)V

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->mTriggers:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v9, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v9, v11}, Lcyanogenmod/app/Profile;->getTriggersFromType(I)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcyanogenmod/app/Profile$ProfileTrigger;

    new-instance v0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTrigger;

    invoke-virtual {v6}, Lcyanogenmod/app/Profile$ProfileTrigger;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTrigger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcyanogenmod/app/Profile$ProfileTrigger;->getState()I

    move-result v9

    invoke-direct {p0, v0, v9, v4, v12}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->initPreference(Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;ILandroid/content/res/Resources;I)V

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->mTriggers:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v9, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->mListAdapter:Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->mListAdapter:Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;

    invoke-virtual {v9}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private removeTrigger(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$Trigger;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$Trigger;

    iget v2, v0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$Trigger;->value:I

    if-ne v2, p2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->reloadTriggerListItems()V

    new-instance v0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;-><init>(Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->mListAdapter:Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->mListAdapter:Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "Profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "no profile!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f03005e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->mEmptyView:Landroid/view/View;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->mEmptyView:Landroid/view/View;

    new-instance v2, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$1;

    invoke-direct {v2, p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$1;-><init>(Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 18

    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    new-instance v14, Ljava/util/ArrayList;

    array-length v1, v9

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    :goto_0
    array-length v1, v9

    if-ge v10, v1, :cond_0

    new-instance v13, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$Trigger;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$Trigger;-><init>(Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$Trigger;)V

    aget-object v1, v15, v10

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v13, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$Trigger;->value:I

    aget-object v1, v9, v10

    iput-object v1, v13, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$Trigger;->name:Ljava/lang/String;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    move/from16 v0, p3

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTrigger;

    invoke-virtual {v11}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTrigger;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$WifiTrigger;->getSSID()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v1, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->removeTrigger(Ljava/util/List;I)V

    const/4 v1, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->removeTrigger(Ljava/util/List;I)V

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    new-array v9, v1, [Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [I

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v1, v3, v4}, Lcyanogenmod/app/Profile;->getTriggerState(ILjava/lang/String;)I

    move-result v8

    const/4 v7, -0x1

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_2

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$Trigger;

    iget-object v1, v12, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$Trigger;->name:Ljava/lang/String;

    aput-object v1, v9, v10

    iget v1, v12, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$Trigger;->value:I

    aput v1, v5, v10

    aget v1, v5, v10

    if-ne v1, v8, :cond_1

    move v7, v10

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080269

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    new-instance v1, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$2;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$2;-><init>(Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;ILjava/lang/String;[ILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v7, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->reloadTriggerListItems()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method
