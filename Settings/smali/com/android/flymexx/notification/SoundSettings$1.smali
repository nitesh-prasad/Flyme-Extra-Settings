.class Lcom/android/flymexx/notification/SoundSettings$1;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/flymexx/notification/IncreasingRingVolumePreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/flymexx/notification/SoundSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/notification/SoundSettings$1;->this$0:Lcom/android/flymexx/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartingSample()V
    .locals 4

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings$1;->this$0:Lcom/android/flymexx/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/flymexx/notification/SoundSettings;->-get6(Lcom/android/flymexx/notification/SoundSettings;)Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;->stopSample()V

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings$1;->this$0:Lcom/android/flymexx/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/flymexx/notification/SoundSettings;->-get2(Lcom/android/flymexx/notification/SoundSettings;)Lcom/android/flymexx/notification/SoundSettings$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/flymexx/notification/SoundSettings$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings$1;->this$0:Lcom/android/flymexx/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/flymexx/notification/SoundSettings;->-get2(Lcom/android/flymexx/notification/SoundSettings;)Lcom/android/flymexx/notification/SoundSettings$H;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/flymexx/notification/SoundSettings$H;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
