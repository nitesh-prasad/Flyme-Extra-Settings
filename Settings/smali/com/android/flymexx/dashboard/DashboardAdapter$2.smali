.class Lcom/android/flymexx/dashboard/DashboardAdapter$2;
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

    iput-object p1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$2;->this$0:Lcom/android/flymexx/dashboard/DashboardAdapter;

    iput-object p2, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$2;->val$suggestion:Lcom/android/flymexxlib/drawer/Tile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$2;->this$0:Lcom/android/flymexx/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$2;->val$suggestion:Lcom/android/flymexxlib/drawer/Tile;

    invoke-static {v0, p1, v1}, Lcom/android/flymexx/dashboard/DashboardAdapter;->-wrap2(Lcom/android/flymexx/dashboard/DashboardAdapter;Landroid/view/View;Lcom/android/flymexxlib/drawer/Tile;)V

    return-void
.end method
