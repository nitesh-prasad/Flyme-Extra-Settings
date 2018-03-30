.class public Lorg/cyanogenmod/cmparts/profiles/NFCProfileWriter;
.super Landroid/app/Activity;
.source "NFCProfileWriter.java"


# instance fields
.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mProfile:Lcyanogenmod/app/Profile;

.field private mProfileManager:Lcyanogenmod/app/ProfileManager;

.field private mWriteTagFilters:[Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private disableTagWriteMode()V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfileWriter;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    return-void
.end method

.method private enableTagWriteMode()V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/IntentFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfileWriter;->mWriteTagFilters:[Landroid/content/IntentFilter;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfileWriter;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileWriter;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfileWriter;->mWriteTagFilters:[Landroid/content/IntentFilter;

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v2, v3, v4}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    return-void
.end method

.method private getPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileWriter;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfileWriter;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {p0}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfileWriter;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileWriter;->setContentView(I)V

    const v0, 0x7f08026a

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileWriter;->setTitle(I)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android.nfc.extra.TAG"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfileWriter;->mProfile:Lcyanogenmod/app/Profile;

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileUtils;->getProfileAsNdef(Lcyanogenmod/app/Profile;)Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileUtils;->writeTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f08026c

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-static {p0}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileUtils;->vibrate(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileWriter;->finish()V

    :cond_0
    return-void

    :cond_1
    const v1, 0x7f08026d

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileWriter;->disableTagWriteMode()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileWriter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "PROFILE_UUID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfileWriter;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcyanogenmod/app/ProfileManager;->getProfile(Ljava/util/UUID;)Lcyanogenmod/app/Profile;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfileWriter;->mProfile:Lcyanogenmod/app/Profile;

    const-string/jumbo v1, "NFCProfileWriter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Profile to write: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfileWriter;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v3}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileWriter;->enableTagWriteMode()V

    :cond_0
    return-void
.end method
