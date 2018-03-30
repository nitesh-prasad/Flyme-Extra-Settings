.class Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler$1;
.super Ljava/lang/Object;
.source "TrustedCredentialsDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;->onClickRemove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;

.field final synthetic val$certHolder:Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->this$1:Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;

    iput-object p2, p0, Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->val$certHolder:Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->this$1:Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-static {v0}, Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;->-get2(Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;)Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DelegateInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->val$certHolder:Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

    invoke-interface {v0, v1}, Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DelegateInterface;->removeOrInstallCert(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->this$1:Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-static {v0}, Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;->-wrap1(Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;)V

    return-void
.end method
