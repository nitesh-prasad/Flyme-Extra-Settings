.class Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$2;
.super Ljava/lang/Object;
.source "NotificationLightSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->onItemLongClick(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$2;->this$0:Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$2;->this$0:Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings$2;->val$key:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;->-wrap1(Lorg/cyanogenmod/cmparts/notificationlight/NotificationLightSettings;Ljava/lang/String;)V

    return-void
.end method
