.class Lcom/android/flymexx/HomeSettings$HomePackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomePackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/HomeSettings;


# direct methods
.method private constructor <init>(Lcom/android/flymexx/HomeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/HomeSettings$HomePackageReceiver;->this$0:Lcom/android/flymexx/HomeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexx/HomeSettings;Lcom/android/flymexx/HomeSettings$HomePackageReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/HomeSettings$HomePackageReceiver;-><init>(Lcom/android/flymexx/HomeSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/flymexx/HomeSettings$HomePackageReceiver;->this$0:Lcom/android/flymexx/HomeSettings;

    invoke-static {v0}, Lcom/android/flymexx/HomeSettings;->-wrap0(Lcom/android/flymexx/HomeSettings;)V

    invoke-static {p1}, Lcom/android/flymexx/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/flymexx/search/Index;

    move-result-object v0

    const-class v1, Lcom/android/flymexx/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/flymexx/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    return-void
.end method
