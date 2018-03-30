.class Lorg/cyanogenmod/cmparts/gestures/KeyHandler$TorchModeCallback;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "KeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/gestures/KeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TorchModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;


# direct methods
.method private constructor <init>(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$TorchModeCallback;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;Lorg/cyanogenmod/cmparts/gestures/KeyHandler$TorchModeCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$TorchModeCallback;-><init>(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V

    return-void
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$TorchModeCallback;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-get4(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$TorchModeCallback;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v0, p2}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-set0(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;Z)Z

    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$TorchModeCallback;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-get4(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$TorchModeCallback;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-set0(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;Z)Z

    return-void
.end method
