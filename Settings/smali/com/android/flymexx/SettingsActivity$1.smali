.class Lcom/android/flymexx/SettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/flymexx/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/SettingsActivity$1;->this$0:Lcom/android/flymexx/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Lcom/android/flymexx/Utils;->isBatteryPresent(Landroid/content/Intent;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/flymexx/SettingsActivity$1;->this$0:Lcom/android/flymexx/SettingsActivity;

    invoke-static {v2}, Lcom/android/flymexx/SettingsActivity;->-get0(Lcom/android/flymexx/SettingsActivity;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/SettingsActivity$1;->this$0:Lcom/android/flymexx/SettingsActivity;

    invoke-static {v2, v1}, Lcom/android/flymexx/SettingsActivity;->-set0(Lcom/android/flymexx/SettingsActivity;Z)Z

    iget-object v2, p0, Lcom/android/flymexx/SettingsActivity$1;->this$0:Lcom/android/flymexx/SettingsActivity;

    invoke-static {v2}, Lcom/android/flymexx/SettingsActivity;->-wrap1(Lcom/android/flymexx/SettingsActivity;)V

    :cond_0
    return-void
.end method
