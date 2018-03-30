.class public Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;
.super Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.source "TouchscreenGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;
    }
.end annotation


# instance fields
.field private mTouchscreenGestures:[Lcyanogenmod/hardware/TouchscreenGesture;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;)[Lcyanogenmod/hardware/TouchscreenGesture;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->mTouchscreenGestures:[Lcyanogenmod/hardware/TouchscreenGesture;

    return-object v0
.end method

.method static synthetic -wrap0(Lcyanogenmod/hardware/TouchscreenGesture;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->buildPreferenceKey(Lcyanogenmod/hardware/TouchscreenGesture;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;[Lcyanogenmod/hardware/TouchscreenGesture;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->sendUpdateBroadcast(Landroid/content/Context;[Lcyanogenmod/hardware/TouchscreenGesture;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private static buildActionList(Landroid/content/Context;[Lcyanogenmod/hardware/TouchscreenGesture;)[I
    .locals 10

    array-length v6, p1

    new-array v5, v6, [I

    invoke-static {p0, p1}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->getDefaultGestureActions(Landroid/content/Context;[Lcyanogenmod/hardware/TouchscreenGesture;)[I

    move-result-object v0

    invoke-static {p0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const/4 v6, 0x0

    array-length v7, p1

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v2, p1, v6

    invoke-static {v2}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->buildPreferenceKey(Lcyanogenmod/hardware/TouchscreenGesture;)Ljava/lang/String;

    move-result-object v3

    iget v8, v2, Lcyanogenmod/hardware/TouchscreenGesture;->id:I

    aget v8, v0, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v8, v2, Lcyanogenmod/hardware/TouchscreenGesture;->id:I

    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method private static buildPreferenceKey(Lcyanogenmod/hardware/TouchscreenGesture;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "touchscreen_gesture_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcyanogenmod/hardware/TouchscreenGesture;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultGestureActions(Landroid/content/Context;[Lcyanogenmod/hardware/TouchscreenGesture;)[I
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    array-length v2, v0

    array-length v3, p1

    if-lt v2, v3, :cond_0

    return-object v0

    :cond_0
    array-length v2, p1

    new-array v1, v2, [I

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy([II[III)V

    return-object v1
.end method

.method private initTouchscreenGestures()V
    .locals 10

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v2

    invoke-virtual {v2}, Lcyanogenmod/hardware/CMHardwareManager;->getTouchscreenGestures()[Lcyanogenmod/hardware/TouchscreenGesture;

    move-result-object v3

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->mTouchscreenGestures:[Lcyanogenmod/hardware/TouchscreenGesture;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->mTouchscreenGestures:[Lcyanogenmod/hardware/TouchscreenGesture;

    invoke-static {v3, v4}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->getDefaultGestureActions(Landroid/content/Context;[Lcyanogenmod/hardware/TouchscreenGesture;)[I

    move-result-object v0

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->mTouchscreenGestures:[Lcyanogenmod/hardware/TouchscreenGesture;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    new-instance v7, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    iget v9, v1, Lcyanogenmod/hardware/TouchscreenGesture;->id:I

    aget v9, v0, v9

    invoke-direct {v7, p0, v8, v1, v9}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;-><init>(Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;Landroid/content/Context;Lcyanogenmod/hardware/TouchscreenGesture;I)V

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static isTouchscreenGesturesSupported(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v1

    return v1
.end method

.method public static restoreTouchscreenGestureStates(Landroid/content/Context;)V
    .locals 8

    const/4 v5, 0x0

    invoke-static {p0}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->isTouchscreenGesturesSupported(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v3

    invoke-virtual {v3}, Lcyanogenmod/hardware/CMHardwareManager;->getTouchscreenGestures()[Lcyanogenmod/hardware/TouchscreenGesture;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->buildActionList(Landroid/content/Context;[Lcyanogenmod/hardware/TouchscreenGesture;)[I

    move-result-object v0

    array-length v7, v2

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v1, v2, v6

    iget v4, v1, Lcyanogenmod/hardware/TouchscreenGesture;->id:I

    aget v4, v0, v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v1, v4}, Lcyanogenmod/hardware/CMHardwareManager;->setTouchscreenGestureEnabled(Lcyanogenmod/hardware/TouchscreenGesture;Z)Z

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    invoke-static {p0, v2}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->sendUpdateBroadcast(Landroid/content/Context;[Lcyanogenmod/hardware/TouchscreenGesture;)V

    return-void
.end method

.method private static sendUpdateBroadcast(Landroid/content/Context;[Lcyanogenmod/hardware/TouchscreenGesture;)V
    .locals 8

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "org.cyanogenmod.cmparts.gestures.UPDATE_SETTINGS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    array-length v4, p1

    new-array v3, v4, [I

    invoke-static {p0, p1}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->buildActionList(Landroid/content/Context;[Lcyanogenmod/hardware/TouchscreenGesture;)[I

    move-result-object v0

    const/4 v4, 0x0

    array-length v5, p1

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, p1, v4

    iget v6, v1, Lcyanogenmod/hardware/TouchscreenGesture;->id:I

    iget v7, v1, Lcyanogenmod/hardware/TouchscreenGesture;->keycode:I

    aput v7, v3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "keycode_mappings"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string/jumbo v4, "action_mappings"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050014

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->isTouchscreenGesturesSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->initTouchscreenGestures()V

    :cond_0
    return-void
.end method
