.class public Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;
.super Landroid/app/DialogFragment;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenameDeleteDialog"
.end annotation


# instance fields
.field private mDialogTextField:Landroid/widget/EditText;

.field private mFingerName:Ljava/lang/String;

.field private mFp:Landroid/hardware/fingerprint/Fingerprint;

.field private mTextHadFocus:Ljava/lang/Boolean;

.field private mTextSelectionEnd:I

.field private mTextSelectionStart:I


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mDialogTextField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mFingerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mTextHadFocus:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mTextSelectionEnd:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mTextSelectionStart:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mDialogTextField:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->onDeleteClick(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private onDeleteClick(Landroid/content/DialogInterface;)V
    .locals 7

    const-string/jumbo v4, "FingerprintSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Removing fpId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    const/16 v6, 0xfd

    invoke-static {v4, v6, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {p0}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-static {v3}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->-get2(Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/flymexx/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v1

    invoke-static {v3}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->-get0(Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v4

    invoke-static {v3}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->-get2(Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    invoke-static {v3, v4}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->-wrap0(Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/hardware/fingerprint/Fingerprint;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    new-instance v2, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;

    invoke-direct {v2}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "fingerprint"

    iget-object v5, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v4, "isProfileChallengeUser"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2, v0}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-class v5, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "fingerprint"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    iput-object v1, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    if-eqz p1, :cond_0

    const-string/jumbo v1, "fingerName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mFingerName:Ljava/lang/String;

    const-string/jumbo v1, "textHadFocus"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mTextHadFocus:Ljava/lang/Boolean;

    const-string/jumbo v1, "startSelection"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mTextSelectionStart:I

    const-string/jumbo v1, "endSelection"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mTextSelectionEnd:I

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f040086

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$1;

    invoke-direct {v2, p0}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$1;-><init>(Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)V

    const v3, 0x7f0c0419

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$2;

    invoke-direct {v2, p0}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$2;-><init>(Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)V

    const v3, 0x7f0c041a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$3;

    invoke-direct {v1, p0, v0}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$3;-><init>(Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v1, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mTextHadFocus:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mTextHadFocus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mDialogTextField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "fingerName"

    iget-object v1, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mDialogTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "textHadFocus"

    iget-object v1, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mDialogTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "startSelection"

    iget-object v1, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mDialogTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "endSelection"

    iget-object v1, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mDialogTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
