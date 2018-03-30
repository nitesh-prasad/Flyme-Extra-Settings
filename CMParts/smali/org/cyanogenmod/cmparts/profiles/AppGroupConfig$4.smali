.class Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$4;
.super Ljava/lang/Object;
.source "AppGroupConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$4;->this$0:Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$4;->this$0:Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->-get1(Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$4;->this$0:Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->-get0(Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;)Landroid/app/NotificationGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcyanogenmod/app/ProfileManager;->removeNotificationGroup(Landroid/app/NotificationGroup;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$4;->this$0:Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->-set0(Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;Landroid/app/NotificationGroup;)Landroid/app/NotificationGroup;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$4;->this$0:Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->finish()V

    return-void
.end method
