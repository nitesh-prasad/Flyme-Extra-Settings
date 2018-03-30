.class public Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;
.super Landroid/app/Activity;
.source "UsbModeChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$1;
    }
.end annotation


# static fields
.field public static final DEFAULT_MODES:[I


# instance fields
.field private mBackend:Lcom/android/flymexx/deviceinfo/UsbBackend;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

.field private mEnforcedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;)Lcom/android/flymexx/deviceinfo/UsbBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/flymexx/deviceinfo/UsbBackend;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$1;-><init>(Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private static getSummary(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const v0, 0x7f0c0d75

    return v0

    :pswitch_2
    const v0, 0x7f0c0d77

    return v0

    :pswitch_3
    const v0, 0x7f0c0d79

    return v0

    :pswitch_4
    const v0, 0x7f0c0d7b

    return v0

    :pswitch_5
    const v0, 0x7f0c0d7d

    return v0

    :pswitch_6
    const v0, 0x7f0c0d80

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private static getTitle(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const v0, 0x7f0c0d74

    return v0

    :pswitch_2
    const v0, 0x7f0c0d76

    return v0

    :pswitch_3
    const v0, 0x7f0c0d78

    return v0

    :pswitch_4
    const v0, 0x7f0c0d7a

    return v0

    :pswitch_5
    const v0, 0x7f0c0d7c

    return v0

    :pswitch_6
    const v0, 0x7f0c0d7f

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private inflateOption(IZLandroid/widget/LinearLayout;Z)V
    .locals 6

    iget-object v3, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400ff

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->getTitle(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x1020010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->getSummary(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    if-eqz p4, :cond_0

    iget-object v3, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v3, :cond_1

    invoke-direct {p0, v2, v1, v0}, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->setDisabledByAdmin(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    :cond_0
    new-instance v3, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$4;

    invoke-direct {v3, p0, p4, p1}, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$4;-><init>(Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;ZI)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v3, v2

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    return-void
.end method

.method private setDisabledByAdmin(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v1, :cond_0

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    const v1, 0x7f110210

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/high16 v2, 0x7f0d0000

    invoke-virtual {p0, v2}, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0d7e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f040181

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$2;

    invoke-direct {v4, p0}, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$2;-><init>(Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$3;

    invoke-direct {v4, p0}, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$3;-><init>(Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;)V

    const v5, 0x7f0c03bb

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    iget-object v3, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    const v4, 0x7f1102a7

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string/jumbo v3, "no_usb_file_transfer"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/android/flymexxlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    new-instance v3, Lcom/android/flymexx/deviceinfo/UsbBackend;

    invoke-direct {v3, p0}, Lcom/android/flymexx/deviceinfo/UsbBackend;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/flymexx/deviceinfo/UsbBackend;

    iget-object v3, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/flymexx/deviceinfo/UsbBackend;

    invoke-virtual {v3}, Lcom/android/flymexx/deviceinfo/UsbBackend;->getCurrentMode()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    array-length v3, v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/flymexx/deviceinfo/UsbBackend;

    sget-object v4, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/android/flymexx/deviceinfo/UsbBackend;->isModeSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/flymexx/deviceinfo/UsbBackend;

    sget-object v4, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/android/flymexx/deviceinfo/UsbBackend;->isModeDisallowedBySystem(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v3, v3, v2

    const/16 v4, 0x8

    if-eq v4, v3, :cond_0

    :cond_2
    sget-object v3, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v3, v2

    sget-object v3, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v3, v3, v2

    if-ne v1, v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    iget-object v5, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/flymexx/deviceinfo/UsbBackend;

    sget-object v6, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Lcom/android/flymexx/deviceinfo/UsbBackend;->isModeDisallowed(I)Z

    move-result v5

    invoke-direct {p0, v4, v3, v0, v5}, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;Z)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
