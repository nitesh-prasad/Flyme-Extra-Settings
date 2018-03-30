.class Lcom/android/flymexx/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/flymexx/ApnSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/flymexx/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexx/ApnSettings;Lcom/android/flymexx/ApnSettings$RestoreApnUiHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/flymexx/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/flymexx/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/flymexx/ApnSettings;

    invoke-virtual {v1}, Lcom/android/flymexx/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lcom/android/flymexx/ApnSettings;->-set0(Z)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/flymexx/ApnSettings;

    invoke-static {v1}, Lcom/android/flymexx/ApnSettings;->-wrap2(Lcom/android/flymexx/ApnSettings;)V

    iget-object v1, p0, Lcom/android/flymexx/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/flymexx/ApnSettings;

    invoke-virtual {v1}, Lcom/android/flymexx/ApnSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-static {v2}, Lcom/android/flymexx/ApnSettings;->-set0(Z)Z

    iget-object v1, p0, Lcom/android/flymexx/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/flymexx/ApnSettings;

    iget-object v2, p0, Lcom/android/flymexx/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/flymexx/ApnSettings;

    invoke-static {v2}, Lcom/android/flymexx/ApnSettings;->-get1(Lcom/android/flymexx/ApnSettings;)Z

    move-result v2

    const/16 v3, 0x3e9

    invoke-virtual {v1, v3, v2}, Lcom/android/flymexx/ApnSettings;->removeDialog(IZ)V

    iget-object v1, p0, Lcom/android/flymexx/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/flymexx/ApnSettings;

    invoke-virtual {v1}, Lcom/android/flymexx/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0739

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
