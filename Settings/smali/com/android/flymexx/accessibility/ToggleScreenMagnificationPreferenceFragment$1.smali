.class Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ToggleScreenMagnificationPreferenceFragment.java"

# interfaces
.implements Lcom/android/flymexx/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/flymexx/widget/ToggleSwitch;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v0, v0, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/flymexx/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "checked"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v1, p0, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v1, v1, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/flymexx/accessibility/ToggleScreenMagnificationPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return v0
.end method
