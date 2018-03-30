.class public Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment;
.super Landroid/app/DialogFragment;
.source "PrivacyGuardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResetDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080198

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080199

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment$1;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment$1;-><init>(Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment;)V

    const v2, 0x7f08017a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;-><init>(Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment;)V

    const v2, 0x7f08017b

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
