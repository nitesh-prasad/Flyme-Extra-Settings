.class public Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;
.super Landroid/app/DialogFragment;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlowWarningFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    invoke-virtual {p0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;

    invoke-static {v4}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->-wrap0(Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->-wrap1(Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0c0703

    invoke-virtual {p0, v5}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment$1;

    invoke-direct {v5, p0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment$1;-><init>(Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;)V

    const v6, 0x104000a

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
