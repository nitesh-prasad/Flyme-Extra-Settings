.class Lcom/android/flymexx/dashboard/DashboardAdapter$1;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/dashboard/DashboardAdapter;->onBindViewHolder(Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;I)V
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

    iput-object p1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$1;->this$0:Lcom/android/flymexx/dashboard/DashboardAdapter;

    iput-object p2, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$1;->val$suggestion:Lcom/android/flymexxlib/drawer/Tile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$1;->this$0:Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->-get2(Lcom/android/flymexx/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$1;->this$0:Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-static {v1}, Lcom/android/flymexx/dashboard/DashboardAdapter;->-get2(Lcom/android/flymexx/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$1;->val$suggestion:Lcom/android/flymexxlib/drawer/Tile;

    invoke-static {v1, v2}, Lcom/android/flymexx/dashboard/DashboardAdapter;->getSuggestionIdentifier(Landroid/content/Context;Lcom/android/flymexxlib/drawer/Tile;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x182

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$1;->this$0:Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->-get2(Lcom/android/flymexx/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$1;->val$suggestion:Lcom/android/flymexxlib/drawer/Tile;

    iget-object v1, v1, Lcom/android/flymexxlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/SettingsActivity;->startSuggestion(Landroid/content/Intent;)V

    return-void
.end method
