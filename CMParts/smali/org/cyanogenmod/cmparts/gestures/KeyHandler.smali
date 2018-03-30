.class public Lorg/cyanogenmod/cmparts/gestures/KeyHandler;
.super Ljava/lang/Object;
.source "KeyHandler.java"

# interfaces
.implements Lcom/android/internal/os/DeviceKeyHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/gestures/KeyHandler$1;,
        Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;,
        Lorg/cyanogenmod/cmparts/gestures/KeyHandler$TorchModeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActionMapping:Landroid/util/SparseIntArray;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultProximity:Z

.field private final mEventHandler:Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;

.field private final mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximityTimeOut:I

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mProximityWakeSupported:Z

.field private mRearCameraId:Ljava/lang/String;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTorchEnabled:Z

.field private final mUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mActionMapping:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mEventHandler:Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;

    return-object v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -get3(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get4(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mRearCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic -set0(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mTorchEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;I)Landroid/os/Message;
    .locals 1

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->getMessageForAction(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->launchBrowser()V

    return-void
.end method

.method static synthetic -wrap10(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->volumeDown()V

    return-void
.end method

.method static synthetic -wrap11(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->volumeUp()V

    return-void
.end method

.method static synthetic -wrap2(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->launchCamera()V

    return-void
.end method

.method static synthetic -wrap3(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->launchDialer()V

    return-void
.end method

.method static synthetic -wrap4(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->launchEmail()V

    return-void
.end method

.method static synthetic -wrap5(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->launchMessages()V

    return-void
.end method

.method static synthetic -wrap6(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->nextTrack()V

    return-void
.end method

.method static synthetic -wrap7(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->playPauseMusic()V

    return-void
.end method

.method static synthetic -wrap8(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->previousTrack()V

    return-void
.end method

.method static synthetic -wrap9(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->toggleFlashlight()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mActionMapping:Landroid/util/SparseIntArray;

    new-instance v1, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$1;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$1;-><init>(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;)V

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mPowerManager:Landroid/os/PowerManager;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "CMPartsGestureWakeLock"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;

    invoke-direct {v1, p0, v3}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;-><init>(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;)V

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mEventHandler:Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    new-instance v2, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$TorchModeCallback;

    invoke-direct {v2, p0, v3}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$TorchModeCallback;-><init>(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;Lorg/cyanogenmod/cmparts/gestures/KeyHandler$TorchModeCallback;)V

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mEventHandler:Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    const-string/jumbo v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mProximityWakeSupported:Z

    iget-boolean v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mProximityWakeSupported:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f070000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mProximityTimeOut:I

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3f050002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mDefaultProximity:Z

    const-string/jumbo v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "CMPartsProximityWakeLock"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "org.cyanogenmod.cmparts.gestures.UPDATE_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private dispatchMediaKeyWithWakeLockToMediaSession(I)V
    .locals 10

    const/4 v6, 0x0

    const/4 v9, 0x1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v2, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to send media key event"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v7, p1

    move v8, v6

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    invoke-static {v1, v9}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method private doHapticFeedback()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "touchscreen_gesture_haptic_feedback"

    invoke-static {v2, v3, v0}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private getLaunchableIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method private getMessageForAction(I)Landroid/os/Message;
    .locals 3

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mEventHandler:Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    return-object v0
.end method

.method private getRearCameraId()Ljava/lang/String;
    .locals 8

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mRearCameraId:Ljava/lang/String;

    if-nez v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v4}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v0, v6, v5

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mRearCameraId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v4, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mRearCameraId:Ljava/lang/String;

    return-object v4

    :cond_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private hasSetupCompleted()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private launchBrowser()V
    .locals 5

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "cmparts-gesture-wakeup"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    const-string/jumbo v3, "http:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, v1}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->getLaunchableIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->startActivitySafely(Landroid/content/Intent;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->doHapticFeedback()V

    return-void
.end method

.method private launchCamera()V
    .locals 4

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "cyanogenmod.intent.action.SCREEN_CAMERA_GESTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v3, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->doHapticFeedback()V

    return-void
.end method

.method private launchDialer()V
    .locals 5

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "cmparts-gesture-wakeup"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->startActivitySafely(Landroid/content/Intent;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->doHapticFeedback()V

    return-void
.end method

.method private launchEmail()V
    .locals 5

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "cmparts-gesture-wakeup"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    const-string/jumbo v3, "mailto:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, v1}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->getLaunchableIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->startActivitySafely(Landroid/content/Intent;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->doHapticFeedback()V

    return-void
.end method

.method private launchMessages()V
    .locals 7

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, "cmparts-gesture-wakeup"

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sms_default_application"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->startActivitySafely(Landroid/content/Intent;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->doHapticFeedback()V

    :cond_0
    return-void
.end method

.method private nextTrack()V
    .locals 1

    const/16 v0, 0x57

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->dispatchMediaKeyWithWakeLockToMediaSession(I)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->doHapticFeedback()V

    return-void
.end method

.method private playPauseMusic()V
    .locals 1

    const/16 v0, 0x55

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->dispatchMediaKeyWithWakeLockToMediaSession(I)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->doHapticFeedback()V

    return-void
.end method

.method private previousTrack()V
    .locals 1

    const/16 v0, 0x58

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->dispatchMediaKeyWithWakeLockToMediaSession(I)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->doHapticFeedback()V

    return-void
.end method

.method private processEvent(I)V
    .locals 4

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    new-instance v1, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$2;

    invoke-direct {v1, p0, p1}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$2;-><init>(Lorg/cyanogenmod/cmparts/gestures/KeyHandler;I)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method private startActivitySafely(Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    sget-object v2, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No intent passed to startActivitySafely"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/high16 v2, 0x34000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private toggleFlashlight()V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->getRearCameraId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :try_start_0
    iget-object v5, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-boolean v4, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mTorchEnabled:Z

    if-eqz v4, :cond_1

    move v4, v2

    :goto_0
    invoke-virtual {v5, v1, v4}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    iget-boolean v4, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mTorchEnabled:Z

    if-eqz v4, :cond_2

    :goto_1
    iput-boolean v2, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mTorchEnabled:Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->doHapticFeedback()V

    :cond_0
    return-void

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private volumeDown()V
    .locals 4

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->doHapticFeedback()V

    return-void
.end method

.method private volumeUp()V
    .locals 4

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->doHapticFeedback()V

    return-void
.end method


# virtual methods
.method public handleKeyEvent(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mActionMapping:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-eq v5, v4, :cond_1

    :cond_0
    return-object p1

    :cond_1
    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->hasSetupCompleted()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_2

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mEventHandler:Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;

    invoke-virtual {v5, v3}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    :goto_0
    return-object v8

    :cond_3
    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->getMessageForAction(I)Landroid/os/Message;

    move-result-object v1

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "proximity_on_wake"

    iget-boolean v7, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mDefaultProximity:Z

    if-eqz v7, :cond_4

    move v3, v4

    :cond_4
    invoke-static {v5, v6, v3}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_5

    const/4 v2, 0x1

    :goto_1
    iget-boolean v3, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mProximityWakeSupported:Z

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    iget v4, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mProximityTimeOut:I

    mul-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mEventHandler:Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;

    iget v4, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mProximityTimeOut:I

    int-to-long v4, v4

    invoke-virtual {v3, v1, v4, v5}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->processEvent(I)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/gestures/KeyHandler;->mEventHandler:Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;

    invoke-virtual {v3, v1}, Lorg/cyanogenmod/cmparts/gestures/KeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
