.class Lcom/android/flymexx/inputmethod/PhysicalKeyboardFragment$4;
.super Ljava/lang/Object;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/inputmethod/PhysicalKeyboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/inputmethod/PhysicalKeyboardFragment;


# direct methods
.method constructor <init>(Lcom/android/flymexx/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/flymexx/inputmethod/PhysicalKeyboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v3, "auto_replace"

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/flymexx/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/flymexx/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/flymexx/inputmethod/PhysicalKeyboardFragment;->-wrap0(Lcom/android/flymexx/inputmethod/PhysicalKeyboardFragment;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "auto_replace"

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return v2

    :cond_2
    const-string/jumbo v3, "auto_caps"

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/flymexx/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/flymexx/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/flymexx/inputmethod/PhysicalKeyboardFragment;->-wrap0(Lcom/android/flymexx/inputmethod/PhysicalKeyboardFragment;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "auto_caps"

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v2

    :cond_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "auto_punctuate"

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/flymexx/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/flymexx/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/flymexx/inputmethod/PhysicalKeyboardFragment;->-wrap0(Lcom/android/flymexx/inputmethod/PhysicalKeyboardFragment;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "auto_punctuate"

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    move v1, v2

    :cond_5
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
