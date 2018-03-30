.class public Lorg/cyanogenmod/cmparts/profiles/NFCProfile;
.super Landroid/app/Activity;
.source "NFCProfile.java"


# instance fields
.field private mProfileManager:Lcyanogenmod/app/ProfileManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private clearPreviouslySelectedProfile()V
    .locals 3

    const-string/jumbo v1, "NFCProfile"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/cyanogenmod/cmparts/profiles/NFCProfile;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "previous-profile"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private getPreviouslySelectedProfile()Lcyanogenmod/app/Profile;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string/jumbo v3, "NFCProfile"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/cyanogenmod/cmparts/profiles/NFCProfile;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v3, "previous-profile"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfile;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcyanogenmod/app/ProfileManager;->getProfile(Ljava/util/UUID;)Lcyanogenmod/app/Profile;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private handleProfileMimeType([B)V
    .locals 8

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileUtils;->toUUID([B)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/NFCProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "system_profiles_enabled"

    invoke-static {v6, v7, v1}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v1, :cond_1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfile;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v6}, Lcyanogenmod/app/ProfileManager;->getActiveProfile()Lcyanogenmod/app/Profile;

    move-result-object v0

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfile;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v6, v4}, Lcyanogenmod/app/ProfileManager;->getProfile(Ljava/util/UUID;)Lcyanogenmod/app/Profile;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-class v6, Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v6, "PROFILE_UUID"

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x20000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/profiles/NFCProfile;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/NFCProfile;->getPreviouslySelectedProfile()Lcyanogenmod/app/Profile;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/cyanogenmod/cmparts/profiles/NFCProfile;->switchTo(Ljava/util/UUID;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/NFCProfile;->clearPreviouslySelectedProfile()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/NFCProfile;->saveCurrentProfile()V

    invoke-direct {p0, v4}, Lorg/cyanogenmod/cmparts/profiles/NFCProfile;->switchTo(Ljava/util/UUID;)V

    goto :goto_1
.end method

.method private saveCurrentProfile()V
    .locals 4

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfile;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v2}, Lcyanogenmod/app/ProfileManager;->getActiveProfile()Lcyanogenmod/app/Profile;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "NFCProfile"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/cyanogenmod/cmparts/profiles/NFCProfile;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "previous-profile"

    invoke-virtual {v0}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private switchTo(Ljava/util/UUID;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfile;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v1, p1}, Lcyanogenmod/app/ProfileManager;->getProfile(Ljava/util/UUID;)Lcyanogenmod/app/Profile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfile;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v1, p1}, Lcyanogenmod/app/ProfileManager;->setActiveProfile(Ljava/util/UUID;)V

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f08026e

    invoke-virtual {p0, v2, v1}, Lorg/cyanogenmod/cmparts/profiles/NFCProfile;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-static {p0}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileUtils;->vibrate(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfile;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    return-void
.end method

.method protected onResume()V
    .locals 13

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/NFCProfile;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v8, v5

    new-array v3, v8, [Landroid/nfc/NdefMessage;

    const/4 v1, 0x0

    :goto_0
    array-length v8, v5

    if-ge v1, v8, :cond_2

    aget-object v8, v5, v1

    check-cast v8, Landroid/nfc/NdefMessage;

    aput-object v8, v3, v1

    aget-object v8, v3, v1

    invoke-virtual {v8}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v9

    const/4 v8, 0x0

    array-length v10, v9

    :goto_1
    if-ge v8, v10, :cond_1

    aget-object v6, v9, v8

    new-instance v7, Ljava/lang/String;

    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v4

    const-string/jumbo v11, "cm/profile"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz v4, :cond_0

    array-length v11, v4

    const/16 v12, 0x10

    if-ne v11, v12, :cond_0

    invoke-direct {p0, v4}, Lorg/cyanogenmod/cmparts/profiles/NFCProfile;->handleProfileMimeType([B)V

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/NFCProfile;->finish()V

    return-void
.end method
