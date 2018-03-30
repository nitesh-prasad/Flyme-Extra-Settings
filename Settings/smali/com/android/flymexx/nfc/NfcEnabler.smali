.class public Lcom/android/flymexx/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/nfc/NfcEnabler$1;
    }
.end annotation


# instance fields
.field private final mAndroidBeam:Lcom/android/flymexxlib/RestrictedPreference;

.field private mBeamDisallowedBySystem:Z

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mNfcPayment:Landroid/support/v7/preference/PreferenceScreen;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSwitch:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -wrap0(Lcom/android/flymexx/nfc/NfcEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/SwitchPreference;Lcom/android/flymexxlib/RestrictedPreference;Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/flymexx/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/nfc/NfcEnabler$1;-><init>(Lcom/android/flymexx/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    iput-object p3, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/flymexxlib/RestrictedPreference;

    iput-object p4, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mNfcPayment:Landroid/support/v7/preference/PreferenceScreen;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const-string/jumbo v0, "no_outgoing_beam"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/flymexxlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/flymexxlib/RestrictedPreference;

    invoke-virtual {v0, v2}, Lcom/android/flymexxlib/RestrictedPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mNfcPayment:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    iput-object v3, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/flymexxlib/RestrictedPreference;

    invoke-virtual {v0, v2}, Lcom/android/flymexxlib/RestrictedPreference;->setEnabled(Z)V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method private handleNfcStateChanged(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/flymexxlib/RestrictedPreference;

    invoke-virtual {v0, v2}, Lcom/android/flymexxlib/RestrictedPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/flymexxlib/RestrictedPreference;

    const v1, 0x7f0c0508

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/RestrictedPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mNfcPayment:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/flymexxlib/RestrictedPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/flymexxlib/RestrictedPreference;

    invoke-virtual {v0, v2}, Lcom/android/flymexxlib/RestrictedPreference;->setEnabled(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/flymexxlib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/android/flymexxlib/RestrictedPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/flymexxlib/RestrictedPreference;

    const v1, 0x7f0c0506

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/RestrictedPreference;->setSummary(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mNfcPayment:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/flymexxlib/RestrictedPreference;

    const-string/jumbo v1, "no_outgoing_beam"

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/flymexxlib/RestrictedPreference;

    const v1, 0x7f0c0507

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/RestrictedPreference;->setSummary(I)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/flymexxlib/RestrictedPreference;

    invoke-virtual {v0, v2}, Lcom/android/flymexxlib/RestrictedPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mNfcPayment:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/flymexxlib/RestrictedPreference;

    invoke-virtual {v0, v2}, Lcom/android/flymexxlib/RestrictedPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mNfcPayment:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    :goto_0
    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/flymexx/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
