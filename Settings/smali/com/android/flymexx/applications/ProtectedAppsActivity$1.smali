.class Lcom/android/flymexx/applications/ProtectedAppsActivity$1;
.super Ljava/lang/Object;
.source "ProtectedAppsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/applications/ProtectedAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/applications/ProtectedAppsActivity;


# direct methods
.method constructor <init>(Lcom/android/flymexx/applications/ProtectedAppsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity$1;->this$0:Lcom/android/flymexx/applications/ProtectedAppsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v6, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity$1;->this$0:Lcom/android/flymexx/applications/ProtectedAppsActivity;

    invoke-static {v6}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->-get1(Lcom/android/flymexx/applications/ProtectedAppsActivity;)Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppEntry;

    iget-object v0, v6, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppEntry;->componentName:Landroid/content/ComponentName;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity$1;->this$0:Lcom/android/flymexx/applications/ProtectedAppsActivity;

    invoke-static {v6, v0}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->-wrap0(Lcom/android/flymexx/applications/ProtectedAppsActivity;Landroid/content/ComponentName;)Z

    move-result v4

    new-instance v2, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppProtectList;

    iget-object v6, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity$1;->this$0:Lcom/android/flymexx/applications/ProtectedAppsActivity;

    invoke-direct {v2, v6, v1, v4}, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppProtectList;-><init>(Lcom/android/flymexx/applications/ProtectedAppsActivity;Ljava/util/ArrayList;Z)V

    new-instance v5, Lcom/android/flymexx/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;

    iget-object v6, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity$1;->this$0:Lcom/android/flymexx/applications/ProtectedAppsActivity;

    iget-object v7, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity$1;->this$0:Lcom/android/flymexx/applications/ProtectedAppsActivity;

    invoke-direct {v5, v6, v7}, Lcom/android/flymexx/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;-><init>(Lcom/android/flymexx/applications/ProtectedAppsActivity;Landroid/content/Context;)V

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/flymexx/applications/ProtectedAppsActivity$AppProtectList;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/flymexx/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
