.class public Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;
.super Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;
.source "ButtonBacklightBrightness.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;,
        Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference",
        "<",
        "Landroid/app/AlertDialog;",
        ">;",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;"
    }
.end annotation


# instance fields
.field private mActiveControl:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

.field private mButtonBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

.field private mKeyboardBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

.field private mOriginalTimeout:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mTimeoutBar:Landroid/widget/SeekBar;

.field private mTimeoutContainer:Landroid/view/ViewGroup;

.field private mTimeoutValue:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -set0(Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;)Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mActiveControl:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    return-object p1
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->updateBrightnessPreview()V

    return-void
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->updateTimeoutEnabledState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;

    const v2, 0x7f03001b

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->setDialogLayoutResource(I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->isKeyboardSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    const-string/jumbo v3, "keyboard_brightness"

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;-><init>(Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;Ljava/lang/String;Z)V

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mKeyboardBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mKeyboardBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mActiveControl:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->isButtonSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v2, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    const-string/jumbo v3, "button_brightness"

    invoke-direct {v2, p0, v3, v1, v0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;-><init>(Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;Ljava/lang/String;ZI)V

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mButtonBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mButtonBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mActiveControl:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    :cond_1
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->updateSummary()V

    return-void

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private applyTimeout(I)V
    .locals 3

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "button_backlight_timeout"

    mul-int/lit16 v2, p1, 0x3e8

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private getTimeout()I
    .locals 3

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "button_backlight_timeout"

    const/16 v2, 0x1388

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private getTimeoutString(I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/high16 v2, 0x7f0e0000

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleTimeoutUpdate(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mTimeoutValue:Landroid/widget/TextView;

    const v1, 0x7f080229

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mTimeoutValue:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->getTimeoutString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateBrightnessPreview()V
    .locals 4

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->getDialog()Landroid/content/DialogInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->getDialog()Landroid/content/DialogInterface;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->getDialog()Landroid/content/DialogInterface;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mActiveControl:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mActiveControl:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    goto :goto_0
.end method

.method private updateTimeoutEnabledState()V
    .locals 6

    const/4 v4, 0x0

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mButtonBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mButtonBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v3, v4}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v0

    :goto_0
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mTimeoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mTimeoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public isButtonSupported()Z
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10e0068

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    and-int/lit8 v5, v0, 0x1

    if-nez v5, :cond_0

    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const v5, 0x10e0079

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-lez v5, :cond_3

    const/4 v1, 0x1

    :goto_1
    if-eqz v2, :cond_4

    :goto_2
    return v1

    :cond_1
    and-int/lit8 v5, v0, 0x4

    if-nez v5, :cond_0

    and-int/lit8 v5, v0, 0x8

    if-nez v5, :cond_0

    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    move v1, v4

    goto :goto_2
.end method

.method public isKeyboardSupported()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0x8

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    const v2, 0x7f0c005d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mTimeoutContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0c0060

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    const v2, 0x7f0c005f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mTimeoutValue:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->getTimeout()I

    move-result v2

    iput v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mOriginalTimeout:I

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    iget v3, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mOriginalTimeout:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->handleTimeoutUpdate(I)V

    const v2, 0x7f0c0056

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mButtonBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mButtonBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->init(Landroid/view/ViewGroup;)V

    :goto_0
    const v2, 0x7f0c0062

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mKeyboardBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mKeyboardBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v1}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->init(Landroid/view/ViewGroup;)V

    :goto_1
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mButtonBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mKeyboardBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    if-nez v2, :cond_1

    :cond_0
    const v2, 0x7f0c0061

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mTimeoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onClick(Landroid/app/AlertDialog;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->updateBrightnessPreview()V

    return-void
.end method

.method protected bridge synthetic onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p0, p1, p2}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->onClick(Landroid/app/AlertDialog;I)V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4

    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onDialogClosed(Z)V

    if-nez p1, :cond_0

    iget v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mOriginalTimeout:I

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->applyTimeout(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mButtonBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pre_navbar_button_backlight"

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mButtonBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->applyTimeout(I)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mButtonBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mButtonBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->applyBrightness()V

    :cond_2
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mKeyboardBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mKeyboardBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->applyBrightness()V

    :cond_3
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->updateSummary()V

    return-void
.end method

.method protected onDismissDialog(Landroid/app/AlertDialog;I)Z
    .locals 2

    const/4 v1, 0x5

    const/4 v0, -0x3

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-direct {p0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->applyTimeout(I)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mButtonBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mButtonBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->reset()V

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mKeyboardBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mKeyboardBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->reset()V

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic onDismissDialog(Landroid/content/DialogInterface;I)Z
    .locals 1

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p0, p1, p2}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->onDismissDialog(Landroid/app/AlertDialog;I)Z

    move-result v0

    return v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$1;-><init>(Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;)V

    const v1, 0x7f08017e

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->handleTimeoutUpdate(I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    iget v2, v0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState;->timeout:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mButtonBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mButtonBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    iget v2, v0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState;->button:I

    invoke-virtual {v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->setBrightness(I)V

    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mKeyboardBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mKeyboardBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    iget v2, v0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState;->keyboard:I

    invoke-virtual {v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->setBrightness(I)V

    :cond_1
    return-void

    :cond_2
    invoke-super {p0, p1}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lorg/cyanogenmod/cmparts/widget/CustomDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->getDialog()Landroid/content/DialogInterface;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->getDialog()Landroid/content/DialogInterface;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState;

    invoke-direct {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iput v2, v0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState;->timeout:I

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mButtonBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mButtonBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v3}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    iput v2, v0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState;->button:I

    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mKeyboardBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mKeyboardBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v3}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    iput v2, v0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState;->keyboard:I

    :cond_1
    return-object v0

    :cond_2
    return-object v1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->applyTimeout(I)V

    return-void
.end method

.method public updateSummary()V
    .locals 6

    const v4, 0x7f08022a

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mButtonBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mButtonBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v3}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->getTimeout()I

    move-result v1

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    if-nez v1, :cond_1

    const v2, 0x7f080229

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->setSummary(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->getTimeoutString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f08022b

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mKeyboardBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->mKeyboardBrightness:Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v3}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f08022c

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->setSummary(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;->setSummary(I)V

    goto :goto_0
.end method
