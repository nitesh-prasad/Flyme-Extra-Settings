.class Lcom/android/flymexx/SettingsActivity$2;
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

    iput-object p1, p0, Lcom/android/flymexx/SettingsActivity$2;->this$0:Lcom/android/flymexx/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/SettingsActivity$2;->this$0:Lcom/android/flymexx/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/flymexx/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/flymexx/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/flymexx/search/Index;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/flymexx/search/Index;->update()V

    :cond_1
    return-void
.end method
