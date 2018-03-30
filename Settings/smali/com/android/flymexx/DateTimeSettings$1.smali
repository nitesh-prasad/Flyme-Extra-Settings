.class Lcom/android/flymexx/DateTimeSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/flymexx/DateTimeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/DateTimeSettings$1;->this$0:Lcom/android/flymexx/DateTimeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v1, p0, Lcom/android/flymexx/DateTimeSettings$1;->this$0:Lcom/android/flymexx/DateTimeSettings;

    invoke-virtual {v1}, Lcom/android/flymexx/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/DateTimeSettings$1;->this$0:Lcom/android/flymexx/DateTimeSettings;

    invoke-virtual {v1, v0}, Lcom/android/flymexx/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
