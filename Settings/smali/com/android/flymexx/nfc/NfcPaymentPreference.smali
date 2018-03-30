.class public Lcom/android/flymexx/nfc/NfcPaymentPreference;
.super Lcom/android/flymexx/CustomDialogPreference;
.source "NfcPaymentPreference.java"

# interfaces
.implements Lcom/android/flymexx/nfc/PaymentBackend$Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/nfc/NfcPaymentPreference$NfcPaymentAdapter;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/flymexx/nfc/NfcPaymentPreference$NfcPaymentAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPaymentBackend:Lcom/android/flymexx/nfc/PaymentBackend;

.field private mSettingsButtonView:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/nfc/NfcPaymentPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/nfc/NfcPaymentPreference;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcPaymentPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/nfc/NfcPaymentPreference;)Lcom/android/flymexx/nfc/PaymentBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/flymexx/nfc/PaymentBackend;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/flymexx/nfc/PaymentBackend;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/flymexx/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/android/flymexx/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/flymexx/nfc/PaymentBackend;

    iput-object p1, p0, Lcom/android/flymexx/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Lcom/android/flymexx/nfc/PaymentBackend;->registerCallback(Lcom/android/flymexx/nfc/PaymentBackend$Callback;)V

    new-instance v0, Lcom/android/flymexx/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    invoke-direct {v0, p0}, Lcom/android/flymexx/nfc/NfcPaymentPreference$NfcPaymentAdapter;-><init>(Lcom/android/flymexx/nfc/NfcPaymentPreference;)V

    iput-object v0, p0, Lcom/android/flymexx/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/flymexx/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    const v0, 0x7f0c0b86

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/nfc/NfcPaymentPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/flymexx/nfc/NfcPaymentPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0400e5

    invoke-virtual {p0, v0}, Lcom/android/flymexx/nfc/NfcPaymentPreference;->setWidgetLayoutResource(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/nfc/NfcPaymentPreference;->refresh()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/CustomDialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f1101ca

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/flymexx/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/flymexx/nfc/NfcPaymentPreference;->updateSettingsVisibility()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v3, p0, Lcom/android/flymexx/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/flymexx/nfc/PaymentBackend;

    invoke-virtual {v3}, Lcom/android/flymexx/nfc/PaymentBackend;->getDefaultApp()Lcom/android/flymexx/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/flymexx/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/flymexx/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/android/flymexx/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "NfcPaymentPreference"

    const-string/jumbo v4, "Settings activity not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPaymentAppsChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/flymexx/nfc/NfcPaymentPreference;->refresh()V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/CustomDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/flymexx/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/flymexx/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public refresh()V
    .locals 5

    iget-object v3, p0, Lcom/android/flymexx/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/flymexx/nfc/PaymentBackend;

    invoke-virtual {v3}, Lcom/android/flymexx/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/flymexx/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/flymexx/nfc/PaymentBackend;

    invoke-virtual {v3}, Lcom/android/flymexx/nfc/PaymentBackend;->getDefaultApp()Lcom/android/flymexx/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/flymexx/nfc/PaymentBackend$PaymentAppInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/flymexx/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v3, p0, Lcom/android/flymexx/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/flymexx/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    invoke-virtual {v3, v1, v2}, Lcom/android/flymexx/nfc/NfcPaymentPreference$NfcPaymentAdapter;->updateApps([Lcom/android/flymexx/nfc/PaymentBackend$PaymentAppInfo;Lcom/android/flymexx/nfc/PaymentBackend$PaymentAppInfo;)V

    :cond_0
    const v3, 0x7f0c0b80

    invoke-virtual {p0, v3}, Lcom/android/flymexx/nfc/NfcPaymentPreference;->setTitle(I)V

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/flymexx/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/android/flymexx/nfc/NfcPaymentPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/flymexx/nfc/NfcPaymentPreference;->updateSettingsVisibility()V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/flymexx/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0b81

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/flymexx/nfc/NfcPaymentPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method updateSettingsVisibility()V
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/flymexx/nfc/PaymentBackend;

    invoke-virtual {v1}, Lcom/android/flymexx/nfc/PaymentBackend;->getDefaultApp()Lcom/android/flymexx/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/flymexx/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/flymexx/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
