.class Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;
.super Landroid/support/v7/preference/ListPreference;
.source "TouchscreenGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchscreenGesturePreference"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGesture:Lcyanogenmod/hardware/TouchscreenGesture;

.field final synthetic this$0:Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;Landroid/content/Context;Lcyanogenmod/hardware/TouchscreenGesture;I)V
    .locals 3

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;->this$0:Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;

    invoke-direct {p0, p2}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;->mGesture:Lcyanogenmod/hardware/TouchscreenGesture;

    invoke-static {p3}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->-wrap0(Lcyanogenmod/hardware/TouchscreenGesture;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;->setKey(Ljava/lang/String;)V

    const v0, 0x7f06004f

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;->setEntries(I)V

    const v0, 0x7f060050

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;->setEntryValues(I)V

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-direct {p0, p4}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;->getIconDrawableResourceForAction(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;->setIcon(I)V

    const-string/jumbo v0, "%s"

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;->setSummary(Ljava/lang/CharSequence;)V

    const v0, 0x7f08035a

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;->setDialogTitle(I)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p3, Lcyanogenmod/hardware/TouchscreenGesture;->name:Ljava/lang/String;

    const-string/jumbo v2, "touchscreen_gesture_%s_title"

    invoke-static {v0, v1, v2}, Lorg/cyanogenmod/cmparts/utils/ResourceUtils;->getLocalizedString(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getIconDrawableResourceForAction(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const v0, 0x7f02006c

    return v0

    :pswitch_0
    const v0, 0x7f020066

    return v0

    :pswitch_1
    const v0, 0x7f020069

    return v0

    :pswitch_2
    const v0, 0x7f020065

    return v0

    :pswitch_3
    const v0, 0x7f020067

    return v0

    :pswitch_4
    const v0, 0x7f020068

    return v0

    :pswitch_5
    const v0, 0x7f02006a

    return v0

    :pswitch_6
    const v0, 0x7f02006d

    return v0

    :pswitch_7
    const v0, 0x7f02006e

    return v0

    :pswitch_8
    const v0, 0x7f02006b

    return v0

    :pswitch_9
    const v0, 0x7f02006f

    return v0

    :pswitch_a
    const v0, 0x7f020070

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 5

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v1

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;->mGesture:Lcyanogenmod/hardware/TouchscreenGesture;

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v4, v2}, Lcyanogenmod/hardware/CMHardwareManager;->setTouchscreenGestureEnabled(Lcyanogenmod/hardware/TouchscreenGesture;Z)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/preference/ListPreference;->persistString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;->getIconDrawableResourceForAction(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;->setIcon(I)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings$TouchscreenGesturePreference;->this$0:Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;

    invoke-static {v2}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->-get0(Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;)[Lcyanogenmod/hardware/TouchscreenGesture;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cyanogenmod/cmparts/gestures/TouchscreenGestureSettings;->-wrap1(Landroid/content/Context;[Lcyanogenmod/hardware/TouchscreenGesture;)V

    const/4 v1, 0x1

    return v1
.end method
