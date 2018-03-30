.class Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$3;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->highlightPreference(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;I)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$3;->this$0:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;

    iput p2, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$3;->this$0:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->-get0(Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;)Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;

    move-result-object v0

    iget v1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$3;->val$position:I

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;->highlight(I)V

    return-void
.end method
