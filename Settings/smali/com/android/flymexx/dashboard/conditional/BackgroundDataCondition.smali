.class public Lcom/android/flymexx/dashboard/conditional/BackgroundDataCondition;
.super Lcom/android/flymexx/dashboard/conditional/Condition;
.source "BackgroundDataCondition.java"


# direct methods
.method public constructor <init>(Lcom/android/flymexx/dashboard/conditional/ConditionManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/dashboard/conditional/Condition;-><init>(Lcom/android/flymexx/dashboard/conditional/ConditionManager;)V

    return-void
.end method


# virtual methods
.method public getActions()[Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/flymexx/dashboard/conditional/BackgroundDataCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

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

    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/BackgroundDataCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0200b4

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    const/16 v0, 0x17a

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/BackgroundDataCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0dfc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/BackgroundDataCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0dfb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionClick(I)V
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/BackgroundDataCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    invoke-virtual {p0, v1}, Lcom/android/flymexx/dashboard/conditional/BackgroundDataCondition;->setActive(Z)V

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

.method public onPrimaryClick()V
    .locals 4

    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/BackgroundDataCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/flymexx/dashboard/conditional/BackgroundDataCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/flymexx/Settings$DataUsageSummaryActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public refreshState()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/BackgroundDataCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/dashboard/conditional/BackgroundDataCondition;->setActive(Z)V

    return-void
.end method
