.class Lcom/android/flymexx/applications/LockPatternActivity$3;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/applications/LockPatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/applications/LockPatternActivity;


# direct methods
.method constructor <init>(Lcom/android/flymexx/applications/LockPatternActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/applications/LockPatternActivity$3;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/flymexx/applications/LockPatternActivity$3;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    iget-boolean v3, v3, Lcom/android/flymexx/applications/LockPatternActivity;->mConfirming:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/flymexx/applications/LockPatternActivity$3;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    invoke-virtual {v3}, Lcom/android/flymexx/applications/LockPatternActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v3, "pattern_lock_protected_apps"

    iget-object v4, p0, Lcom/android/flymexx/applications/LockPatternActivity$3;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    iget-object v4, v4, Lcom/android/flymexx/applications/LockPatternActivity;->mPatternHash:[B

    invoke-static {v4, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, p0, Lcom/android/flymexx/applications/LockPatternActivity$3;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/flymexx/applications/LockPatternActivity;->setResult(I)V

    iget-object v3, p0, Lcom/android/flymexx/applications/LockPatternActivity$3;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    invoke-virtual {v3}, Lcom/android/flymexx/applications/LockPatternActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/flymexx/applications/LockPatternActivity$3;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/flymexx/applications/LockPatternActivity;->mConfirming:Z

    iget-object v3, p0, Lcom/android/flymexx/applications/LockPatternActivity$3;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    iget-object v3, v3, Lcom/android/flymexx/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/flymexx/applications/LockPatternActivity$3;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    invoke-virtual {v4}, Lcom/android/flymexx/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c03bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/flymexx/applications/LockPatternActivity$3;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    iget-object v3, v3, Lcom/android/flymexx/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    iget-object v3, p0, Lcom/android/flymexx/applications/LockPatternActivity$3;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    iget-object v3, v3, Lcom/android/flymexx/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/flymexx/applications/LockPatternActivity$3;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    invoke-virtual {v4}, Lcom/android/flymexx/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c07d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/flymexx/applications/LockPatternActivity$3;->this$0:Lcom/android/flymexx/applications/LockPatternActivity;

    invoke-virtual {v3}, Lcom/android/flymexx/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c07d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
