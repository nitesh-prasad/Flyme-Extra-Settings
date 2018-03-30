.class public Lcom/android/flymexx/wifi/WpsDialog;
.super Landroid/app/AlertDialog;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/wifi/WpsDialog$DialogState;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field mDialogState:Lcom/android/flymexx/wifi/WpsDialog$DialogState;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mMsgString:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTextView:Landroid/widget/TextView;

.field private mTimeoutBar:Landroid/widget/ProgressBar;

.field private mTimer:Ljava/util/Timer;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

.field private mWpsSetup:I


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/wifi/WpsDialog;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/wifi/WpsDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/wifi/WpsDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/flymexx/wifi/WpsDialog;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/flymexx/wifi/WpsDialog;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/flymexx/wifi/WpsDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/flymexx/wifi/WpsDialog;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/flymexx/wifi/WpsDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/wifi/WpsDialog;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/wifi/WpsDialog;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/wifi/WpsDialog;Lcom/android/flymexx/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/wifi/WpsDialog;->updateDialog(Lcom/android/flymexx/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mMsgString:Ljava/lang/String;

    sget-object v0, Lcom/android/flymexx/wifi/WpsDialog$DialogState;->WPS_INIT:Lcom/android/flymexx/wifi/WpsDialog$DialogState;

    iput-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mDialogState:Lcom/android/flymexx/wifi/WpsDialog$DialogState;

    iput-object p1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/flymexx/wifi/WpsDialog;->mWpsSetup:I

    new-instance v0, Lcom/android/flymexx/wifi/WpsDialog$1WpsListener;

    invoke-direct {v0, p0}, Lcom/android/flymexx/wifi/WpsDialog$1WpsListener;-><init>(Lcom/android/flymexx/wifi/WpsDialog;)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/android/flymexx/wifi/WpsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/wifi/WpsDialog$1;-><init>(Lcom/android/flymexx/wifi/WpsDialog;)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/wifi/WpsDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v5, :cond_0

    iget-object v5, p0, Lcom/android/flymexx/wifi/WpsDialog;->mDialogState:Lcom/android/flymexx/wifi/WpsDialog$DialogState;

    sget-object v6, Lcom/android/flymexx/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/flymexx/wifi/WpsDialog$DialogState;

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/flymexx/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/flymexx/wifi/WpsDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f0c054c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/android/flymexx/wifi/WpsDialog$DialogState;->CONNECTED:Lcom/android/flymexx/wifi/WpsDialog$DialogState;

    invoke-direct {p0, v5, v2}, Lcom/android/flymexx/wifi/WpsDialog;->updateDialog(Lcom/android/flymexx/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateDialog(Lcom/android/flymexx/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mDialogState:Lcom/android/flymexx/wifi/WpsDialog$DialogState;

    invoke-virtual {v0}, Lcom/android/flymexx/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/flymexx/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mDialogState:Lcom/android/flymexx/wifi/WpsDialog$DialogState;

    iput-object p2, p0, Lcom/android/flymexx/wifi/WpsDialog;->mMsgString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/flymexx/wifi/WpsDialog$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/flymexx/wifi/WpsDialog$4;-><init>(Lcom/android/flymexx/wifi/WpsDialog;Lcom/android/flymexx/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/WpsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04019f

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mView:Landroid/view/View;

    const v2, 0x7f110331

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    const v2, 0x7f0c0548

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mView:Landroid/view/View;

    const v2, 0x7f110332

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mView:Landroid/view/View;

    const v2, 0x7f110333

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mView:Landroid/view/View;

    const v2, 0x7f110334

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    const v2, 0x7f0c058a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/flymexx/wifi/WpsDialog$2;

    invoke-direct {v2, p0}, Lcom/android/flymexx/wifi/WpsDialog$2;-><init>(Lcom/android/flymexx/wifi/WpsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/flymexx/wifi/WpsDialog;->setView(Landroid/view/View;)V

    if-nez p1, :cond_0

    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    iget v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mWpsSetup:I

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    iget-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/flymexx/wifi/WpsDialog;->mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/flymexx/wifi/WpsDialog;->mDialogState:Lcom/android/flymexx/wifi/WpsDialog$DialogState;

    const-string/jumbo v2, "android:dialogState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/flymexx/wifi/WpsDialog$DialogState;->valueOf(Ljava/lang/String;)Lcom/android/flymexx/wifi/WpsDialog$DialogState;

    move-result-object v0

    const-string/jumbo v2, "android:dialogMsg"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/flymexx/wifi/WpsDialog;->updateDialog(Lcom/android/flymexx/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "android:dialogState"

    iget-object v2, p0, Lcom/android/flymexx/wifi/WpsDialog;->mDialogState:Lcom/android/flymexx/wifi/WpsDialog$DialogState;

    invoke-virtual {v2}, Lcom/android/flymexx/wifi/WpsDialog$DialogState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "android:dialogMsg"

    iget-object v2, p0, Lcom/android/flymexx/wifi/WpsDialog;->mMsgString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onStart()V
    .locals 6

    const-wide/16 v2, 0x3e8

    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/flymexx/wifi/WpsDialog$3;

    invoke-direct {v1, p0}, Lcom/android/flymexx/wifi/WpsDialog$3;-><init>(Lcom/android/flymexx/wifi/WpsDialog;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iget-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/flymexx/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mDialogState:Lcom/android/flymexx/wifi/WpsDialog$DialogState;

    sget-object v1, Lcom/android/flymexx/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/flymexx/wifi/WpsDialog$DialogState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->cancelWps(Landroid/net/wifi/WifiManager$WpsCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/flymexx/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/flymexx/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_2
    return-void
.end method
