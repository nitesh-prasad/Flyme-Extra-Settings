.class public Lcom/android/flymexx/ShowAdminSupportDetailsDialog;
.super Landroid/app/Activity;
.source "ShowAdminSupportDetailsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mDialogView:Landroid/view/View;

.field private mEnforcedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getAdminDetailsFromIntent(Landroid/content/Intent;)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    return-object v0
.end method

.method private initializeDialogViews(Landroid/view/View;Landroid/content/ComponentName;I)V
    .locals 6

    if-eqz p2, :cond_0

    invoke-static {p0, p2}, Lcom/android/flymexxlib/RestrictedLockUtils;->isAdminInCurrentUserOrProfile(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0, p3}, Lcom/android/flymexxlib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, p2, v5, p3}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/ShowAdminSupportDetailsDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/flymexx/ShowAdminSupportDetailsDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v4, 0x7f11006c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_1
    new-instance v4, Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v4, p2, p3}, Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    const/4 v5, 0x1

    invoke-static {p0, p1, v4, v5}, Lcom/android/flymexx/ShowAdminSupportDetailsDialog;->setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;Z)V

    return-void

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v4, "AdminSupportDialog"

    const-string/jumbo v5, "Missing reciever info"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;Z)V
    .locals 5

    const/4 v4, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v3, p2, Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-eqz v3, :cond_3

    const-string/jumbo v3, "device_policy"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p2, Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-static {p0, v3}, Lcom/android/flymexxlib/RestrictedLockUtils;->isAdminInCurrentUserOrProfile(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p2, Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    invoke-static {p0, v3}, Lcom/android/flymexxlib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p2, Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    const/16 v4, -0x2710

    if-ne v3, v4, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iput v3, p2, Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    :cond_1
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x3e8

    invoke-static {v3, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p2, Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iget v4, p2, Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/DevicePolicyManager;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    const v3, 0x7f11006a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    const v3, 0x7f11006b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/flymexx/ShowAdminSupportDetailsDialog$1;

    invoke-direct {v4, p2, p0, p3}, Lcom/android/flymexx/ShowAdminSupportDetailsDialog$1;-><init>(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;Landroid/app/Activity;Z)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_4
    iput-object v4, p2, Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/ShowAdminSupportDetailsDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/flymexx/ShowAdminSupportDetailsDialog;->getAdminDetailsFromIntent(Landroid/content/Intent;)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/ShowAdminSupportDetailsDialog;->mEnforcedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04001e

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/ShowAdminSupportDetailsDialog;->mDialogView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/flymexx/ShowAdminSupportDetailsDialog;->mDialogView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/flymexx/ShowAdminSupportDetailsDialog;->mEnforcedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v2, v2, Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/flymexx/ShowAdminSupportDetailsDialog;->mEnforcedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    iget v3, v3, Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/flymexx/ShowAdminSupportDetailsDialog;->initializeDialogViews(Landroid/view/View;Landroid/content/ComponentName;I)V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c03bc

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/ShowAdminSupportDetailsDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/flymexx/ShowAdminSupportDetailsDialog;->finish()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/flymexx/ShowAdminSupportDetailsDialog;->getAdminDetailsFromIntent(Landroid/content/Intent;)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/ShowAdminSupportDetailsDialog;->mEnforcedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1, v0}, Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/flymexx/ShowAdminSupportDetailsDialog;->mEnforcedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v1, p0, Lcom/android/flymexx/ShowAdminSupportDetailsDialog;->mDialogView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/flymexx/ShowAdminSupportDetailsDialog;->mEnforcedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v2, v2, Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/flymexx/ShowAdminSupportDetailsDialog;->mEnforcedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    iget v3, v3, Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/flymexx/ShowAdminSupportDetailsDialog;->initializeDialogViews(Landroid/view/View;Landroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method
