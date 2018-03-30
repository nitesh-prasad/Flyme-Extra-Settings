.class public Lcom/android/flymexx/CarrierSelection;
.super Landroid/app/Activity;
.source "CarrierSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/CarrierSelection$SelectAccountListAdapter;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Lcom/android/flymexx/CarrierSelection;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/CarrierSelection;->startNetworkSelection(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private startNetworkSelection(I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.phone"

    const-string/jumbo v3, "com.android.phone.NetworkSetting"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v1, -0x3e8

    if-eq p1, v1, :cond_0

    const-string/jumbo v1, "sub_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/flymexx/CarrierSelection;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/flymexx/CarrierSelection;->finish()V

    return-void
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;Ljava/util/List;)Landroid/app/Dialog;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_1

    const/4 v14, 0x0

    :goto_0
    new-instance v15, Lcom/android/flymexx/CarrierSelection$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v15, v0, v1}, Lcom/android/flymexx/CarrierSelection$1;-><init>(Lcom/android/flymexx/CarrierSelection;Ljava/util/List;)V

    new-instance v12, Lcom/android/flymexx/CarrierSelection$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/flymexx/CarrierSelection$2;-><init>(Lcom/android/flymexx/CarrierSelection;)V

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v14, :cond_2

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v10

    if-nez v10, :cond_0

    const-string/jumbo v10, ""

    :cond_0
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/flymexx/CarrierSelection$SelectAccountListAdapter;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f040114

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/flymexx/CarrierSelection$SelectAccountListAdapter;-><init>(Lcom/android/flymexx/CarrierSelection;Ljava/util/List;Landroid/content/Context;I[Ljava/lang/String;)V

    const v3, 0x7f0c0bec

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v2, v15}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v3, Lcom/android/flymexx/CarrierSelection$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/flymexx/CarrierSelection$3;-><init>(Lcom/android/flymexx/CarrierSelection;)V

    invoke-virtual {v9, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v9
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v2, -0x3e8

    invoke-direct {p0, v2}, Lcom/android/flymexx/CarrierSelection;->startNetworkSelection(I)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/flymexx/CarrierSelection;->startNetworkSelection(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p0, v0}, Lcom/android/flymexx/CarrierSelection;->createDialog(Landroid/content/Context;Ljava/util/List;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
