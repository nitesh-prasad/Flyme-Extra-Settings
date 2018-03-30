.class public Lcom/android/flymexx/applications/LockPatternActivity;
.super Landroid/app/Activity;
.source "LockPatternActivity.java"

# interfaces
.implements Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;
.implements Lcom/android/flymexx/fingerprint/FingerprintUiHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/applications/LockPatternActivity$1;,
        Lcom/android/flymexx/applications/LockPatternActivity$2;,
        Lcom/android/flymexx/applications/LockPatternActivity$3;,
        Lcom/android/flymexx/applications/LockPatternActivity$UnlockPatternListener;
    }
.end annotation


# static fields
.field private static TIMEOUT_PREF_KEY:Ljava/lang/String;


# instance fields
.field mAccountView:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

.field mCancel:Landroid/widget/Button;

.field mCancelOnClickListener:Landroid/view/View$OnClickListener;

.field mCancelPatternRunnable:Ljava/lang/Runnable;

.field mConfirming:Z

.field mContinue:Landroid/widget/Button;

.field mContinueOnClickListener:Landroid/view/View$OnClickListener;

.field mCreate:Z

.field mFingerPrintSetUp:Z

.field private mFingerPrintUiHelper:Lcom/android/flymexx/fingerprint/FingerprintUiHelper;

.field mFingerprintIconView:Landroid/widget/ImageView;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field mItem:Landroid/view/MenuItem;

.field mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field mPatternHash:[B

.field mPatternLockHeader:Landroid/widget/TextView;

.field mRetry:I

.field mRetryLocked:Z

.field mRetryPattern:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/flymexx/applications/LockPatternActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/applications/LockPatternActivity;->resetPatternState(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/applications/LockPatternActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->setPatternTimeout()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/flymexx/applications/LockPatternActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->switchToAccount()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "retry_timeout"

    sput-object v0, Lcom/android/flymexx/applications/LockPatternActivity;->TIMEOUT_PREF_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v1, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mRetry:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mRetryPattern:Z

    iput-boolean v1, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mConfirming:Z

    iput-boolean v1, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    iput-boolean v1, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mRetryLocked:Z

    new-instance v0, Lcom/android/flymexx/applications/LockPatternActivity$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/applications/LockPatternActivity$1;-><init>(Lcom/android/flymexx/applications/LockPatternActivity;)V

    iput-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/flymexx/applications/LockPatternActivity$2;

    invoke-direct {v0, p0}, Lcom/android/flymexx/applications/LockPatternActivity$2;-><init>(Lcom/android/flymexx/applications/LockPatternActivity;)V

    iput-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/flymexx/applications/LockPatternActivity$3;

    invoke-direct {v0, p0}, Lcom/android/flymexx/applications/LockPatternActivity$3;-><init>(Lcom/android/flymexx/applications/LockPatternActivity;)V

    iput-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mContinueOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private isRetryLocked()Z
    .locals 10

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcom/android/flymexx/applications/LockPatternActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v6, Lcom/android/flymexx/applications/LockPatternActivity;->TIMEOUT_PREF_KEY:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-interface {v0, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long v6, v4, v2

    const-wide/16 v8, 0x7530

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mRetryLocked:Z

    iget-boolean v1, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mRetryLocked:Z

    return v1
.end method

.method private resetPatternState(Z)V
    .locals 8

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v5, "pattern_lock_protected_apps"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v5, "recreate_pattern_lock"

    invoke-virtual {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_0
    iput-boolean p1, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mCreate:Z

    iput-object v7, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mPatternHash:[B

    if-eqz v0, :cond_0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mPatternHash:[B

    :cond_0
    iget-object v5, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-boolean v6, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mCreate:Z

    if-eqz v6, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mCreate:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c03bb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mCreate:Z

    if-eqz v5, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mCreate:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c07cc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->invalidateOptionsMenu()V

    return-void

    :cond_2
    move p1, v2

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    iget-boolean v2, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0257

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c07d9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method private setPatternTimeout()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/flymexx/applications/LockPatternActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/flymexx/applications/LockPatternActivity;->TIMEOUT_PREF_KEY:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private switchToAccount()V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c024b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    const v1, 0x7f020110

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mAccountView:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    return-void
.end method

.method private switchToPattern(Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->isRetryLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, v3}, Lcom/android/flymexx/applications/LockPatternActivity;->resetPatternState(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0257

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    const v1, 0x7f0200d0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mAccountView:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v0}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->clearFocusOnInput()V

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mAccountView:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c07d9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onAuthenticated()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/LockPatternActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0400be

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/LockPatternActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f1101a1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    const v0, 0x7f1101a4

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1101a5

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mContinueOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1101a3

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    iput-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mAccountView:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mAccountView:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->setOnNotifyAccountResetCb(Lcom/android/flymexx/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;)V

    const v0, 0x7f1101a2

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const v0, 0x7f1101a6

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mFingerprintIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/android/flymexx/applications/LockPatternActivity;->resetPatternState(Z)V

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v1, Lcom/android/flymexx/applications/LockPatternActivity$UnlockPatternListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/flymexx/applications/LockPatternActivity$UnlockPatternListener;-><init>(Lcom/android/flymexx/applications/LockPatternActivity;Lcom/android/flymexx/applications/LockPatternActivity$UnlockPatternListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/LockPatternActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mCreate:Z

    if-eqz v0, :cond_2

    :cond_0
    iput-boolean v3, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v4, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    new-instance v0, Lcom/android/flymexx/fingerprint/FingerprintUiHelper;

    iget-object v1, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mFingerprintIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/flymexx/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/flymexx/fingerprint/FingerprintUiHelper;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/flymexx/fingerprint/FingerprintUiHelper$Callback;I)V

    iput-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mFingerPrintUiHelper:Lcom/android/flymexx/fingerprint/FingerprintUiHelper;

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mFingerPrintUiHelper:Lcom/android/flymexx/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0, v4}, Lcom/android/flymexx/fingerprint/FingerprintUiHelper;->setDarkIconography(Z)V

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mFingerPrintUiHelper:Lcom/android/flymexx/fingerprint/FingerprintUiHelper;

    const v1, 0x7f0c0257

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/LockPatternActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/flymexx/fingerprint/FingerprintUiHelper;->setIdleText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0c024a

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200d0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mRetryLocked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    const v1, 0x7f020110

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onNotifyAccountReset()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/flymexx/applications/LockPatternActivity;->switchToPattern(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    return v1

    :sswitch_0
    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mAccountView:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v0}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/flymexx/applications/LockPatternActivity;->switchToPattern(Z)V

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->switchToAccount()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/LockPatternActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->finish()V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mFingerPrintUiHelper:Lcom/android/flymexx/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/flymexx/fingerprint/FingerprintUiHelper;->stopListening()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "isAccountView"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->switchToAccount()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/flymexx/applications/LockPatternActivity;->switchToPattern(Z)V

    const-string/jumbo v0, "pattern_hash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mPatternHash:[B

    const-string/jumbo v0, "confirming"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mConfirming:Z

    const-string/jumbo v0, "retrypattern"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mRetryPattern:Z

    const-string/jumbo v0, "retry"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mRetry:I

    const-string/jumbo v0, "create"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mCreate:Z

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    const-string/jumbo v1, "continueEnabled"

    iget-object v2, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    const v1, 0x7f0c0257

    invoke-virtual {p0, v1}, Lcom/android/flymexx/applications/LockPatternActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mFingerPrintUiHelper:Lcom/android/flymexx/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/flymexx/fingerprint/FingerprintUiHelper;->startListening()V

    :cond_0
    invoke-direct {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->isRetryLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->invalidateOptionsMenu()V

    invoke-direct {p0}, Lcom/android/flymexx/applications/LockPatternActivity;->switchToAccount()V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v1, "isAccountView"

    iget-object v2, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mAccountView:Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v2}, Lcom/android/flymexx/cyanogenmod/ProtectedAccountView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "continueEnabled"

    iget-object v1, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "confirming"

    iget-boolean v1, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mConfirming:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "retrypattern"

    iget-boolean v1, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mRetryPattern:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "retry"

    iget v1, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mRetry:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "pattern_hash"

    iget-object v1, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mPatternHash:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v0, "create"

    iget-boolean v1, p0, Lcom/android/flymexx/applications/LockPatternActivity;->mCreate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public patternToHash(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    const/4 v7, 0x0

    if-nez p1, :cond_0

    return-object v7

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v5, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string/jumbo v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v4

    return-object v6
.end method
