.class Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "PerfProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$1;->this$0:Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings$1;->this$0:Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;->-wrap0(Lorg/cyanogenmod/cmparts/power/PerfProfileSettings;)V

    return-void
.end method
