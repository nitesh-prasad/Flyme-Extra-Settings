.class Lcom/android/flymexx/DevelopmentSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/flymexx/DevelopmentSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/DevelopmentSettings$1;->this$0:Lcom/android/flymexx/DevelopmentSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/DevelopmentSettings$1;->this$0:Lcom/android/flymexx/DevelopmentSettings;

    invoke-static {v0}, Lcom/android/flymexx/DevelopmentSettings;->-wrap2(Lcom/android/flymexx/DevelopmentSettings;)V

    return-void
.end method
