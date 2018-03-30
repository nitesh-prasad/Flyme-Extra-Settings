.class public Lcom/android/flymexx/notification/IncreasingRingVolumePreference;
.super Landroid/support/v7/preference/Preference;
.source "IncreasingRingVolumePreference.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/notification/IncreasingRingVolumePreference$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/flymexx/notification/IncreasingRingVolumePreference$Callback;

.field private mHandler:Landroid/os/Handler;

.field private final mMainHandler:Landroid/os/Handler;

.field private mRampUpTimeSeekBar:Landroid/widget/SeekBar;

.field private mRampUpTimeValue:Landroid/widget/TextView;

.field private mRingtone:Landroid/media/Ringtone;

.field private mStartVolumeSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mMainHandler:Landroid/os/Handler;

    const v0, 0x7f0400d5

    invoke-virtual {p0, v0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->setLayoutResource(I)V

    invoke-direct {p0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->initHandler()V

    return-void
.end method

.method private initHandler()V
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "IncreasingRingMinVolumePreference.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private isSamplePlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onInitSample()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    iget-object v0, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    iget-object v0, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    iget-object v2, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    const/16 v2, 0xc0

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    :cond_0
    return-void
.end method

.method private onSetVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0, p1}, Landroid/media/Ringtone;->setVolume(F)V

    :cond_0
    return-void
.end method

.method private onStartSample(F)V
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->isSamplePlaying()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mCallback:Lcom/android/flymexx/notification/IncreasingRingVolumePreference$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mCallback:Lcom/android/flymexx/notification/IncreasingRingVolumePreference$Callback;

    invoke-interface {v1}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference$Callback;->onStartingSample()V

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1, p1}, Landroid/media/Ringtone;->setVolume(F)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IncreasingRingMinVolumePreference"

    const-string/jumbo v2, "Error playing ringtone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onStopSample()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    return-void
.end method

.method private postStartSample(I)V
    .locals 8

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->isSamplePlaying()Z

    move-result v0

    iget-object v1, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    if-eqz v0, :cond_1

    const/16 v1, 0x3e8

    :goto_0
    int-to-long v6, v1

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private postStopSample()V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    const/high16 v1, 0x447a0000    # 1000.0f

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->onStartSample(F)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->onStopSample()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->onInitSample()V

    goto :goto_0

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->onSetVolume(F)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onActivityResume()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->initHandler()V

    return-void
.end method

.method public onActivityStop()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->postStopSample()V

    iget-object v0, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    iput-object v1, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    invoke-direct {p0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->initHandler()V

    const v4, 0x7f1101ba

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    if-ne v2, v4, :cond_0

    return-void

    :cond_0
    iput-object v2, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    const v4, 0x7f1101bd

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mRampUpTimeSeekBar:Landroid/widget/SeekBar;

    const v4, 0x7f1101bc

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mRampUpTimeValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "increasing_ring_start_vol"

    const v5, 0x3dcccccd    # 0.1f

    invoke-static {v0, v4, v5}, Lcyanogenmod/providers/CMSettings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    const-string/jumbo v4, "increasing_ring_ramp_up_time"

    const/16 v5, 0xa

    invoke-static {v0, v4, v5}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v4, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v4, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mRampUpTimeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v4, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mRampUpTimeSeekBar:Landroid/widget/SeekBar;

    div-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v4, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mRampUpTimeValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    mul-int/lit16 v6, v1, 0x3e8

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v2, :cond_1

    const-string/jumbo v2, "increasing_ring_start_vol"

    int-to-float v3, p2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-static {v0, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mRampUpTimeSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v2, :cond_0

    add-int/lit8 v2, p2, 0x1

    mul-int/lit8 v1, v2, 0x5

    iget-object v2, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mRampUpTimeValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    mul-int/lit16 v4, v1, 0x3e8

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    const-string/jumbo v2, "increasing_ring_ramp_up_time"

    invoke-static {v0, v2, v1}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->postStartSample(I)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/flymexx/notification/IncreasingRingVolumePreference$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mCallback:Lcom/android/flymexx/notification/IncreasingRingVolumePreference$Callback;

    return-void
.end method

.method public stopSample()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/flymexx/notification/IncreasingRingVolumePreference;->postStopSample()V

    :cond_0
    return-void
.end method
