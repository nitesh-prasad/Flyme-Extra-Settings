.class public Lcom/android/flymexx/datausage/CellDataPreference;
.super Lcom/android/flymexx/CustomDialogPreference;
.source "CellDataPreference.java"

# interfaces
.implements Lcom/android/flymexx/datausage/TemplatePreference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/datausage/CellDataPreference$1;,
        Lcom/android/flymexx/datausage/CellDataPreference$CellDataState;,
        Lcom/android/flymexx/datausage/CellDataPreference$DataStateListener;
    }
.end annotation


# instance fields
.field private mCarrierMode:Ljava/lang/String;

.field public mChecked:Z

.field private mIsCTClassA:Z

.field private final mListener:Lcom/android/flymexx/datausage/CellDataPreference$DataStateListener;

.field public mSubId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/flymexx/datausage/CellDataPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/CellDataPreference;->updateChecked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/flymexx/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mSubId:I

    const-string/jumbo v0, "persist.radio.carrier_mode"

    const-string/jumbo v1, "default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mCarrierMode:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mCarrierMode:Ljava/lang/String;

    const-string/jumbo v1, "ct_class_a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mIsCTClassA:Z

    new-instance v0, Lcom/android/flymexx/datausage/CellDataPreference$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/datausage/CellDataPreference$1;-><init>(Lcom/android/flymexx/datausage/CellDataPreference;)V

    iput-object v0, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mListener:Lcom/android/flymexx/datausage/CellDataPreference$DataStateListener;

    return-void
.end method

.method private setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mChecked:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mChecked:Z

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/CellDataPreference;->notifyChanged()V

    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v0, v1, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    invoke-direct {p0, p1}, Lcom/android/flymexx/datausage/CellDataPreference;->setChecked(Z)V

    return-void
.end method

.method private showDisableDialog(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0abd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method private updateChecked()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/flymexx/datausage/CellDataPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 4

    invoke-super {p0}, Lcom/android/flymexx/CustomDialogPreference;->onAttached()V

    iget-object v0, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mListener:Lcom/android/flymexx/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/flymexx/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/CustomDialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x1020040

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mChecked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/flymexx/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    return-void
.end method

.method public onDetached()V
    .locals 4

    iget-object v0, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mListener:Lcom/android/flymexx/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/flymexx/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    invoke-super {p0}, Lcom/android/flymexx/CustomDialogPreference;->onDetached()V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/datausage/CellDataPreference;->showDisableDialog(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/android/flymexx/datausage/CellDataPreference$CellDataState;

    invoke-virtual {v0}, Lcom/android/flymexx/datausage/CellDataPreference$CellDataState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/flymexx/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-boolean v1, v0, Lcom/android/flymexx/datausage/CellDataPreference$CellDataState;->mChecked:Z

    iput-boolean v1, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mChecked:Z

    iget v1, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mSubId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/flymexx/datausage/CellDataPreference$CellDataState;->mSubId:I

    iput v1, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mSubId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/CellDataPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/flymexx/datausage/CellDataPreference;->setKey(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/datausage/CellDataPreference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/android/flymexx/datausage/CellDataPreference$CellDataState;

    invoke-super {p0}, Lcom/android/flymexx/CustomDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/flymexx/datausage/CellDataPreference$CellDataState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v1, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mChecked:Z

    iput-boolean v1, v0, Lcom/android/flymexx/datausage/CellDataPreference$CellDataState;->mChecked:Z

    iget v1, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mSubId:I

    iput v1, v0, Lcom/android/flymexx/datausage/CellDataPreference$CellDataState;->mSubId:I

    return-object v0
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xb2

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    iget-boolean v0, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mChecked:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/flymexx/CustomDialogPreference;->performClick(Landroid/view/View;)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/flymexx/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    goto :goto_1
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/flymexx/datausage/TemplatePreference$NetworkServices;)V
    .locals 2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "CellDataPreference needs a SubscriptionInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v0, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mSubId:I

    if-ne v0, v1, :cond_1

    iput p2, p0, Lcom/android/flymexx/datausage/CellDataPreference;->mSubId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/CellDataPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/datausage/CellDataPreference;->setKey(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/flymexx/datausage/CellDataPreference;->updateChecked()V

    return-void
.end method
