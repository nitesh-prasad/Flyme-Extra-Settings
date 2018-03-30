.class Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 9

    const-string/jumbo v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x80000000

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    iget-object v6, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v6}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-get5(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Landroid/content/BroadcastReceiver;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v6, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-virtual {v6}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->registerProfileIntentReceiver()V

    :cond_0
    iget-object v6, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v6}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-get4(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    iget-object v6, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v6}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-get1(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v6, "is_first_boot"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v6, "BluetoothEventManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isFirstBoot: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    const/16 v6, 0xc

    if-ne v5, v6, :cond_1

    iget-object v6, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v6}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-wrap1(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)V

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v6, "is_first_boot"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object v6, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v6}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-get0(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v6}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-get0(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/bluetooth/BluetoothCallback;

    invoke-interface {v0, v5}, Lcom/android/flymexxlib/bluetooth/BluetoothCallback;->onBluetoothStateChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_2
    monitor-exit v7

    iget-object v6, p0, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    invoke-static {v6}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->-get2(Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;)Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;->onBluetoothStateChanged(I)V

    return-void
.end method
