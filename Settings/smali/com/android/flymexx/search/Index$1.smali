.class Lcom/android/flymexx/search/Index$1;
.super Ljava/lang/Object;
.source "Index.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/search/Index;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/search/Index;


# direct methods
.method constructor <init>(Lcom/android/flymexx/search/Index;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/search/Index$1;->this$0:Lcom/android/flymexx/search/Index;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "android.content.action.SEARCH_INDEXABLES_PROVIDER"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/flymexx/search/Index$1;->this$0:Lcom/android/flymexx/search/Index;

    invoke-static {v7}, Lcom/android/flymexx/search/Index;->-get1(Lcom/android/flymexx/search/Index;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v7, p0, Lcom/android/flymexx/search/Index$1;->this$0:Lcom/android/flymexx/search/Index;

    invoke-static {v7, v1}, Lcom/android/flymexx/search/Index;->-wrap2(Lcom/android/flymexx/search/Index;Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-nez v7, :cond_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v5, v7, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/flymexx/search/Index$1;->this$0:Lcom/android/flymexx/search/Index;

    invoke-static {v7, v5, v0}, Lcom/android/flymexx/search/Index;->-wrap1(Lcom/android/flymexx/search/Index;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/android/flymexx/search/Index$1;->this$0:Lcom/android/flymexx/search/Index;

    invoke-static {v7, v5, v0}, Lcom/android/flymexx/search/Index;->-wrap3(Lcom/android/flymexx/search/Index;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/android/flymexx/search/Index$1;->this$0:Lcom/android/flymexx/search/Index;

    invoke-static {v7}, Lcom/android/flymexx/search/Index;->-get2(Lcom/android/flymexx/search/Index;)Lcom/android/flymexx/search/Index$UpdateData;

    move-result-object v7

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/flymexx/search/Index$UpdateData;->fullIndex:Z

    iget-object v7, p0, Lcom/android/flymexx/search/Index$1;->this$0:Lcom/android/flymexx/search/Index;

    invoke-static {v7}, Lcom/android/flymexx/search/Index;->-wrap5(Lcom/android/flymexx/search/Index;)V

    return-void
.end method
