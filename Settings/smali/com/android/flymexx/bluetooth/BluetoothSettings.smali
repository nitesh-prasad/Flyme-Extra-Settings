.class public final Lcom/android/flymexx/bluetooth/BluetoothSettings;
.super Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/flymexx/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/bluetooth/BluetoothSettings$1;,
        Lcom/android/flymexx/bluetooth/BluetoothSettings$2;,
        Lcom/android/flymexx/bluetooth/BluetoothSettings$3;,
        Lcom/android/flymexx/bluetooth/BluetoothSettings$4;,
        Lcom/android/flymexx/bluetooth/BluetoothSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mSettingsDialogView:Landroid/view/View;


# instance fields
.field private mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/flymexx/bluetooth/BluetoothEnabler;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mInitialScanStarted:Z

.field private mInitiateDiscoverable:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field mMyDevicePreference:Landroid/support/v7/preference/Preference;

.field private mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;


# direct methods
.method static synthetic -set0(Lcom/android/flymexx/bluetooth/BluetoothSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    new-instance v0, Lcom/android/flymexx/bluetooth/BluetoothSettings$3;

    invoke-direct {v0}, Lcom/android/flymexx/bluetooth/BluetoothSettings$3;-><init>()V

    sput-object v0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/flymexx/bluetooth/BluetoothSettings$4;

    invoke-direct {v0}, Lcom/android/flymexx/bluetooth/BluetoothSettings$4;-><init>()V

    sput-object v0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/flymexx/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/flymexx/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/flymexx/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/flymexx/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method private addDeviceCategory(Landroid/support/v7/preference/PreferenceGroup;ILcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    invoke-virtual {p0, p3}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->setFilter(Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;)V

    invoke-virtual {p0, p1}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/support/v7/preference/PreferenceGroup;)V

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->addCachedDevices()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    return-void
.end method

.method private resetBarSize(FII)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "action_bar"

    const-string/jumbo v10, "id"

    const-string/jumbo v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar;

    const/4 v5, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    int-to-float v8, p2

    const/4 v9, 0x1

    invoke-static {v9, v8, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v7}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_1

    invoke-virtual {v7, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v8, v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    invoke-virtual {v7, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    :cond_0
    invoke-virtual {v7, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    const/16 v8, 0x10

    iput v8, v1, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    const/4 v8, 0x1

    invoke-virtual {v5, v8, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    iget-object v8, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v8}, Lcom/android/flymexx/widget/SwitchBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    int-to-float v8, p3

    const/4 v9, 0x1

    invoke-static {v9, v8, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    return-void
.end method

.method private setOffMessage()V
    .locals 7

    const/4 v0, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const v6, 0x7f0c04d5

    invoke-virtual {p0, v6}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "ble_scan_always_enabled"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v0, :cond_1

    :goto_0
    if-nez v0, :cond_2

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    return-void

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\n\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f0c04d6

    invoke-virtual {p0, v5}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/android/flymexx/bluetooth/BluetoothSettings$5;

    invoke-direct {v5, p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings$5;-><init>(Lcom/android/flymexx/bluetooth/BluetoothSettings;)V

    invoke-static {v3, v2, v5}, Lcom/android/flymexx/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/flymexx/LinkifyUtils$OnClickListener;)Z

    goto :goto_1
.end method

.method private startScanning()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iput-boolean v2, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/support/v7/preference/PreferenceGroup;)V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->removeAllDevices()V

    :cond_2
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    :goto_0
    iput-boolean v2, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v2}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    return-void

    :cond_3
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "mAvailableDevicesCategory is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateContent(I)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/support/v7/preference/PreferenceGroup;)V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->removeAllDevices()V

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_2
    return-void

    :pswitch_0
    iget-object v6, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->clear()V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v6

    if-eqz v6, :cond_3

    const v2, 0x7f0c0336

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v6, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    sget-object v7, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;

    const v8, 0x7f0c04ca

    invoke-direct {p0, v6, v8, v7, v11}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/support/v7/preference/PreferenceGroup;ILcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    iget-object v6, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v6

    if-nez v6, :cond_4

    if-gtz v3, :cond_8

    :cond_4
    const-string/jumbo v6, "paired_devices"

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    sget-object v7, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;

    iget-boolean v8, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    const v9, 0x7f0c04cb

    invoke-direct {p0, v6, v9, v7, v8}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/support/v7/preference/PreferenceGroup;ILcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    iget-boolean v6, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    if-nez v6, :cond_6

    invoke-direct {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->startScanning()V

    :cond_6
    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    move-result-object v0

    iget-object v6, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/support/v7/preference/Preference;

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v8}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const v8, 0x7f0c0337

    invoke-virtual {v5, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-boolean v6, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    const/16 v7, 0x17

    invoke-virtual {v6, v7}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    iput-boolean v10, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    :cond_7
    return-void

    :cond_8
    const-string/jumbo v6, "paired_devices"

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :pswitch_1
    const v2, 0x7f0c034f

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->setOffMessage()V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v6

    if-eqz v6, :cond_0

    const v2, 0x7f0c0336

    goto/16 :goto_0

    :pswitch_3
    const v2, 0x7f0c034e

    iput-boolean v10, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    const-string/jumbo v1, "paired_devices"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceGroup;->setOrder(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    new-instance v0, Lcom/android/flymexx/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/flymexx/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceGroup;->setSelectable(Z)V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setOrder(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0, v3}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0c0ba0

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method initDevicePreference(Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    iput-boolean v2, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/flymexx/SettingsActivity;->getSwitchBar()Lcom/android/flymexx/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    new-instance v1, Lcom/android/flymexx/bluetooth/BluetoothEnabler;

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/android/flymexx/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/flymexx/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/flymexx/bluetooth/BluetoothEnabler;

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/flymexx/bluetooth/BluetoothEnabler;

    invoke-virtual {v1}, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->setupSwitchBar()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    const/16 v0, 0xc

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->updateContent(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const v6, 0x7f0b0121

    invoke-super {p0, p1}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b011c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v3, v4

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0120

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b011e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    invoke-direct {p0, v3, v0, v2}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->resetBarSize(FII)V

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b011d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v3, v4

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_5

    const v2, 0x7f0c04bf

    :goto_1
    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v3, 0x2

    const v5, 0x7f0c0332

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v3, 0x3

    const v5, 0x7f0c0343

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const v2, 0x7f0c04be

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/flymexx/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->teardownSwitchBar()V

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/flymexxlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/support/v7/preference/PreferenceGroup;)V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->removeAllDevices()V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->updateContent(I)V

    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    invoke-super {p0, p1}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/flymexx/bluetooth/BluetoothDevicePreference;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->startScanning()V

    :cond_0
    return v4

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    new-instance v1, Lcom/android/flymexx/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v1}, Lcom/android/flymexx/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "rename device"

    invoke-virtual {v1, v2, v3}, Lcom/android/flymexx/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return v4

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/flymexx/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/flymexx/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/flymexx/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/flymexx/bluetooth/BluetoothEnabler;

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/flymexx/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    :cond_0
    invoke-super {p0}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/support/v7/preference/PreferenceGroup;)V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c0336

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->removeAllDevices()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/flymexx/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->updateContent(I)V

    :cond_3
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method
