.class Lcom/android/flymexx/dashboard/DashboardAdapter$5;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/dashboard/DashboardAdapter;->onBindSuggestionHeader(Lcom/android/flymexx/dashboard/DashboardAdapter$DashboardItemHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/dashboard/DashboardAdapter;


# direct methods
.method constructor <init>(Lcom/android/flymexx/dashboard/DashboardAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$5;->this$0:Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$5;->this$0:Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->-wrap0(Lcom/android/flymexx/dashboard/DashboardAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$5;->this$0:Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-static {}, Lcom/android/flymexx/dashboard/DashboardAdapter;->-get1()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/flymexx/dashboard/DashboardAdapter;->-set0(Lcom/android/flymexx/dashboard/DashboardAdapter;I)I

    :goto_0
    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$5;->this$0:Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/flymexx/dashboard/DashboardAdapter;->-wrap1(Lcom/android/flymexx/dashboard/DashboardAdapter;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$5;->this$0:Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-static {}, Lcom/android/flymexx/dashboard/DashboardAdapter;->-get0()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/flymexx/dashboard/DashboardAdapter;->-set0(Lcom/android/flymexx/dashboard/DashboardAdapter;I)I

    goto :goto_0
.end method
