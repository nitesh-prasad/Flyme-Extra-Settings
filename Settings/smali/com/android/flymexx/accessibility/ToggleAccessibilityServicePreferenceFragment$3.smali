.class Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment$3;
.super Ljava/lang/Object;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Lcom/android/flymexx/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/flymexx/widget/ToggleSwitch;Z)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object v0, v0, Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/flymexx/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v0}, Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "checked"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {v0, v2}, Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment;->-wrap0(Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object v0, v0, Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/flymexx/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v0}, Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "checked"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment;->-wrap0(Lcom/android/flymexx/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V

    goto :goto_0
.end method
