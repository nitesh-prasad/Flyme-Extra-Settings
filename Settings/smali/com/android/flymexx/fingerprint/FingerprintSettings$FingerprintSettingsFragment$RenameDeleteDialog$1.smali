.class Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$1;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;


# direct methods
.method constructor <init>(Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$1;->this$2:Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v3, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$1;->this$2:Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-static {v3}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->-get0(Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$1;->this$2:Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-static {v3}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->-get2(Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "FingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$1;->this$2:Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-virtual {v3}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$1;->this$2:Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-static {v4}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->-get2(Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    const/16 v5, 0xfe

    invoke-static {v3, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    iget-object v3, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$1;->this$2:Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-virtual {v3}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    iget-object v3, p0, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$1;->this$2:Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-static {v3}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->-get2(Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->-wrap2(Lcom/android/flymexx/fingerprint/FingerprintSettings$FingerprintSettingsFragment;ILjava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
