.class final Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/flymexx/notification/VolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Landroid/preference/SeekBarVolumizer;

.field final synthetic this$0:Lcom/android/flymexx/notification/SoundSettings;


# direct methods
.method private constructor <init>(Lcom/android/flymexx/notification/SoundSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/flymexx/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexx/notification/SoundSettings;Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/android/flymexx/notification/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 4

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/flymexx/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/flymexx/notification/SoundSettings;->-get3(Lcom/android/flymexx/notification/SoundSettings;)Lcom/android/flymexx/notification/IncreasingRingVolumePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/flymexx/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/flymexx/notification/SoundSettings;->-get3(Lcom/android/flymexx/notification/SoundSettings;)Lcom/android/flymexx/notification/IncreasingRingVolumePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->stopSample()V

    :cond_1
    iput-object p1, p0, Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/flymexx/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/flymexx/notification/SoundSettings;->-get2(Lcom/android/flymexx/notification/SoundSettings;)Lcom/android/flymexx/notification/SoundSettings$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/flymexx/notification/SoundSettings$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/flymexx/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/flymexx/notification/SoundSettings;->-get2(Lcom/android/flymexx/notification/SoundSettings;)Lcom/android/flymexx/notification/SoundSettings$H;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/flymexx/notification/SoundSettings$H;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 0

    return-void
.end method

.method public stopSample()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_0
    return-void
.end method
