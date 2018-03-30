.class public Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;
.super Lcom/android/flymexx/SettingsPreferenceFragment;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Lcom/android/flymexx/search/Indexable;
.implements Lcom/android/flymexx/wifi/WifiDialog$WifiDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mDialog:Lcom/android/flymexx/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

.field private mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

.field private mUserBadgeCache:Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings$1;

    invoke-direct {v0}, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings$1;-><init>()V

    sput-object v0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/flymexx/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreferences()V
    .locals 10

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {v2, v4, v1, v4}, Lcom/android/flymexxlib/wifi/WifiTracker;->getCurrentAccessPoints(Landroid/content/Context;ZZZ)Ljava/util/List;

    move-result-object v6

    new-instance v1, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings$2;

    invoke-direct {v1, p0}, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings$2;-><init>(Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;)V

    invoke-static {v6, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v9}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_0

    new-instance v0, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexxlib/wifi/AccessPoint;

    iget-object v3, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mUserBadgeCache:Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/flymexxlib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v1, v4, :cond_1

    const-string/jumbo v1, "SavedAccessPointsWifiSettings"

    const-string/jumbo v3, "Saved networks activity loaded, but there are no saved networks!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private showDialog(Lcom/android/flymexx/wifi/LongPressAccessPointPreference;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/flymexx/wifi/WifiDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->removeDialog(I)V

    iput-object v2, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/flymexx/wifi/WifiDialog;

    :cond_0
    invoke-virtual {p1}, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/flymexxlib/wifi/AccessPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {p0, v1}, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->showDialog(I)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x6a

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_0

    const-string/jumbo v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f08007d

    invoke-virtual {p0, v0}, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->addPreferencesFromResource(I)V

    new-instance v0, Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mUserBadgeCache:Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/flymexxlib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    iput-object v3, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    new-instance v0, Lcom/android/flymexx/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/flymexx/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/flymexx/wifi/WifiDialog$WifiDialogListener;Lcom/android/flymexxlib/wifi/AccessPoint;IZ)V

    iput-object v0, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/flymexx/wifi/WifiDialog;

    iget-object v0, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/flymexx/wifi/WifiDialog;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onForget(Lcom/android/flymexx/wifi/WifiDialog;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/flymexxlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    invoke-virtual {p0}, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v0, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/flymexxlib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v2, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/flymexx/wifi/LongPressAccessPointPreference;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->showDialog(Lcom/android/flymexx/wifi/LongPressAccessPointPreference;Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->initPreferences()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/flymexx/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/flymexx/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/flymexx/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/flymexx/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSubmit(Lcom/android/flymexx/wifi/WifiDialog;)V
    .locals 0

    return-void
.end method
