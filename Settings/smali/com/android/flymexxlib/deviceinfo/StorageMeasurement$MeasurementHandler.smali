.class Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;
.super Landroid/os/Handler;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexxlib/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeasurementHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler$1;
    }
.end annotation


# instance fields
.field private volatile mBound:Z

.field private mCached:Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementDetails;

.field private final mDefContainerConn:Landroid/content/ServiceConnection;

.field private mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

.field private mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/flymexxlib/deviceinfo/StorageMeasurement;


# direct methods
.method static synthetic -set0(Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0

    iput-object p1, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/flymexxlib/deviceinfo/StorageMeasurement;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/flymexxlib/deviceinfo/StorageMeasurement;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    new-instance v0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler$1;

    invoke-direct {v0, p0}, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler$1;-><init>(Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;)V

    iput-object v0, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/flymexxlib/deviceinfo/StorageMeasurement;

    invoke-static {v2}, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement;->-get1(Lcom/android/flymexxlib/deviceinfo/StorageMeasurement;)Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MainHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-virtual {v2, v4, v3}, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    const/4 v4, 0x2

    invoke-virtual {p0, v4, v2}, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v3

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/flymexxlib/deviceinfo/StorageMeasurement;

    invoke-static {v2}, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement;->-get0(Lcom/android/flymexxlib/deviceinfo/StorageMeasurement;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v6, 0x1

    invoke-virtual {v2, v1, v4, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/IMediaContainerService;

    iget-object v2, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/flymexxlib/deviceinfo/StorageMeasurement;

    invoke-static {v2, v0}, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement;->-wrap2(Lcom/android/flymexxlib/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-boolean v2, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    iget-object v2, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/flymexxlib/deviceinfo/StorageMeasurement;

    invoke-static {v2}, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement;->-get0(Lcom/android/flymexxlib/deviceinfo/StorageMeasurement;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    iput-object v2, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-object v2, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/flymexxlib/deviceinfo/StorageMeasurement;

    invoke-static {v2}, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement;->-get1(Lcom/android/flymexxlib/deviceinfo/StorageMeasurement;)Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MainHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-virtual {v2, v4, v3}, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :pswitch_4
    iput-object v3, p0, Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/flymexxlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
