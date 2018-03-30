.class public Lcom/android/flymexx/dashboard/conditional/CellularDataCondition;
.super Lcom/android/flymexx/dashboard/conditional/Condition;
.source "CellularDataCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/dashboard/conditional/CellularDataCondition$Receiver;
    }
.end annotation


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

    iget-object v1, p0, Lcom/android/flymexx/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0def

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0200b1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    const/16 v0, 0x17c

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

    const-class v0, Lcom/android/flymexx/dashboard/conditional/CellularDataCondition$Receiver;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0dfa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0df9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionClick(I)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/android/flymexx/dashboard/conditional/CellularDataCondition;->setActive(Z)V

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
    .locals 4

    iget-object v0, p0, Lcom/android/flymexx/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/flymexx/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/flymexx/Settings$DataUsageSummaryActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public refreshState()V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/flymexx/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v3}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/flymexx/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v3}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/flymexx/dashboard/conditional/CellularDataCondition;->setActive(Z)V

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/flymexx/dashboard/conditional/CellularDataCondition;->setActive(Z)V

    return-void

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method
