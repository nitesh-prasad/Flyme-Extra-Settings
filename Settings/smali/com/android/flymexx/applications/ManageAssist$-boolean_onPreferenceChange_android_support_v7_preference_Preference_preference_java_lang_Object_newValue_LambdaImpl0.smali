.class final synthetic Lcom/android/flymexx/applications/ManageAssist$-boolean_onPreferenceChange_android_support_v7_preference_Preference_preference_java_lang_Object_newValue_LambdaImpl0;
.super Ljava/lang/Object;
.source "ManageAssist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/applications/ManageAssist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-boolean_onPreferenceChange_android_support_v7_preference_Preference_preference_java_lang_Object_newValue_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/flymexx/applications/ManageAssist;


# direct methods
.method public synthetic constructor <init>(Lcom/android/flymexx/applications/ManageAssist;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/flymexx/applications/ManageAssist$-boolean_onPreferenceChange_android_support_v7_preference_Preference_preference_java_lang_Object_newValue_LambdaImpl0;->val$this:Lcom/android/flymexx/applications/ManageAssist;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageAssist$-boolean_onPreferenceChange_android_support_v7_preference_Preference_preference_java_lang_Object_newValue_LambdaImpl0;->val$this:Lcom/android/flymexx/applications/ManageAssist;

    invoke-virtual {v0}, Lcom/android/flymexx/applications/ManageAssist;->-com_android_settings_applications_ManageAssist_lambda$1()V

    return-void
.end method
