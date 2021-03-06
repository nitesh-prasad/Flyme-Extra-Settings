.class public Lcyanogenmod/preference/CMSecureSettingListPreference;
.super Lcyanogenmod/preference/SelfRemovingListPreference;
.source "CMSecureSettingListPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcyanogenmod/preference/SelfRemovingListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcyanogenmod/preference/CMSecureSettingListPreference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcyanogenmod/preference/CMSecureSettingListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcyanogenmod/preference/CMSecureSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-object p1

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method protected isPersisted()Z
    .locals 2

    invoke-virtual {p0}, Lcyanogenmod/preference/CMSecureSettingListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcyanogenmod/preference/CMSecureSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcyanogenmod/preference/CMSecureSettingListPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcyanogenmod/preference/CMSecureSettingListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcyanogenmod/preference/CMSecureSettingListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcyanogenmod/preference/CMSecureSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcyanogenmod/providers/CMSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
