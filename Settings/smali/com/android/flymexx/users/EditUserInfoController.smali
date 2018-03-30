.class public Lcom/android/flymexx/users/EditUserInfoController;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/users/EditUserInfoController$OnContentChangedCallback;
    }
.end annotation


# instance fields
.field private mEditUserInfoDialog:Landroid/app/Dialog;

.field private mEditUserPhotoController:Lcom/android/flymexx/users/EditUserPhotoController;

.field private mSavedPhoto:Landroid/graphics/Bitmap;

.field private mUser:Landroid/os/UserHandle;

.field private mUserManager:Landroid/os/UserManager;

.field private mWaitingForActivityResult:Z


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/users/EditUserInfoController;)Lcom/android/flymexx/users/EditUserPhotoController;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/flymexx/users/EditUserPhotoController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/users/EditUserInfoController;)Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/EditUserInfoController;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/users/EditUserInfoController;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/users/EditUserInfoController;->mWaitingForActivityResult:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/flymexx/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/flymexx/users/EditUserPhotoController;

    invoke-virtual {v0}, Lcom/android/flymexx/users/EditUserPhotoController;->removeNewUserPhotoBitmapFile()V

    iput-object v1, p0, Lcom/android/flymexx/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    iput-object v1, p0, Lcom/android/flymexx/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    return-void
.end method

.method public createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/flymexx/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;
    .locals 18

    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/flymexx/users/EditUserInfoController;->mUser:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    if-nez v2, :cond_0

    invoke-static {v14}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/flymexx/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    :cond_0
    invoke-virtual {v14}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v16

    const v2, 0x7f040076

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/flymexx/users/EditUserInfoController;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v17

    const v2, 0x7f110126

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f110125

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    invoke-static {v14, v2}, Lcom/android/flymexxlib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/flymexxlib/drawable/CircleFramedDrawable;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/android/flymexx/users/EditUserPhotoController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/flymexx/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/flymexx/users/EditUserInfoController;->mWaitingForActivityResult:Z

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/flymexx/users/EditUserPhotoController;-><init>(Landroid/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/flymexx/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/flymexx/users/EditUserPhotoController;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c03f9

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v7, Lcom/android/flymexx/users/EditUserInfoController$1;

    move-object/from16 v8, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p2

    move-object/from16 v13, p1

    invoke-direct/range {v7 .. v13}, Lcom/android/flymexx/users/EditUserInfoController$1;-><init>(Lcom/android/flymexx/users/EditUserInfoController;Landroid/widget/EditText;Ljava/lang/CharSequence;Lcom/android/flymexx/users/EditUserInfoController$OnContentChangedCallback;Landroid/graphics/drawable/Drawable;Landroid/app/Fragment;)V

    const v3, 0x104000a

    invoke-virtual {v2, v3, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/flymexx/users/EditUserInfoController$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/flymexx/users/EditUserInfoController$2;-><init>(Lcom/android/flymexx/users/EditUserInfoController;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/flymexx/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    return-object v2

    :cond_2
    move-object/from16 v6, p2

    if-nez p2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/flymexx/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, v17

    invoke-static {v14, v2, v0}, Lcom/android/flymexxlib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Lcom/android/flymexxlib/drawable/UserIconDrawable;

    move-result-object v6

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/users/EditUserInfoController;->mWaitingForActivityResult:Z

    iget-object v0, p0, Lcom/android/flymexx/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/flymexx/users/EditUserPhotoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/flymexx/users/EditUserPhotoController;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v1, "pending_photo"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/flymexx/users/EditUserPhotoController;->loadNewUserPhotoBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    :cond_0
    const-string/jumbo v1, "awaiting_result"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/flymexx/users/EditUserInfoController;->mWaitingForActivityResult:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/flymexx/users/EditUserPhotoController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/flymexx/users/EditUserPhotoController;

    invoke-virtual {v1}, Lcom/android/flymexx/users/EditUserPhotoController;->saveNewUserPhotoBitmap()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "pending_photo"

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/flymexx/users/EditUserInfoController;->mWaitingForActivityResult:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "awaiting_result"

    iget-boolean v2, p0, Lcom/android/flymexx/users/EditUserInfoController;->mWaitingForActivityResult:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public startingActivityForResult()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexx/users/EditUserInfoController;->mWaitingForActivityResult:Z

    return-void
.end method
