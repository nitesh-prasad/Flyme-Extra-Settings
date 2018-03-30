.class public Lcom/android/flymexx/IccLockSettings;
.super Lcom/android/flymexx/SettingsPreferenceFragment;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/flymexx/EditPinPreference$OnPinEnteredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/IccLockSettings$1;,
        Lcom/android/flymexx/IccLockSettings$2;
    }
.end annotation


# instance fields
.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/flymexx/EditPinPreference;

.field private mPinToggle:Landroid/support/v14/preference/SwitchPreference;

.field private mRes:Landroid/content/res/Resources;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mToState:Z


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/IccLockSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/IccLockSettings;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/IccLockSettings;->iccLockChanged(ZI)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/IccLockSettings;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/IccLockSettings;->iccPinChanged(ZI)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/flymexx/IccLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/flymexx/IccLockSettings;->mDialogState:I

    new-instance v0, Lcom/android/flymexx/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/IccLockSettings$1;-><init>(Lcom/android/flymexx/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/flymexx/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/flymexx/IccLockSettings$2;-><init>(Lcom/android/flymexx/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getPinPasswordErrorMessage(I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0665

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " displayMessage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-lez p1, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f12000b

    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0666

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private iccLockChanged(ZI)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/flymexx/IccLockSettings;->mToState:Z

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/flymexx/IccLockSettings;->resetDialogState()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/flymexx/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private iccPinChanged(ZI)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/flymexx/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    invoke-direct {p0}, Lcom/android/flymexx/IccLockSettings;->resetDialogState()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c065b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private resetDialogState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mError:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/flymexx/IccLockSettings;->mDialogState:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/flymexx/IccLockSettings;->setDialogValues()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/flymexx/IccLockSettings;->mDialogState:I

    return-void
.end method

.method private setDialogValues()V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f0c0657

    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mPinDialog:Lcom/android/flymexx/EditPinPreference;

    iget-object v2, p0, Lcom/android/flymexx/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/flymexx/EditPinPreference;->setText(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    iget v1, p0, Lcom/android/flymexx/IccLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/flymexx/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v4, p0, Lcom/android/flymexx/IccLockSettings;->mError:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mPinDialog:Lcom/android/flymexx/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/flymexx/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0651

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/flymexx/IccLockSettings;->mPinDialog:Lcom/android/flymexx/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/flymexx/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0652

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/flymexx/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0653

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0654

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mPinDialog:Lcom/android/flymexx/EditPinPreference;

    iget-object v2, p0, Lcom/android/flymexx/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/flymexx/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0655

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mPinDialog:Lcom/android/flymexx/EditPinPreference;

    iget-object v2, p0, Lcom/android/flymexx/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/flymexx/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0656

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mPinDialog:Lcom/android/flymexx/EditPinPreference;

    iget-object v2, p0, Lcom/android/flymexx/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/flymexx/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 1

    iget v0, p0, Lcom/android/flymexx/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/flymexx/IccLockSettings;->setDialogValues()V

    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPinDialog:Lcom/android/flymexx/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/flymexx/EditPinPreference;->showPinDialog()V

    return-void
.end method

.method private tryChangeIccLockState()V
    .locals 4

    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/flymexx/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/flymexx/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method

.method private tryChangePin()V
    .locals 4

    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/flymexx/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private updatePreferences()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPinDialog:Lcom/android/flymexx/EditPinPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPinDialog:Lcom/android/flymexx/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/flymexx/EditPinPreference;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPinDialog:Lcom/android/flymexx/EditPinPreference;

    invoke-virtual {v0, v3}, Lcom/android/flymexx/EditPinPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPinDialog:Lcom/android/flymexx/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/flymexx/EditPinPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x38

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/IccLockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/flymexx/IccLockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v4, "sub_display_name"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    const-string/jumbo v4, "slot_id"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/flymexx/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/flymexx/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/IccLockSettings;->finish()V

    return-void

    :cond_0
    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Lcom/android/flymexx/IccLockSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "sim_pin"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/EditPinPreference;

    iput-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPinDialog:Lcom/android/flymexx/EditPinPreference;

    const-string/jumbo v0, "sim_toggle"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    if-eqz p1, :cond_1

    const-string/jumbo v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/flymexx/IccLockSettings;->mDialogState:I

    const-string/jumbo v0, "dialogPin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPin:Ljava/lang/String;

    const-string/jumbo v0, "dialogError"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mError:Ljava/lang/String;

    const-string/jumbo v0, "enableState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/flymexx/IccLockSettings;->mToState:Z

    iget v0, p0, Lcom/android/flymexx/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPinDialog:Lcom/android/flymexx/EditPinPreference;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/EditPinPreference;->setOnPinEnteredListener(Lcom/android/flymexx/EditPinPreference$OnPinEnteredListener;)V

    invoke-virtual {p0}, Lcom/android/flymexx/IccLockSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setPersistent(Z)V

    invoke-virtual {p0}, Lcom/android/flymexx/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mRes:Landroid/content/res/Resources;

    return-void

    :pswitch_0
    const-string/jumbo v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mOldPin:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mOldPin:Ljava/lang/String;

    const-string/jumbo v0, "newPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/flymexx/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPinEntered(Lcom/android/flymexx/EditPinPreference;Z)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/flymexx/IccLockSettings;->resetDialogState()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/flymexx/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/flymexx/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c0658

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mError:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/flymexx/IccLockSettings;->showPinDialog()V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/flymexx/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/flymexx/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mOldPin:Ljava/lang/String;

    iput v3, p0, Lcom/android/flymexx/IccLockSettings;->mDialogState:I

    iput-object v2, p0, Lcom/android/flymexx/IccLockSettings;->mError:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/flymexx/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/flymexx/IccLockSettings;->showPinDialog()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mNewPin:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/flymexx/IccLockSettings;->mDialogState:I

    iput-object v2, p0, Lcom/android/flymexx/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/flymexx/IccLockSettings;->showPinDialog()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c0659

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mError:Ljava/lang/String;

    iput v3, p0, Lcom/android/flymexx/IccLockSettings;->mDialogState:I

    iput-object v2, p0, Lcom/android/flymexx/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/flymexx/IccLockSettings;->showPinDialog()V

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lcom/android/flymexx/IccLockSettings;->mError:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/flymexx/IccLockSettings;->tryChangePin()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/flymexx/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/flymexx/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/flymexx/IccLockSettings;->mToState:Z

    iget-object v2, p0, Lcom/android/flymexx/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/flymexx/IccLockSettings;->mToState:Z

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iput v1, p0, Lcom/android/flymexx/IccLockSettings;->mDialogState:I

    invoke-direct {p0}, Lcom/android/flymexx/IccLockSettings;->showPinDialog()V

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/flymexx/IccLockSettings;->mPinDialog:Lcom/android/flymexx/EditPinPreference;

    if-ne p1, v2, :cond_0

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/flymexx/IccLockSettings;->mDialogState:I

    return v0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/flymexx/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget v1, p0, Lcom/android/flymexx/IccLockSettings;->mDialogState:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/flymexx/IccLockSettings;->showPinDialog()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/flymexx/IccLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/IccLockSettings;->mPinDialog:Lcom/android/flymexx/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/flymexx/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "dialogState"

    iget v1, p0, Lcom/android/flymexx/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "dialogPin"

    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mPinDialog:Lcom/android/flymexx/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/flymexx/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "dialogError"

    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "enableState"

    iget-boolean v1, p0, Lcom/android/flymexx/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/android/flymexx/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "newPinCode"

    iget-object v1, p0, Lcom/android/flymexx/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/flymexx/IccLockSettings;->updatePreferences()V

    return-void
.end method
