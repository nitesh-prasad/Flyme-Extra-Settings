.class Lcom/android/flymexx/CustomListPreference$ConfirmDialogFragment$1;
.super Ljava/lang/Object;
.source "CustomListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/CustomListPreference$ConfirmDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/flymexx/CustomListPreference$ConfirmDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/flymexx/CustomListPreference$ConfirmDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/CustomListPreference$ConfirmDialogFragment$1;->this$1:Lcom/android/flymexx/CustomListPreference$ConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/flymexx/CustomListPreference$ConfirmDialogFragment$1;->this$1:Lcom/android/flymexx/CustomListPreference$ConfirmDialogFragment;

    invoke-virtual {v1}, Lcom/android/flymexx/CustomListPreference$ConfirmDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/flymexx/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-virtual {v0}, Lcom/android/flymexx/CustomListPreference$CustomListPreferenceDialogFragment;->onItemConfirmed()V

    :cond_0
    return-void
.end method
