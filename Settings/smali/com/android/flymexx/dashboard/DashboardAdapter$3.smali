.class Lcom/android/flymexx/dashboard/DashboardAdapter$3;
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


# direct methods
.method constructor <init>(Lcom/android/flymexx/dashboard/DashboardAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$3;->this$0:Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardAdapter$3;->this$0:Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/dashboard/DashboardAdapter;->onExpandClick(Landroid/view/View;)V

    return-void
.end method
