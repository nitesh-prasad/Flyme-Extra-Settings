.class Lcom/android/flymexx/datausage/DataUsageList$3;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/datausage/DataUsageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/net/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/flymexx/datausage/DataUsageList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/datausage/DataUsageList$3;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateEmptyVisible()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList$3;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/flymexx/datausage/DataUsageList;->-get0(Lcom/android/flymexx/datausage/DataUsageList;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/flymexx/datausage/DataUsageList$3;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-virtual {v3}, Lcom/android/flymexx/datausage/DataUsageList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList$3;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/flymexx/datausage/DataUsageList;->-get0(Lcom/android/flymexx/datausage/DataUsageList;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList$3;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/flymexx/datausage/DataUsageList;->-get8(Lcom/android/flymexx/datausage/DataUsageList;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList$3;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-virtual {v0}, Lcom/android/flymexx/datausage/DataUsageList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList$3;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/flymexx/datausage/DataUsageList;->-get11(Lcom/android/flymexx/datausage/DataUsageList;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList$3;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-virtual {v0}, Lcom/android/flymexx/datausage/DataUsageList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList$3;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/flymexx/datausage/DataUsageList;->-get0(Lcom/android/flymexx/datausage/DataUsageList;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList$3;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-virtual {v0}, Lcom/android/flymexx/datausage/DataUsageList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    goto :goto_2
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/flymexxlib/net/SummaryForAllUidLoader;

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList$3;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-virtual {v1}, Lcom/android/flymexx/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/datausage/DataUsageList$3;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-static {v2}, Lcom/android/flymexx/datausage/DataUsageList;->-get9(Lcom/android/flymexx/datausage/DataUsageList;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/flymexxlib/net/SummaryForAllUidLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;",
            "Landroid/net/NetworkStats;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList$3;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    iget-object v1, v1, Lcom/android/flymexx/datausage/DataUsageList;->services:Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList$3;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-virtual {v1, p2, v0}, Lcom/android/flymexx/datausage/DataUsageList;->bindStats(Landroid/net/NetworkStats;[I)V

    invoke-direct {p0}, Lcom/android/flymexx/datausage/DataUsageList$3;->updateEmptyVisible()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/net/NetworkStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/flymexx/datausage/DataUsageList$3;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList$3;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    const/4 v1, 0x0

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/flymexx/datausage/DataUsageList;->bindStats(Landroid/net/NetworkStats;[I)V

    invoke-direct {p0}, Lcom/android/flymexx/datausage/DataUsageList$3;->updateEmptyVisible()V

    return-void
.end method
