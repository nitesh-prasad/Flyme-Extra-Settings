.class Lcom/android/flymexx/RadioInfo$1;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/RadioInfo;
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

    iput-object p1, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/flymexx/RadioInfo;->-set3(Lcom/android/flymexx/RadioInfo;Z)Z

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0}, Lcom/android/flymexx/RadioInfo;->-wrap6(Lcom/android/flymexx/RadioInfo;)V

    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0}, Lcom/android/flymexx/RadioInfo;->-wrap16(Lcom/android/flymexx/RadioInfo;)V

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/flymexx/RadioInfo;->-wrap17(Lcom/android/flymexx/RadioInfo;I)V

    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCellInfoChanged: arrayCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/RadioInfo;->-wrap2(Lcom/android/flymexx/RadioInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/flymexx/RadioInfo;->-set1(Lcom/android/flymexx/RadioInfo;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    iget-object v1, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v1}, Lcom/android/flymexx/RadioInfo;->-get1(Lcom/android/flymexx/RadioInfo;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/RadioInfo;->-wrap7(Lcom/android/flymexx/RadioInfo;Ljava/util/List;)V

    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/flymexx/RadioInfo;->-wrap13(Lcom/android/flymexx/RadioInfo;Landroid/telephony/CellLocation;)V

    return-void
.end method

.method public onDataActivity(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0}, Lcom/android/flymexx/RadioInfo;->-wrap9(Lcom/android/flymexx/RadioInfo;)V

    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataConnectionRealTimeInfoChanged: dcRtInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/RadioInfo;->-wrap2(Lcom/android/flymexx/RadioInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/flymexx/RadioInfo;->-wrap10(Lcom/android/flymexx/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V

    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0}, Lcom/android/flymexx/RadioInfo;->-wrap8(Lcom/android/flymexx/RadioInfo;)V

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0}, Lcom/android/flymexx/RadioInfo;->-wrap16(Lcom/android/flymexx/RadioInfo;)V

    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/flymexx/RadioInfo;->-set4(Lcom/android/flymexx/RadioInfo;Z)Z

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0}, Lcom/android/flymexx/RadioInfo;->-wrap14(Lcom/android/flymexx/RadioInfo;)V

    return-void
.end method

.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0}, Lcom/android/flymexx/RadioInfo;->-wrap16(Lcom/android/flymexx/RadioInfo;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceStateChanged: ServiceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/RadioInfo;->-wrap2(Lcom/android/flymexx/RadioInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/flymexx/RadioInfo;->-wrap21(Lcom/android/flymexx/RadioInfo;Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0}, Lcom/android/flymexx/RadioInfo;->-wrap20(Lcom/android/flymexx/RadioInfo;)V

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0}, Lcom/android/flymexx/RadioInfo;->-wrap16(Lcom/android/flymexx/RadioInfo;)V

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0}, Lcom/android/flymexx/RadioInfo;->-wrap12(Lcom/android/flymexx/RadioInfo;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSignalStrengthChanged: SignalStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/RadioInfo;->-wrap2(Lcom/android/flymexx/RadioInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$1;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/flymexx/RadioInfo;->-wrap22(Lcom/android/flymexx/RadioInfo;Landroid/telephony/SignalStrength;)V

    return-void
.end method
