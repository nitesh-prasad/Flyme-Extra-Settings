.class public Lcom/android/flymexx/dashboard/conditional/DndCondition;
.super Lcom/android/flymexx/dashboard/conditional/Condition;
.source "DndCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/dashboard/conditional/DndCondition$Receiver;
    }
.end annotation


# instance fields
.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mZen:I


# direct methods
.method public constructor <init>(Lcom/android/flymexx/dashboard/conditional/ConditionManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/dashboard/conditional/Condition;-><init>(Lcom/android/flymexx/dashboard/conditional/ConditionManager;)V

    return-void
.end method

.method private getZenState()Ljava/lang/CharSequence;
    .locals 2

    iget v0, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mZen:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0c5f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0c5e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0c60

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getActions()[Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0dee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f02014d

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    const/16 v0, 0x17d

    return v0
.end method

.method protected getReceiverClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const-class v0, Lcom/android/flymexx/dashboard/conditional/DndCondition$Receiver;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104063c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v1, v3, v4, v2}, Landroid/service/notification/ZenModeConfig;->getConditionSummary(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/flymexx/dashboard/conditional/DndCondition;->getZenState()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0c0df6

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionClick(I)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string/jumbo v1, "DndCondition"

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/flymexx/dashboard/conditional/DndCondition;->setActive(Z)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onPrimaryClick()V
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/StatusBarManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    const-string/jumbo v1, "dnd"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->expandSettingsPanel(Ljava/lang/String;)V

    return-void
.end method

.method public refreshState()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v2

    iput v2, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mZen:I

    iget v2, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mZen:I

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mConfig:Landroid/service/notification/ZenModeConfig;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/flymexx/dashboard/conditional/DndCondition;->setActive(Z)V

    return-void

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mConfig:Landroid/service/notification/ZenModeConfig;

    goto :goto_0
.end method

.method restoreState(Landroid/os/PersistableBundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/dashboard/conditional/Condition;->restoreState(Landroid/os/PersistableBundle;)V

    const-string/jumbo v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mZen:I

    return-void
.end method

.method saveState(Landroid/os/PersistableBundle;)Z
    .locals 2

    const-string/jumbo v0, "state"

    iget v1, p0, Lcom/android/flymexx/dashboard/conditional/DndCondition;->mZen:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/android/flymexx/dashboard/conditional/Condition;->saveState(Landroid/os/PersistableBundle;)Z

    move-result v0

    return v0
.end method

.method protected shouldAlwaysListenToBroadcast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
