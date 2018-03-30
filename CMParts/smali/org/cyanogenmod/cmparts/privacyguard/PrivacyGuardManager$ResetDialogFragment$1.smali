.class Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment$1;
.super Ljava/lang/Object;
.source "PrivacyGuardManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment$1;->this$1:Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment$1;->this$1:Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$ResetDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;->-wrap0(Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager;)V

    return-void
.end method
