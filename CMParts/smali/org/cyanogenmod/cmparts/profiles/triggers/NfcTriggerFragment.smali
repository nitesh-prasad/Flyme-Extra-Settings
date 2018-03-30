.class public Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;
.super Landroid/app/Fragment;
.source "NfcTriggerFragment.java"

# interfaces
.implements Lorg/cyanogenmod/cmparts/profiles/NFCProfileTagCallback;


# instance fields
.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field mProfile:Lcyanogenmod/app/Profile;

.field private mWriteTagFilters:[Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private disableTagWriteMode()V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    return-void
.end method

.method private enableTagWriteMode()V
    .locals 6

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/IntentFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->mWriteTagFilters:[Landroid/content/IntentFilter;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->mWriteTagFilters:[Landroid/content/IntentFilter;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    return-void
.end method

.method private getPendingIntent()Landroid/app/PendingIntent;
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "Profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/PartsActivity;

    invoke-virtual {v0, p0}, Lorg/cyanogenmod/cmparts/PartsActivity;->setNfcProfileCallback(Lorg/cyanogenmod/cmparts/profiles/NFCProfileTagCallback;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030032

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/PartsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/PartsActivity;->setNfcProfileCallback(Lorg/cyanogenmod/cmparts/profiles/NFCProfileTagCallback;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->disableTagWriteMode()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->enableTagWriteMode()V

    :cond_0
    return-void
.end method

.method public onTagRead(Landroid/nfc/Tag;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileUtils;->getProfileAsNdef(Lcyanogenmod/app/Profile;)Landroid/nfc/NdefMessage;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileUtils;->writeTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08026c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileUtils;->vibrate(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08026d

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
