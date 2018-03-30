.class Lcom/android/flymexx/wifi/WifiSettings$8;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/wifi/WifiSettings;->onAccessPointChanged(Lcom/android/flymexxlib/wifi/AccessPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/wifi/WifiSettings;

.field final synthetic val$accessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;


# direct methods
.method constructor <init>(Lcom/android/flymexx/wifi/WifiSettings;Lcom/android/flymexxlib/wifi/AccessPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/wifi/WifiSettings$8;->this$0:Lcom/android/flymexx/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/flymexx/wifi/WifiSettings$8;->val$accessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiSettings$8;->val$accessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/flymexxlib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;

    invoke-virtual {v0}, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;->refresh()V

    :cond_0
    return-void
.end method
