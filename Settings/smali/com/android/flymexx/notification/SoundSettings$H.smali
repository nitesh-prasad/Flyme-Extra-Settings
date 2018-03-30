.class final Lcom/android/flymexx/notification/SoundSettings$H;
.super Landroid/os/Handler;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/notification/SoundSettings;


# direct methods
.method private constructor <init>(Lcom/android/flymexx/notification/SoundSettings;)V
    .locals 1

    iput-object p1, p0, Lcom/android/flymexx/notification/SoundSettings$H;->this$0:Lcom/android/flymexx/notification/SoundSettings;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexx/notification/SoundSettings;Lcom/android/flymexx/notification/SoundSettings$H;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/notification/SoundSettings$H;-><init>(Lcom/android/flymexx/notification/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings$H;->this$0:Lcom/android/flymexx/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/flymexx/notification/SoundSettings;->-get5(Lcom/android/flymexx/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings$H;->this$0:Lcom/android/flymexx/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/flymexx/notification/SoundSettings;->-get4(Lcom/android/flymexx/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings$H;->this$0:Lcom/android/flymexx/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/flymexx/notification/SoundSettings;->-get6(Lcom/android/flymexx/notification/SoundSettings;)Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;->stopSample()V

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings$H;->this$0:Lcom/android/flymexx/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/flymexx/notification/SoundSettings;->-get3(Lcom/android/flymexx/notification/SoundSettings;)Lcom/android/flymexx/notification/IncreasingRingVolumePreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings$H;->this$0:Lcom/android/flymexx/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/flymexx/notification/SoundSettings;->-get3(Lcom/android/flymexx/notification/SoundSettings;)Lcom/android/flymexx/notification/IncreasingRingVolumePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->stopSample()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings$H;->this$0:Lcom/android/flymexx/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/flymexx/notification/SoundSettings;->-wrap2(Lcom/android/flymexx/notification/SoundSettings;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings$H;->this$0:Lcom/android/flymexx/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/flymexx/notification/SoundSettings;->-wrap3(Lcom/android/flymexx/notification/SoundSettings;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings$H;->this$0:Lcom/android/flymexx/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/flymexx/notification/SoundSettings;->-get0(Lcom/android/flymexx/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
