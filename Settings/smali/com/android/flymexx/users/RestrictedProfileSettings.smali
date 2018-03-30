.class public Lcom/android/flymexx/users/RestrictedProfileSettings;
.super Lcom/android/flymexx/users/AppRestrictionsFragment;
.source "RestrictedProfileSettings.java"

# interfaces
.implements Lcom/android/flymexx/users/EditUserInfoController$OnContentChangedCallback;


# instance fields
.field private mDeleteButton:Landroid/widget/ImageView;

.field private mEditUserInfoController:Lcom/android/flymexx/users/EditUserInfoController;

.field private mHeaderView:Landroid/view/View;

.field private mUserIconView:Landroid/widget/ImageView;

.field private mUserNameView:Landroid/widget/TextView;


# direct methods
.method static synthetic -wrap0(Lcom/android/flymexx/users/RestrictedProfileSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/users/RestrictedProfileSettings;->removeUser()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;-><init>()V

    new-instance v0, Lcom/android/flymexx/users/EditUserInfoController;

    invoke-direct {v0}, Lcom/android/flymexx/users/EditUserInfoController;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/flymexx/users/EditUserInfoController;

    return-void
.end method

.method private removeUser()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/flymexx/users/RestrictedProfileSettings;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/flymexx/users/RestrictedProfileSettings$2;

    invoke-direct {v1, p0}, Lcom/android/flymexx/users/RestrictedProfileSettings$2;-><init>(Lcom/android/flymexx/users/RestrictedProfileSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f040188

    invoke-virtual {p0, v0}, Lcom/android/flymexx/users/RestrictedProfileSettings;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mUserNameView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v1, 0x7f1102b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mDeleteButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-super {p0, p1}, Lcom/android/flymexx/users/AppRestrictionsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/flymexx/users/AppRestrictionsFragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/flymexx/users/EditUserInfoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/flymexx/users/EditUserInfoController;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/users/RestrictedProfileSettings;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mDeleteButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/flymexx/users/RestrictedProfileSettings;->showDialog(I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/flymexx/users/AppRestrictionsFragment;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/users/AppRestrictionsFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/flymexx/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/users/EditUserInfoController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/flymexx/users/RestrictedProfileSettings;->init(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/flymexx/users/EditUserInfoController;

    iget-object v1, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v1, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mUserNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v6, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mUser:Landroid/os/UserHandle;

    const v4, 0x7f0c03f9

    move-object v1, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/flymexx/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/flymexx/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/users/RestrictedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    new-instance v2, Lcom/android/flymexx/users/RestrictedProfileSettings$1;

    invoke-direct {v2, p0}, Lcom/android/flymexx/users/RestrictedProfileSettings$1;-><init>(Lcom/android/flymexx/users/RestrictedProfileSettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/flymexx/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v7

    return-object v7

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onLabelChanged(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mUserNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPhotoChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/flymexx/users/AppRestrictionsFragment;->onResume()V

    iget-object v1, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mUser:Landroid/os/UserHandle;

    invoke-static {v1, v2}, Lcom/android/flymexx/Utils;->getExistingUser(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/users/RestrictedProfileSettings;->finishFragment()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/flymexx/users/RestrictedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {v2, v3, v0}, Lcom/android/flymexxlib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Lcom/android/flymexxlib/drawable/UserIconDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/users/AppRestrictionsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/flymexx/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/users/EditUserInfoController;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/flymexx/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/flymexx/users/EditUserInfoController;->startingActivityForResult()V

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/users/AppRestrictionsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
