.class public Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;
.super Landroid/app/ListFragment;
.source "BluetoothTriggerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;,
        Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;,
        Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$Trigger;
    }
.end annotation


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mEmptyView:Landroid/view/View;

.field private mListAdapter:Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;

.field mProfile:Lcyanogenmod/app/Profile;

.field mProfileManager:Lcyanogenmod/app/ProfileManager;

.field private mTriggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mTriggers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->reloadTriggerListItems()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mTriggers:Ljava/util/List;

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

    const v12, 0x7f020083

    const/4 v11, 0x1

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mTriggers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    new-instance v0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;

    invoke-direct {v0, v1}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Lcyanogenmod/app/Profile;->getTriggerState(ILjava/lang/String;)I

    move-result v5

    invoke-direct {p0, v0, v5, v4, v12}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->initPreference(Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;ILandroid/content/res/Resources;I)V

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mTriggers:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v9, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

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

    new-instance v0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;

    invoke-virtual {v6}, Lcyanogenmod/app/Profile$ProfileTrigger;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcyanogenmod/app/Profile$ProfileTrigger;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcyanogenmod/app/Profile$ProfileTrigger;->getState()I

    move-result v9

    invoke-direct {p0, v0, v9, v4, v12}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->initPreference(Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;ILandroid/content/res/Resources;I)V

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mTriggers:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v9, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mListAdapter:Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mListAdapter:Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;

    invoke-virtual {v9}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;->notifyDataSetChanged()V

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
            "Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$Trigger;",
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

    check-cast v0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$Trigger;

    iget v2, v0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$Trigger;->value:I

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

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->reloadTriggerListItems()V

    new-instance v0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;-><init>(Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mListAdapter:Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mListAdapter:Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "Profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f03005b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mEmptyView:Landroid/view/View;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mEmptyView:Landroid/view/View;

    new-instance v2, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$2;

    invoke-direct {v2, p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$2;-><init>(Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 18

    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    new-instance v15, Ljava/util/ArrayList;

    array-length v1, v11

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v12, 0x0

    :goto_0
    array-length v1, v11

    if-ge v12, v1, :cond_0

    new-instance v14, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$Trigger;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v1}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$Trigger;-><init>(Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$Trigger;)V

    aget-object v1, v16, v12

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v14, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$Trigger;->value:I

    aget-object v1, v11, v12

    iput-object v1, v14, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$Trigger;->name:Ljava/lang/String;

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mListAdapter:Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;

    invoke-virtual {v7}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v1}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->removeTrigger(Ljava/util/List;I)V

    const/4 v1, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v1}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->removeTrigger(Ljava/util/List;I)V

    :cond_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    new-array v11, v1, [Ljava/lang/String;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [I

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v1, v3, v4}, Lcyanogenmod/app/Profile;->getTriggerState(ILjava/lang/String;)I

    move-result v9

    const/4 v8, -0x1

    const/4 v12, 0x0

    :goto_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_3

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$Trigger;

    iget-object v1, v13, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$Trigger;->name:Ljava/lang/String;

    aput-object v1, v11, v12

    iget v1, v13, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$Trigger;->value:I

    aput v1, v5, v12

    aget v1, v5, v12

    if-ne v1, v9, :cond_2

    move v8, v12

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080269

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    new-instance v1, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$1;-><init>(Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;ILjava/lang/String;[ILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v8, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->reloadTriggerListItems()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method
