.class Lcom/android/flymexx/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;
.super Ljava/lang/Object;
.source "CustomDialogPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/CustomDialogPreference$CustomPreferenceDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDismissListener"
.end annotation


# instance fields
.field private final mDialog:Landroid/content/DialogInterface;

.field private final mWhich:I

.field final synthetic this$1:Lcom/android/flymexx/CustomDialogPreference$CustomPreferenceDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/flymexx/CustomDialogPreference$CustomPreferenceDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;->this$1:Lcom/android/flymexx/CustomDialogPreference$CustomPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/android/flymexx/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;->mWhich:I

    iput-object p2, p0, Lcom/android/flymexx/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;->mDialog:Landroid/content/DialogInterface;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;->this$1:Lcom/android/flymexx/CustomDialogPreference$CustomPreferenceDialogFragment;

    iget-object v1, p0, Lcom/android/flymexx/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;->mDialog:Landroid/content/DialogInterface;

    iget v2, p0, Lcom/android/flymexx/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;->mWhich:I

    invoke-virtual {v0, v1, v2}, Lcom/android/flymexx/CustomDialogPreference$CustomPreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    iget-object v0, p0, Lcom/android/flymexx/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;->this$1:Lcom/android/flymexx/CustomDialogPreference$CustomPreferenceDialogFragment;

    invoke-static {v0}, Lcom/android/flymexx/CustomDialogPreference$CustomPreferenceDialogFragment;->-wrap0(Lcom/android/flymexx/CustomDialogPreference$CustomPreferenceDialogFragment;)Lcom/android/flymexx/CustomDialogPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;->mDialog:Landroid/content/DialogInterface;

    iget v2, p0, Lcom/android/flymexx/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;->mWhich:I

    invoke-virtual {v0, v1, v2}, Lcom/android/flymexx/CustomDialogPreference;->onDismissDialog(Landroid/content/DialogInterface;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;->mDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
