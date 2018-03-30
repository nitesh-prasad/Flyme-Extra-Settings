.class Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$1;
.super Ljava/lang/Object;
.source "WifiTriggerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$1;->this$0:Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.settings.WIFI_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment$1;->this$0:Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;

    invoke-virtual {v1, v0}, Lorg/cyanogenmod/cmparts/profiles/triggers/WifiTriggerFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
