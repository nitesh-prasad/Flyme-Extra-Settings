.class public Lcom/android/flymexx/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;
.super Lcom/android/flymexx/EncryptionInterstitial$EncryptionInterstitialFragment;
.source "SetupEncryptionInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/SetupEncryptionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupEncryptionInterstitialFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/EncryptionInterstitial$EncryptionInterstitialFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 2

    move-object v0, p2

    check-cast v0, Lcom/android/setupwizardlib/GlifPreferenceLayout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    return-object v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/EncryptionInterstitial$EncryptionInterstitialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    move-object v0, p1

    check-cast v0, Lcom/android/setupwizardlib/GlifPreferenceLayout;

    new-instance v1, Lcom/android/flymexx/utils/SettingsDividerItemDecoration;

    invoke-virtual {p0}, Lcom/android/flymexx/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/flymexx/utils/SettingsDividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setDividerItemDecoration(Lcom/android/setupwizardlib/DividerItemDecoration;)V

    invoke-virtual {p0}, Lcom/android/flymexx/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setDividerInset(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0200cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0c0cf4

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setHeaderText(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/flymexx/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
