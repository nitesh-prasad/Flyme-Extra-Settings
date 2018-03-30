.class public final Lcom/android/flymexx/bluetooth/DevicePickerFragment;
.super Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# instance fields
.field private mDeviceSelected:Z

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mNeedAuth:Z

.field private mStartScanOnResume:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mDeviceSelected:Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 3

    const/4 v2, 0x0

    const v1, 0x7f08002a

    invoke-virtual {p0, v1}, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    const-string/jumbo v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->setFilter(I)V

    const-string/jumbo v1, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    const-string/jumbo v1, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method initDevicePreference(Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;)V
    .locals 1

    const v0, 0x7f0400d0

    invoke-virtual {p1, v0}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0344

    invoke-virtual {p0, v4}, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string/jumbo v3, "no_config_bluetooth"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    invoke-virtual {p0, v2}, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7f0c04be

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    const/16 v1, 0xc

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->finish()V

    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->onPause()V

    iget-boolean v1, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mDeviceSelected:Z

    if-nez v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "org.codeaurora.bluetooth.devicepicker.action.DEVICE_NOT_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->addCachedDevices()V

    iput-boolean v2, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mDeviceSelected:Z

    iget-boolean v0, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    iput-boolean v2, p0, Lcom/android/flymexx/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    :cond_0
    return-void
.end method
