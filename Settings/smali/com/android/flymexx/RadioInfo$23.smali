.class Lcom/android/flymexx/RadioInfo$23;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/RadioInfo;->updateAllCellInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/RadioInfo;

.field final synthetic val$updateAllCellInfoResults:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/flymexx/RadioInfo;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/RadioInfo$23;->this$0:Lcom/android/flymexx/RadioInfo;

    iput-object p2, p0, Lcom/android/flymexx/RadioInfo$23;->val$updateAllCellInfoResults:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$23;->this$0:Lcom/android/flymexx/RadioInfo;

    iget-object v1, p0, Lcom/android/flymexx/RadioInfo$23;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v1}, Lcom/android/flymexx/RadioInfo;->-get14(Lcom/android/flymexx/RadioInfo;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/RadioInfo;->-set1(Lcom/android/flymexx/RadioInfo;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$23;->this$0:Lcom/android/flymexx/RadioInfo;

    iget-object v1, p0, Lcom/android/flymexx/RadioInfo$23;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v1}, Lcom/android/flymexx/RadioInfo;->-get14(Lcom/android/flymexx/RadioInfo;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/RadioInfo;->-set2(Lcom/android/flymexx/RadioInfo;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$23;->this$0:Lcom/android/flymexx/RadioInfo;

    iget-object v1, p0, Lcom/android/flymexx/RadioInfo$23;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v1}, Lcom/android/flymexx/RadioInfo;->-get14(Lcom/android/flymexx/RadioInfo;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/RadioInfo;->-set5(Lcom/android/flymexx/RadioInfo;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$23;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0}, Lcom/android/flymexx/RadioInfo;->-get3(Lcom/android/flymexx/RadioInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/RadioInfo$23;->val$updateAllCellInfoResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
