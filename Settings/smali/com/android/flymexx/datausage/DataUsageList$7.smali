.class Lcom/android/flymexx/datausage/DataUsageList$7;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/datausage/DataUsageList;->updatePolicy(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/flymexx/datausage/DataUsageList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/datausage/DataUsageList$7;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "network_template"

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList$7;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/flymexx/datausage/DataUsageList;->-get10(Lcom/android/flymexx/datausage/DataUsageList;)Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageList$7;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageList$7;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    const-class v2, Lcom/android/flymexx/datausage/BillingCycleSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0e13

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/flymexx/datausage/DataUsageList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method
