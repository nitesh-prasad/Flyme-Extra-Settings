.class public Lcom/android/flymexx/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/wifi/WifiEnabler$1;,
        Lcom/android/flymexx/wifi/WifiEnabler$2;
    }
.end annotation


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mListeningToOnSwitchChange:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/wifi/WifiEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/wifi/WifiEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/flymexx/widget/SwitchBar;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/flymexx/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/wifi/WifiEnabler$1;-><init>(Lcom/android/flymexx/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/flymexx/wifi/WifiEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/flymexx/wifi/WifiEnabler$2;-><init>(Lcom/android/flymexx/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WifiEnabler;->setupSwitchBar()V

    return-void
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0

    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/flymexx/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, v2}, Lcom/android/flymexx/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v3, v1}, Lcom/android/flymexx/widget/SwitchBar;->setEnabled(Z)V

    invoke-direct {p0, v2}, Lcom/android/flymexx/wifi/WifiEnabler;->updateSearchIndex(Z)V

    :goto_0
    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/flymexx/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/flymexx/wifi/WifiEnabler;->mayDisableTethering(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "no_config_tethering"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/android/flymexxlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/flymexx/widget/SwitchBar;->setEnabled(Z)V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/flymexx/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/flymexx/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v3, v1}, Lcom/android/flymexx/widget/SwitchBar;->setEnabled(Z)V

    invoke-direct {p0, v1}, Lcom/android/flymexx/wifi/WifiEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/flymexx/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/flymexx/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v3, v1}, Lcom/android/flymexx/widget/SwitchBar;->setEnabled(Z)V

    invoke-direct {p0, v2}, Lcom/android/flymexx/wifi/WifiEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "no_config_tethering"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/flymexxlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/flymexx/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private mayDisableTethering(Z)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    if-eqz p1, :cond_2

    const/16 v3, 0xc

    if-eq v0, v3, :cond_0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private setSwitchBarChecked(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mStateMachineEvent:Z

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/widget/SwitchBar;->setChecked(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mStateMachineEvent:Z

    return-void
.end method

.method private updateSearchIndex(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "is_wifi_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-static {v0, v1}, Lcom/android/flymexxlib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiStaSapConcurrency()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lcom/android/flymexx/wifi/WifiEnabler;->mayDisableTethering(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_2
    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const/16 v1, 0x8b

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    :goto_0
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0515

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0517

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/flymexx/widget/SwitchBar;->setChecked(Z)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/16 v2, 0x8a

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    :cond_0
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    :cond_0
    return-void
.end method

.method public setupSwitchBar()V
    .locals 2

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/flymexx/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    iget-boolean v1, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/flymexx/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/flymexx/widget/SwitchBar;->show()V

    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/wifi/WifiEnabler;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/SwitchBar;->hide()V

    return-void
.end method
