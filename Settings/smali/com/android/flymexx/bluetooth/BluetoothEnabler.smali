.class public final Lcom/android/flymexx/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/bluetooth/BluetoothEnabler$1;,
        Lcom/android/flymexx/bluetooth/BluetoothEnabler$2;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

.field private mValidListener:Z


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/bluetooth/BluetoothEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/flymexx/widget/SwitchBar;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/flymexx/bluetooth/BluetoothEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/flymexx/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/flymexx/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/flymexx/bluetooth/BluetoothEnabler$2;

    invoke-direct {v1, p0}, Lcom/android/flymexx/bluetooth/BluetoothEnabler$2;-><init>(Lcom/android/flymexx/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {p2}, Lcom/android/flymexx/widget/SwitchBar;->getSwitch()Lcom/android/flymexx/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    iput-boolean v2, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mValidListener:Z

    invoke-static {p1}, Lcom/android/flymexx/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object v3, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method private setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_1
    return-void
.end method

.method private updateSearchIndex(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "is_bluetooth_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, v1}, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-direct {p0, v1}, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-direct {p0, v2}, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-direct {p0, v1}, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "bluetooth"

    invoke-static {v1, v2}, Lcom/android/flymexxlib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const/16 v2, 0x9f

    invoke-static {v1, v2, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, p2}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)Z

    move-result v0

    if-eqz p2, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0517

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/flymexx/widget/SwitchBar;->setTextViewLabel(Z)V

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mValidListener:Z

    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mValidListener:Z

    return-void
.end method

.method public setupSwitchBar()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/SwitchBar;->show()V

    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/SwitchBar;->hide()V

    return-void
.end method
