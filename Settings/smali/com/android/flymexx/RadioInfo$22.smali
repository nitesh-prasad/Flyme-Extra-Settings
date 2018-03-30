.class Lcom/android/flymexx/RadioInfo$22;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/android/flymexx/RadioInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/RadioInfo$22;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$22;->this$0:Lcom/android/flymexx/RadioInfo;

    iget-object v1, p0, Lcom/android/flymexx/RadioInfo$22;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v1}, Lcom/android/flymexx/RadioInfo;->-get7(Lcom/android/flymexx/RadioInfo;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/RadioInfo;->-wrap15(Lcom/android/flymexx/RadioInfo;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$22;->this$0:Lcom/android/flymexx/RadioInfo;

    iget-object v1, p0, Lcom/android/flymexx/RadioInfo$22;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v1}, Lcom/android/flymexx/RadioInfo;->-get2(Lcom/android/flymexx/RadioInfo;)Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/RadioInfo;->-wrap13(Lcom/android/flymexx/RadioInfo;Landroid/telephony/CellLocation;)V

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$22;->this$0:Lcom/android/flymexx/RadioInfo;

    iget-object v1, p0, Lcom/android/flymexx/RadioInfo$22;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v1}, Lcom/android/flymexx/RadioInfo;->-get1(Lcom/android/flymexx/RadioInfo;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/RadioInfo;->-wrap7(Lcom/android/flymexx/RadioInfo;Ljava/util/List;)V

    return-void
.end method
