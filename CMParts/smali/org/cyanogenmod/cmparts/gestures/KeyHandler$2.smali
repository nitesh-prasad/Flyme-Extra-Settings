.class Lorg/cyanogenmod/cmparts/gestures/KeyHandler$2;
.super Ljava/lang/Object;
.source "KeyHandler.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->processEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

.field final synthetic val$action:I


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;I)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$2;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    iput p2, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$2;->val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$2;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-get3(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$2;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-get5(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$2;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-get1(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$2;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-get1(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;->removeMessages(I)V

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$2;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v2}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-get2(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$2;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    iget v2, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$2;->val$action:I

    invoke-static {v1, v2}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-wrap0(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$2;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-get1(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
