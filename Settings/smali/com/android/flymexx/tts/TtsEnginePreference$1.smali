.class Lcom/android/flymexx/tts/TtsEnginePreference$1;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/tts/TtsEnginePreference;
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

    iput-object p1, p0, Lcom/android/flymexx/tts/TtsEnginePreference$1;->this$0:Lcom/android/flymexx/tts/TtsEnginePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/tts/TtsEnginePreference$1;->this$0:Lcom/android/flymexx/tts/TtsEnginePreference;

    invoke-static {v0, p1, p2}, Lcom/android/flymexx/tts/TtsEnginePreference;->-wrap1(Lcom/android/flymexx/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
