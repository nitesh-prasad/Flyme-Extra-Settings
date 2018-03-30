.class Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$HelpDialogFragment$1;
.super Ljava/lang/Object;
.source "PrivacyGuardManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$HelpDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$HelpDialogFragment;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$HelpDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$HelpDialogFragment$1;->this$1:Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$HelpDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
