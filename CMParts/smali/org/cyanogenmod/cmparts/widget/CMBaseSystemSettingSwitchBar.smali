.class public Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;
.super Ljava/lang/Object;
.source "CMBaseSystemSettingSwitchBar.java"

# interfaces
.implements Lorg/cyanogenmod/cmparts/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;
    }
.end annotation


# instance fields
.field private final mCallback:Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;

.field private mContext:Landroid/content/Context;

.field private final mDefaultState:I

.field private mListeningToOnSwitchChange:Z

.field private final mSettingKey:Ljava/lang/String;

.field private mStateMachineEvent:Z

.field private mSwitchBar:Lorg/cyanogenmod/cmparts/widget/SwitchBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/cyanogenmod/cmparts/widget/SwitchBar;Ljava/lang/String;ZLorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mSwitchBar:Lorg/cyanogenmod/cmparts/widget/SwitchBar;

    iput-object p3, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mSettingKey:Ljava/lang/String;

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mDefaultState:I

    iput-object p5, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mCallback:Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->setupSwitchBar()V

    return-void
.end method

.method private setSwitchBarChecked(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mStateMachineEvent:Z

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mSwitchBar:Lorg/cyanogenmod/cmparts/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->setChecked(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mStateMachineEvent:Z

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mCallback:Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mCallback:Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;

    invoke-interface {v0, p1}, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;->onEnablerChanged(Z)V

    :cond_0
    return-void
.end method

.method private setSwitchState()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mSettingKey:Ljava/lang/String;

    iget v3, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mDefaultState:I

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v4, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mStateMachineEvent:Z

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->setSwitchBarChecked(Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mStateMachineEvent:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onSettingsChanged(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->setSwitchState()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mSettingKey:Ljava/lang/String;

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mCallback:Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mCallback:Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;

    invoke-interface {v0, p2}, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;->onEnablerChanged(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mSwitchBar:Lorg/cyanogenmod/cmparts/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->removeOnSwitchChangeListener(Lorg/cyanogenmod/cmparts/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcyanogenmod/preference/SettingsHelper;->get(Landroid/content/Context;)Lcyanogenmod/preference/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcyanogenmod/preference/SettingsHelper;->stopWatching(Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    :cond_0
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mSwitchBar:Lorg/cyanogenmod/cmparts/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->addOnSwitchChangeListener(Lorg/cyanogenmod/cmparts/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcyanogenmod/preference/SettingsHelper;->get(Landroid/content/Context;)Lcyanogenmod/preference/SettingsHelper;

    move-result-object v0

    new-array v1, v4, [Landroid/net/Uri;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mSettingKey:Ljava/lang/String;

    invoke-static {v2}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcyanogenmod/preference/SettingsHelper;->startWatching(Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;[Landroid/net/Uri;)V

    iput-boolean v4, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    :cond_0
    return-void
.end method

.method public setupSwitchBar()V
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->setSwitchState()V

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mSwitchBar:Lorg/cyanogenmod/cmparts/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->addOnSwitchChangeListener(Lorg/cyanogenmod/cmparts/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mSwitchBar:Lorg/cyanogenmod/cmparts/widget/SwitchBar;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->show()V

    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mSwitchBar:Lorg/cyanogenmod/cmparts/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->removeOnSwitchChangeListener(Lorg/cyanogenmod/cmparts/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/CMBaseSystemSettingSwitchBar;->mSwitchBar:Lorg/cyanogenmod/cmparts/widget/SwitchBar;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->hide()V

    return-void
.end method
