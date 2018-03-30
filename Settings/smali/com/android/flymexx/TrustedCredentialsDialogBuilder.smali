.class Lcom/android/flymexx/TrustedCredentialsDialogBuilder;
.super Landroid/app/AlertDialog$Builder;
.source "TrustedCredentialsDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DelegateInterface;,
        Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;
    }
.end annotation


# instance fields
.field private final mDialogEventHandler:Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DelegateInterface;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-direct {v0, p1, p2}, Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;-><init>(Landroid/app/Activity;Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DelegateInterface;)V

    iput-object v0, p0, Lcom/android/flymexx/TrustedCredentialsDialogBuilder;->mDialogEventHandler:Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-direct {p0}, Lcom/android/flymexx/TrustedCredentialsDialogBuilder;->initDefaultBuilderParams()V

    return-void
.end method

.method private initDefaultBuilderParams()V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x104055a

    invoke-virtual {p0, v0}, Lcom/android/flymexx/TrustedCredentialsDialogBuilder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/flymexx/TrustedCredentialsDialogBuilder;->mDialogEventHandler:Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-static {v0}, Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;->-get3(Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/TrustedCredentialsDialogBuilder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0c0b26

    invoke-virtual {p0, v0, v1}, Lcom/android/flymexx/TrustedCredentialsDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    invoke-virtual {p0, v0, v1}, Lcom/android/flymexx/TrustedCredentialsDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .locals 2

    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/TrustedCredentialsDialogBuilder;->mDialogEventHandler:Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v1, p0, Lcom/android/flymexx/TrustedCredentialsDialogBuilder;->mDialogEventHandler:Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-virtual {v1, v0}, Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;->setDialog(Landroid/app/AlertDialog;)V

    return-object v0
.end method

.method public setCertHolder(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)Lcom/android/flymexx/TrustedCredentialsDialogBuilder;
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array v0, v1, [Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/flymexx/TrustedCredentialsDialogBuilder;->setCertHolders([Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)Lcom/android/flymexx/TrustedCredentialsDialogBuilder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

    aput-object p1, v0, v1

    goto :goto_0
.end method

.method public setCertHolders([Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)Lcom/android/flymexx/TrustedCredentialsDialogBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/TrustedCredentialsDialogBuilder;->mDialogEventHandler:Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DialogEventHandler;->setCertHolders([Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)V

    return-object p0
.end method
