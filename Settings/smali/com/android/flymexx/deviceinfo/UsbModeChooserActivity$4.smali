.class Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$4;
.super Ljava/lang/Object;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;

.field final synthetic val$disallowedByAdmin:Z

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;

    iput-boolean p2, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$4;->val$disallowedByAdmin:Z

    iput p3, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$4;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$4;->val$disallowedByAdmin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->-get2(Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;

    iget-object v1, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;

    invoke-static {v1}, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->-get2(Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexxlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->-get0(Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;)Lcom/android/flymexx/deviceinfo/UsbBackend;

    move-result-object v0

    iget v1, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$4;->val$mode:I

    invoke-virtual {v0, v1}, Lcom/android/flymexx/deviceinfo/UsbBackend;->setMode(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->-get1(Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v0}, Lcom/android/flymexx/deviceinfo/UsbModeChooserActivity;->finish()V

    return-void
.end method
