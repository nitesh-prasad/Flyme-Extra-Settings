.class public abstract Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;
.super Lcom/android/flymexx/RestrictedSettingsFragment;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Lcom/android/flymexxlib/bluetooth/BluetoothCallback;


# instance fields
.field private mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

.field final mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;

.field mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

.field mLocalManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

.field mSelectedDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/flymexx/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    sget-object v0, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method

.method private updateProgressUi(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    instance-of v0, v0, Lcom/android/flymexx/bluetooth/BluetoothProgressCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    check-cast v0, Lcom/android/flymexx/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method addCachedDevices()V
    .locals 4

    iget-object v3, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method abstract addPreferencesForActivity()V
.end method

.method createDevicePreference(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;)V
    .locals 4

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    if-nez v2, :cond_0

    const-string/jumbo v2, "DeviceListPreferenceFragment"

    const-string/jumbo v3, "Trying to create a device preference before the list group/category exists!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;)V

    invoke-virtual {v1, v0}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->setKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->initDevicePreference(Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;)V

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->rebind()V

    goto :goto_0
.end method

.method initDevicePreference(Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    :cond_0
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/flymexx/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "DeviceListPreferenceFragment"

    const-string/jumbo v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->addPreferencesForActivity()V

    const-string/jumbo v0, "bt_device_list"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    return-void
.end method

.method public onDeviceAdded(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->createDevicePreference(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;)V

    :cond_2
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->onClicked()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/flymexx/RestrictedSettingsFragment;->onPause()V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/flymexxlib/bluetooth/BluetoothCallback;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "bt_scan"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2, v4}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    return v4

    :cond_0
    instance-of v2, p1, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v0}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;)V

    return v4

    :cond_1
    invoke-super {p0, p1}, Lcom/android/flymexx/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/flymexx/RestrictedSettingsFragment;->onResume()V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/flymexxlib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/flymexxlib/bluetooth/BluetoothCallback;)V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    return-void
.end method

.method removeAllDevices()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method setDeviceListGroup(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    return-void
.end method

.method final setFilter(I)V
    .locals 1

    invoke-static {p1}, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method

.method final setFilter(Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method
