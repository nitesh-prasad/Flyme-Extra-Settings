.class public final Lcom/android/flymexx/dashboard/conditional/NightDisplayCondition;
.super Lcom/android/flymexx/dashboard/conditional/Condition;
.source "NightDisplayCondition.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;


# instance fields
.field private mController:Lcom/android/internal/app/NightDisplayController;


# direct methods
.method constructor <init>(Lcom/android/flymexx/dashboard/conditional/ConditionManager;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/flymexx/dashboard/conditional/Condition;-><init>(Lcom/android/flymexx/dashboard/conditional/ConditionManager;)V

    new-instance v0, Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {p1}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/flymexx/dashboard/conditional/NightDisplayCondition;->mController:Lcom/android/internal/app/NightDisplayController;

    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/NightDisplayCondition;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    return-void
.end method


# virtual methods
.method public getActions()[Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/flymexx/dashboard/conditional/NightDisplayCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

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

    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/NightDisplayCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020116

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    const/16 v0, 0x1ec

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/NightDisplayCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0e00

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/NightDisplayCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0dff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionClick(I)V
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/NightDisplayCondition;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivated(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/conditional/NightDisplayCondition;->refreshState()V

    return-void
.end method

.method public onPrimaryClick()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/NightDisplayCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/flymexx/display/NightDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const v5, 0x7f0c0620

    move-object v3, v2

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/flymexx/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    return-void
.end method

.method public refreshState()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/NightDisplayCondition;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/dashboard/conditional/NightDisplayCondition;->setActive(Z)V

    return-void
.end method
