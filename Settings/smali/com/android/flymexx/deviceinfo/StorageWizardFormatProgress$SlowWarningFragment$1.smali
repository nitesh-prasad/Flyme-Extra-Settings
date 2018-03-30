.class Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment$1;
.super Ljava/lang/Object;
.source "StorageWizardFormatProgress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;


# direct methods
.method constructor <init>(Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment$1;->this$1:Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment$1;->this$1:Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;

    invoke-virtual {v1}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;

    invoke-static {v0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;->-wrap2(Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;)V

    return-void
.end method
