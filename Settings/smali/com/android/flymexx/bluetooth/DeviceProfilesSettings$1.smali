.class Lcom/android/flymexx/bluetooth/DeviceProfilesSettings$1;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;

.field final synthetic val$device:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

.field final synthetic val$profile:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>(Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    iput-object p3, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;

    instance-of v0, v0, Lcom/android/flymexxlib/bluetooth/MapProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;

    instance-of v0, v0, Lcom/android/flymexxlib/bluetooth/PbapServerProfile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->-wrap0(Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;

    invoke-static {v0, v1, v2}, Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/flymexx/bluetooth/DeviceProfilesSettings;Landroid/widget/CheckBox;Lcom/android/flymexxlib/bluetooth/LocalBluetoothProfile;)V

    return-void
.end method
