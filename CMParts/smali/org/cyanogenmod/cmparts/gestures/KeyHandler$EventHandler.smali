.class Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;
.super Landroid/os/Handler;
.source "KeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/gestures/KeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;


# direct methods
.method private constructor <init>(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;-><init>(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-wrap2(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-wrap9(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-wrap1(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-wrap3(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-wrap4(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-wrap5(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-wrap7(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-wrap8(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-wrap6(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-wrap10(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-wrap11(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
