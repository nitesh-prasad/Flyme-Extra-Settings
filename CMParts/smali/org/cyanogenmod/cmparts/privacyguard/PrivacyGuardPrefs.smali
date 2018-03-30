.class public Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardPrefs;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "PrivacyGuardPrefs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardPrefs;
    .locals 1

    new-instance v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardPrefs;

    invoke-direct {v0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardPrefs;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardPrefs;->addPreferencesFromResource(I)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "privacy_guard_default"

    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardPrefs;->watch([Landroid/net/Uri;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardPrefs;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v5, v2, v5, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-object v3
.end method
