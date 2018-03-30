.class Lorg/cyanogenmod/cmparts/gestures/KeyHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/gestures/KeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$1;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string/jumbo v3, "keycode_mappings"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    const-string/jumbo v3, "action_mappings"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$1;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v3}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-get0(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    array-length v3, v2

    array-length v4, v0

    if-ne v3, v4, :cond_0

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$1;->this$0:Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-static {v3}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->-get0(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)Landroid/util/SparseIntArray;

    move-result-object v3

    aget v4, v2, v1

    aget v5, v0, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
