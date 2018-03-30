.class Lcom/android/flymexx/tts/TtsEnginePreference$2;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/tts/TtsEnginePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/tts/TtsEnginePreference;


# direct methods
.method constructor <init>(Lcom/android/flymexx/tts/TtsEnginePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/tts/TtsEnginePreference$2;->this$0:Lcom/android/flymexx/tts/TtsEnginePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v3, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "name"

    iget-object v1, p0, Lcom/android/flymexx/tts/TtsEnginePreference$2;->this$0:Lcom/android/flymexx/tts/TtsEnginePreference;

    invoke-static {v1}, Lcom/android/flymexx/tts/TtsEnginePreference;->-get0(Lcom/android/flymexx/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "label"

    iget-object v1, p0, Lcom/android/flymexx/tts/TtsEnginePreference$2;->this$0:Lcom/android/flymexx/tts/TtsEnginePreference;

    invoke-static {v1}, Lcom/android/flymexx/tts/TtsEnginePreference;->-get0(Lcom/android/flymexx/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/flymexx/tts/TtsEnginePreference$2;->this$0:Lcom/android/flymexx/tts/TtsEnginePreference;

    invoke-static {v0}, Lcom/android/flymexx/tts/TtsEnginePreference;->-get2(Lcom/android/flymexx/tts/TtsEnginePreference;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "voices"

    iget-object v1, p0, Lcom/android/flymexx/tts/TtsEnginePreference$2;->this$0:Lcom/android/flymexx/tts/TtsEnginePreference;

    invoke-static {v1}, Lcom/android/flymexx/tts/TtsEnginePreference;->-get2(Lcom/android/flymexx/tts/TtsEnginePreference;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/tts/TtsEnginePreference$2;->this$0:Lcom/android/flymexx/tts/TtsEnginePreference;

    invoke-static {v0}, Lcom/android/flymexx/tts/TtsEnginePreference;->-get1(Lcom/android/flymexx/tts/TtsEnginePreference;)Lcom/android/flymexx/SettingsActivity;

    move-result-object v0

    const-class v1, Lcom/android/flymexx/tts/TtsEngineSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/flymexx/tts/TtsEnginePreference$2;->this$0:Lcom/android/flymexx/tts/TtsEnginePreference;

    invoke-static {v4}, Lcom/android/flymexx/tts/TtsEnginePreference;->-get0(Lcom/android/flymexx/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/flymexx/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method
