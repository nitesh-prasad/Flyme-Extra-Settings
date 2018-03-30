.class public final Lcom/android/flymexx/support/SupportDisclaimerDialogFragment;
.super Landroid/app/DialogFragment;
.source "SupportDisclaimerDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/support/SupportDisclaimerDialogFragment$NoUnderlineUrlSpan;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/accounts/Account;I)Lcom/android/flymexx/support/SupportDisclaimerDialogFragment;
    .locals 3

    new-instance v1, Lcom/android/flymexx/support/SupportDisclaimerDialogFragment;

    invoke-direct {v1}, Lcom/android/flymexx/support/SupportDisclaimerDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v2, "extra_account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "extra_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/android/flymexx/support/SupportDisclaimerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private static stripUnderlines(Landroid/text/Spannable;)V
    .locals 8

    const/4 v4, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/text/style/URLSpan;

    invoke-interface {p0, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v3, v4

    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    new-instance v6, Lcom/android/flymexx/support/SupportDisclaimerDialogFragment$NoUnderlineUrlSpan;

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/flymexx/support/SupportDisclaimerDialogFragment$NoUnderlineUrlSpan;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x21

    invoke-interface {p0, v6, v2, v0, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/android/flymexx/support/SupportDisclaimerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1e3

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v4, -0x2

    if-ne p2, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/support/SupportDisclaimerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x1e3

    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/support/SupportDisclaimerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/support/SupportDisclaimerDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    const v5, 0x7f110255

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-static {v0}, Lcom/android/flymexx/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/flymexx/overlay/FeatureFactory;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/flymexx/overlay/FeatureFactory;->getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/flymexx/overlay/SupportFeatureProvider;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/flymexx/support/SupportDisclaimerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3, v5, v4}, Lcom/android/flymexx/overlay/SupportFeatureProvider;->setShouldShowDisclaimerDialog(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/android/flymexx/support/SupportDisclaimerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/16 v4, 0x1e4

    invoke-static {v0, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/flymexx/support/SupportDisclaimerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v4, "extra_account"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/accounts/Account;

    const-string/jumbo v6, "extra_type"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v5, v4, v6}, Lcom/android/flymexx/overlay/SupportFeatureProvider;->startSupport(Landroid/app/Activity;Landroid/accounts/Account;I)V

    return-void

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/flymexx/support/SupportDisclaimerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c0e7a

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04013c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f110254

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/flymexx/support/SupportDisclaimerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/flymexx/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/flymexx/overlay/FeatureFactory;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/flymexx/overlay/FeatureFactory;->getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/flymexx/overlay/SupportFeatureProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/flymexx/overlay/SupportFeatureProvider;->getDisclaimerStringResId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Lcom/android/flymexx/support/SupportDisclaimerDialogFragment;->stripUnderlines(Landroid/text/Spannable;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
