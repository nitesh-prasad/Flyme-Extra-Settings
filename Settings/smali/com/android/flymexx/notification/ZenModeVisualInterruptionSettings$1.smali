.class Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings$1;
.super Ljava/lang/Object;
.source "ZenModeVisualInterruptionSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings;


# direct methods
.method constructor <init>(Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings$1;->this$0:Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings$1;->this$0:Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings;

    invoke-static {v1}, Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings;->-get0(Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings$1;->this$0:Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings;

    iget-object v1, v1, Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings;->mContext:Landroid/content/Context;

    const/16 v2, 0x107

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    sget-boolean v1, Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPrefChange suppressWhenScreenOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings$1;->this$0:Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings;

    iget-object v2, p0, Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings$1;->this$0:Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings;

    invoke-static {v2, v0, v4}, Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings;->-wrap0(Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings;ZI)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings;->-wrap1(Lcom/android/flymexx/notification/ZenModeVisualInterruptionSettings;I)V

    return v4
.end method
