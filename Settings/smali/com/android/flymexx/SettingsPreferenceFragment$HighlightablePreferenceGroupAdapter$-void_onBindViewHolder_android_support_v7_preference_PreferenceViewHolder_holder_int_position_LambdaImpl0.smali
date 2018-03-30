.class final synthetic Lcom/android/flymexx/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter$-void_onBindViewHolder_android_support_v7_preference_PreferenceViewHolder_holder_int_position_LambdaImpl0;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onBindViewHolder_android_support_v7_preference_PreferenceViewHolder_holder_int_position_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/flymexx/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;

.field private synthetic val$v:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/flymexx/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/flymexx/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter$-void_onBindViewHolder_android_support_v7_preference_PreferenceViewHolder_holder_int_position_LambdaImpl0;->val$this:Lcom/android/flymexx/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;

    iput-object p2, p0, Lcom/android/flymexx/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter$-void_onBindViewHolder_android_support_v7_preference_PreferenceViewHolder_holder_int_position_LambdaImpl0;->val$v:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter$-void_onBindViewHolder_android_support_v7_preference_PreferenceViewHolder_holder_int_position_LambdaImpl0;->val$this:Lcom/android/flymexx/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;

    iget-object v1, p0, Lcom/android/flymexx/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter$-void_onBindViewHolder_android_support_v7_preference_PreferenceViewHolder_holder_int_position_LambdaImpl0;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;->-com_android_settings_SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter_lambda$1(Landroid/view/View;)V

    return-void
.end method
