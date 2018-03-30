.class Lcom/android/flymexx/bluetooth/BluetoothSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/flymexx/bluetooth/BluetoothSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/flymexx/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateDeviceName(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/flymexx/bluetooth/BluetoothSettings;

    iget-object v3, v3, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/flymexx/bluetooth/BluetoothSettings;

    iget-object v3, v3, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/support/v7/preference/Preference;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    move-result-object v0

    iget-object v3, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/flymexx/bluetooth/BluetoothSettings;

    iget-object v3, v3, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/support/v7/preference/Preference;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/flymexx/bluetooth/BluetoothSettings;

    iget-object v5, v5, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f0c0337

    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/flymexx/bluetooth/BluetoothSettings$1;->updateDeviceName(Landroid/content/Context;)V

    :cond_0
    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/flymexx/bluetooth/BluetoothSettings;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->-set0(Lcom/android/flymexx/bluetooth/BluetoothSettings;Z)Z

    :cond_1
    return-void
.end method
