.class Lcom/android/flymexx/accessibility/CaptionPropertiesFragment$2;
.super Ljava/lang/Object;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Lcom/android/flymexx/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;


# direct methods
.method constructor <init>(Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/flymexx/widget/ToggleSwitch;Z)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;

    invoke-static {v0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->-get1(Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;)Lcom/android/flymexx/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/flymexx/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accessibility_captioning_enabled"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;

    invoke-static {v0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;

    invoke-static {v0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->-get0(Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object v2

    if-eqz p2, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method
