.class public Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;
.super Landroid/support/v14/preference/PreferenceDialogFragment;
.source "CustomDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomPreferenceDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;)Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;-><init>()V

    return-void
.end method

.method private getCustomizablePreference()Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;
    .locals 1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;
    .locals 3

    new-instance v1, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;

    invoke-direct {v1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v14/preference/PreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->-wrap0(Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v0
.end method

.method protected onCreateDialogView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v0
.end method

.method public onDialogClosed(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onDialogClosed(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->-wrap0(Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public onStart()V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, -0x3

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;->onStart()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    instance-of v1, v1, Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;

    invoke-direct {v2, p0, v0, v3}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;-><init>(Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;Landroid/content/DialogInterface;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;

    invoke-direct {v2, p0, v0, v5}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;-><init>(Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;Landroid/content/DialogInterface;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;

    invoke-direct {v2, p0, v0, v4}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment$OnDismissListener;-><init>(Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference$CustomPreferenceDialogFragment;Landroid/content/DialogInterface;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method
