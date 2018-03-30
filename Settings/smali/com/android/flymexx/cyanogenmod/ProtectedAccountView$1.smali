.class Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$1;
.super Ljava/lang/Object;
.source "ProtectedAccountView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->postOnCheckPasswordResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$1;->this$0:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    iput-boolean p2, p0, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-boolean v3, p0, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$1;->val$success:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$1;->this$0:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    invoke-static {v3}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->-get0(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$1;->this$0:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    invoke-static {v3}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->-get0(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v3, "pattern_lock_protected_apps"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, p0, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$1;->this$0:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    invoke-static {v3}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->-get2(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;)Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$1;->this$0:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    invoke-static {v3}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->-get2(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;)Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;->onNotifyAccountReset()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$1;->this$0:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    invoke-static {v3}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->-get0(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$1;->this$0:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v4}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0256

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$1;->this$0:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    invoke-static {v3}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->-get3(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;)Landroid/widget/EditText;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
