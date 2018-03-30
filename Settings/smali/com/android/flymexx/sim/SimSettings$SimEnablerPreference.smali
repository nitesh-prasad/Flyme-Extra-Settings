.class Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;
.super Lcom/android/flymexx/sim/SimSettings$SimPreference;
.source "SimSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimEnablerPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$1;,
        Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$2;,
        Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$3;,
        Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;
    }
.end annotation


# instance fields
.field private mCmdInProgress:Z

.field private mCurrentUiccProvisionState:Z

.field private mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsChecked:Z

.field private mSwitch:Landroid/widget/CompoundButton;

.field final synthetic this$0:Lcom/android/flymexx/sim/SimSettings;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mCmdInProgress:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mCurrentUiccProvisionState:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->processSetUiccDone(II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->sendUiccProvisioningRequest()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->showProgressDialog()V

    return-void
.end method

.method public constructor <init>(Lcom/android/flymexx/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V
    .locals 7

    iput-object p1, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    const/4 v3, 0x0

    const v4, 0x101008f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/flymexx/sim/SimSettings$SimPreference;-><init>(Lcom/android/flymexx/sim/SimSettings;Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/telephony/SubscriptionInfo;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mCmdInProgress:Z

    new-instance v0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$1;-><init>(Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$2;

    invoke-direct {v0, p0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$2;-><init>(Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$3;

    invoke-direct {v0, p0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$3;-><init>(Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    const v0, 0x7f040058

    invoke-virtual {p0, v0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private dismissDialog(Landroid/app/Dialog;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    :cond_0
    return-void
.end method

.method private getProvisionStatus(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v0}, Lcom/android/flymexx/sim/SimSettings;->-get6(Lcom/android/flymexx/sim/SimSettings;)[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method private getProvisionedSlotId()I
    .locals 6

    const/4 v0, -0x1

    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v4}, Lcom/android/flymexx/sim/SimSettings;->-get5(Lcom/android/flymexx/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    iget-object v5, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    if-eq v4, v5, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private handleUserRequest()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "APM is on, EXIT!"

    invoke-direct {p0, v2}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    const v2, 0x7f0c02b8

    invoke-direct {p0, v5, v2}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v2}, Lcom/android/flymexx/sim/SimSettings;->-get3(Lcom/android/flymexx/sim/SimSettings;)I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Call state for phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not idle, EXIT!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    const v2, 0x7f0c02b9

    invoke-direct {p0, v5, v2}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->getNumOfSubsProvisioned()I

    move-result v2

    if-le v2, v6, :cond_3

    const-string/jumbo v2, "More than one sub is active, Deactivation possible."

    invoke-direct {p0, v2}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    invoke-direct {p0, v6, v4}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V

    :goto_1
    return-void

    :cond_3
    const-string/jumbo v2, "Only one sub is active. Deactivation not possible."

    invoke-direct {p0, v2}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    const v2, 0x7f0c02ba

    invoke-direct {p0, v5, v2}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V

    return-void

    :cond_4
    const-string/jumbo v2, "Activate the sub"

    invoke-direct {p0, v2}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->sendUiccProvisioningRequest()V

    goto :goto_1
.end method

.method private hasCard()Z
    .locals 2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private processSetUiccDone(II)V
    .locals 6

    const/16 v3, 0x7d0

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, v3}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->sendMessage(ILandroid/os/Handler;III)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mCmdInProgress:Z

    return-void
.end method

.method private sendMessage(ILandroid/os/Handler;I)V
    .locals 4

    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p3

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private sendMessage(ILandroid/os/Handler;III)V
    .locals 4

    invoke-virtual {p2, p1, p4, p5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p3

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private sendUiccProvisioningRequest()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;-><init>(Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setChecked(Z)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setChecked: uiccProvisionState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mCmdInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-boolean p1, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mCurrentUiccProvisionState:Z

    :cond_1
    return-void
.end method

.method private showAlertDialog(II)V
    .locals 9

    const v6, 0x7f0c02b5

    const v8, 0x104000a

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v4}, Lcom/android/flymexx/sim/SimSettings;->-get0(Lcom/android/flymexx/sim/SimSettings;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v4}, Lcom/android/flymexx/sim/SimSettings;->-get4(Lcom/android/flymexx/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/flymexx/sim/SimSettings;->-set0(Lcom/android/flymexx/sim/SimSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v4}, Lcom/android/flymexx/sim/SimSettings;->-get0(Lcom/android/flymexx/sim/SimSettings;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v4}, Lcom/android/flymexx/sim/SimSettings;->-get0(Lcom/android/flymexx/sim/SimSettings;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0026

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    iget-object v5, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->getProvisionedSlotId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0c02b7

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const v4, 0x7f0c02b6

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v5, 0x1040009

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_1
    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v8, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :pswitch_2
    iget-boolean v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mCurrentUiccProvisionState:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0c02bd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x0

    invoke-virtual {v0, v8, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0c02bf

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showProgressDialog()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0c02bb

    :goto_0
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v2}, Lcom/android/flymexx/sim/SimSettings;->-get4(Lcom/android/flymexx/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    iget-object v2, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/android/flymexx/sim/SimSettings;->-set1(Lcom/android/flymexx/sim/SimSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v2}, Lcom/android/flymexx/sim/SimSettings;->-get4(Lcom/android/flymexx/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v2, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v2}, Lcom/android/flymexx/sim/SimSettings;->-get4(Lcom/android/flymexx/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v2}, Lcom/android/flymexx/sim/SimSettings;->-get4(Lcom/android/flymexx/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v2}, Lcom/android/flymexx/sim/SimSettings;->-get4(Lcom/android/flymexx/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v2, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v2}, Lcom/android/flymexx/sim/SimSettings;->-get4(Lcom/android/flymexx/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v2, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v2}, Lcom/android/flymexx/sim/SimSettings;->-get4(Lcom/android/flymexx/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    iget-object v2, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const/16 v4, 0x7530

    invoke-direct {p0, v3, v2, v4}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    return-void

    :cond_0
    const v2, 0x7f0c02bc

    goto :goto_0
.end method


# virtual methods
.method public cleanUpPendingDialogs()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v0}, Lcom/android/flymexx/sim/SimSettings;->-get4(Lcom/android/flymexx/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v0}, Lcom/android/flymexx/sim/SimSettings;->-get0(Lcom/android/flymexx/sim/SimSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method protected determineSummary()Ljava/lang/CharSequence;
    .locals 6

    const/4 v5, 0x1

    iget v1, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-direct {p0, v1}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v1

    if-eq v1, v5, :cond_1

    iget-object v2, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->hasCard()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c02b3

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    const v3, 0x7f0c02b1

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const v1, 0x7f0c02b4

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/android/flymexx/sim/SimSettings$SimPreference;->determineSummary()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public getNumOfSubsProvisioned()I
    .locals 6

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v4}, Lcom/android/flymexx/sim/SimSettings;->-get5(Lcom/android/flymexx/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected isValid()Z
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/android/flymexx/sim/SimSettings$SimPreference;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-direct {p0, v1}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/android/flymexx/sim/SimSettings$SimPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const-string/jumbo v0, "onBindView...."

    invoke-direct {p0, v0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    const v0, 0x7f1100e5

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v0}, Lcom/android/flymexx/sim/SimSettings;->-get2(Lcom/android/flymexx/sim/SimSettings;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e0040

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->isValid()Z

    move-result v0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-direct {p0, v0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->setChecked(Z)V

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iput-boolean p2, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->handleUserRequest()V

    return-void
.end method

.method public update()V
    .locals 6

    iget-object v2, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v2}, Lcom/android/flymexx/sim/SimSettings;->-get2(Lcom/android/flymexx/sim/SimSettings;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v2}, Lcom/android/flymexx/sim/SimSettings;->-get6(Lcom/android/flymexx/sim/SimSettings;)[I

    move-result-object v2

    iget v3, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    iget-object v4, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v4}, Lcom/android/flymexx/sim/SimSettings;->-get2(Lcom/android/flymexx/sim/SimSettings;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v4

    iget v5, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-interface {v4, v5}, Lorg/codeaurora/internal/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v4

    aput v4, v2, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Lcom/android/flymexx/sim/SimSettings$SimPreference;->update()V

    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v2}, Lcom/android/flymexx/sim/SimSettings;->-get6(Lcom/android/flymexx/sim/SimSettings;)[I

    move-result-object v2

    iget v3, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    const/4 v4, -0x1

    aput v4, v2, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to get pref, slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v2}, Lcom/android/flymexx/sim/SimSettings;->-get6(Lcom/android/flymexx/sim/SimSettings;)[I

    move-result-object v2

    iget v3, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    const/4 v4, 0x1

    aput v4, v2, v3

    goto :goto_0
.end method
