.class Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog$2;
.super Landroid/os/Handler;
.source "LightSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog$2;->this$0:Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog$2;->this$0:Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;->-wrap0(Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;)V

    return-void
.end method
