.class Lcyanogenmod/preference/RemotePreferenceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "RemotePreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/preference/RemotePreferenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcyanogenmod/preference/RemotePreferenceManager;


# direct methods
.method constructor <init>(Lcyanogenmod/preference/RemotePreferenceManager;)V
    .locals 0

    iput-object p1, p0, Lcyanogenmod/preference/RemotePreferenceManager$1;->this$0:Lcyanogenmod/preference/RemotePreferenceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-static {}, Lcyanogenmod/preference/RemotePreferenceManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcyanogenmod/preference/RemotePreferenceManager;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive: intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v2, "cyanogenmod.intent.action.REFRESH_PREFERENCE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, ":cm:pref_key"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager$1;->this$0:Lcyanogenmod/preference/RemotePreferenceManager;

    invoke-static {v2}, Lcyanogenmod/preference/RemotePreferenceManager;->-get2(Lcyanogenmod/preference/RemotePreferenceManager;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager$1;->this$0:Lcyanogenmod/preference/RemotePreferenceManager;

    invoke-static {v2}, Lcyanogenmod/preference/RemotePreferenceManager;->-get2(Lcyanogenmod/preference/RemotePreferenceManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager$1;->this$0:Lcyanogenmod/preference/RemotePreferenceManager;

    invoke-static {v2, v1}, Lcyanogenmod/preference/RemotePreferenceManager;->-wrap0(Lcyanogenmod/preference/RemotePreferenceManager;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v3

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_3
    const-string/jumbo v2, "cyanogenmod.intent.action.UPDATE_PREFERENCE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcyanogenmod/preference/RemotePreferenceManager$1;->getAbortBroadcast()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcyanogenmod/preference/RemotePreferenceManager;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Broadcast aborted, code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcyanogenmod/preference/RemotePreferenceManager$1;->getResultCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcyanogenmod/preference/RemotePreferenceManager$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, ":cm:pref_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager$1;->this$0:Lcyanogenmod/preference/RemotePreferenceManager;

    invoke-static {v2}, Lcyanogenmod/preference/RemotePreferenceManager;->-get2(Lcyanogenmod/preference/RemotePreferenceManager;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager$1;->this$0:Lcyanogenmod/preference/RemotePreferenceManager;

    invoke-static {v2}, Lcyanogenmod/preference/RemotePreferenceManager;->-get2(Lcyanogenmod/preference/RemotePreferenceManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager$1;->this$0:Lcyanogenmod/preference/RemotePreferenceManager;

    invoke-static {v2}, Lcyanogenmod/preference/RemotePreferenceManager;->-get3(Lcyanogenmod/preference/RemotePreferenceManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcyanogenmod/preference/RemotePreferenceManager$1$1;

    invoke-direct {v4, p0, v1, v0}, Lcyanogenmod/preference/RemotePreferenceManager$1$1;-><init>(Lcyanogenmod/preference/RemotePreferenceManager$1;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method
