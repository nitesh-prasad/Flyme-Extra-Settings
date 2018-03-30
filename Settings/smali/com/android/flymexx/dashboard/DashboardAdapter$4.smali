.class Lcom/android/flymexx/dashboard/DashboardAdapter$4;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/dashboard/DashboardAdapter;->showRemoveOption(Landroid/view/View;Lcom/android/flymexxlib/drawer/Tile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/dashboard/DashboardAdapter;

.field final synthetic val$suggestion:Lcom/android/flymexxlib/drawer/Tile;


# direct methods
.method constructor <init>(Lcom/android/flymexx/dashboard/DashboardAdapter;Lcom/android/flymexxlib/drawer/Tile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$4;->this$0:Lcom/android/flymexx/dashboard/DashboardAdapter;

    iput-object p2, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$4;->val$suggestion:Lcom/android/flymexxlib/drawer/Tile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$4;->this$0:Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->-get2(Lcom/android/flymexx/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$4;->this$0:Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-static {v1}, Lcom/android/flymexx/dashboard/DashboardAdapter;->-get2(Lcom/android/flymexx/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$4;->val$suggestion:Lcom/android/flymexxlib/drawer/Tile;

    invoke-static {v1, v2}, Lcom/android/flymexx/dashboard/DashboardAdapter;->getSuggestionIdentifier(Landroid/content/Context;Lcom/android/flymexxlib/drawer/Tile;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x183

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$4;->this$0:Lcom/android/flymexx/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$4;->val$suggestion:Lcom/android/flymexxlib/drawer/Tile;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/dashboard/DashboardAdapter;->disableSuggestion(Lcom/android/flymexxlib/drawer/Tile;)V

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$4;->this$0:Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->-get4(Lcom/android/flymexx/dashboard/DashboardAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$4;->val$suggestion:Lcom/android/flymexxlib/drawer/Tile;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$4;->this$0:Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->-wrap1(Lcom/android/flymexx/dashboard/DashboardAdapter;)V

    const/4 v0, 0x1

    return v0
.end method
