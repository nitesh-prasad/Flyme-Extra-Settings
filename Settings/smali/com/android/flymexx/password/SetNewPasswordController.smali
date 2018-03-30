.class final Lcom/android/flymexx/password/SetNewPasswordController;
.super Ljava/lang/Object;
.source "SetNewPasswordController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/password/SetNewPasswordController$Ui;
    }
.end annotation


# instance fields
.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mFingerprintManager:Lcom/android/flymexx/password/IFingerprintManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mTargetUserId:I

.field private final mUi:Lcom/android/flymexx/password/SetNewPasswordController$Ui;


# direct methods
.method constructor <init>(ILandroid/content/pm/PackageManager;Lcom/android/flymexx/password/IFingerprintManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/flymexx/password/SetNewPasswordController$Ui;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/flymexx/password/SetNewPasswordController;->mTargetUserId:I

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/android/flymexx/password/SetNewPasswordController;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/flymexx/password/SetNewPasswordController;->mFingerprintManager:Lcom/android/flymexx/password/IFingerprintManager;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/flymexx/password/SetNewPasswordController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/password/SetNewPasswordController$Ui;

    iput-object v0, p0, Lcom/android/flymexx/password/SetNewPasswordController;->mUi:Lcom/android/flymexx/password/SetNewPasswordController$Ui;

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/flymexx/password/SetNewPasswordController$Ui;Landroid/content/Intent;Landroid/os/IBinder;)Lcom/android/flymexx/password/SetNewPasswordController;
    .locals 9

    const/4 v4, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string/jumbo v0, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p3, v0, v4, v2}, Lcom/android/flymexx/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v8, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v6

    :cond_0
    const-string/jumbo v0, "fingerprint"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v7, :cond_1

    const/4 v3, 0x0

    :goto_0
    new-instance v0, Lcom/android/flymexx/password/SetNewPasswordController;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v4, "device_policy"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/flymexx/password/SetNewPasswordController;-><init>(ILandroid/content/pm/PackageManager;Lcom/android/flymexx/password/IFingerprintManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/flymexx/password/SetNewPasswordController$Ui;)V

    return-object v0

    :cond_1
    new-instance v3, Lcom/android/flymexx/password/FingerprintManagerWrapper;

    invoke-direct {v3, v7}, Lcom/android/flymexx/password/FingerprintManagerWrapper;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    goto :goto_0
.end method

.method private getFingerprintChooseLockExtras()Landroid/os/Bundle;
    .locals 6

    const/4 v5, 0x1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/android/flymexx/password/SetNewPasswordController;->mFingerprintManager:Lcom/android/flymexx/password/IFingerprintManager;

    invoke-interface {v3}, Lcom/android/flymexx/password/IFingerprintManager;->preEnroll()J

    move-result-wide v0

    const-string/jumbo v3, "minimum_quality"

    const/high16 v4, 0x10000

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "hide_disabled_prefs"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "has_challenge"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "challenge"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v3, "for_fingerprint"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v2
.end method

.method private isFingerprintDisabledByAdmin()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/flymexx/password/SetNewPasswordController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v3, p0, Lcom/android/flymexx/password/SetNewPasswordController;->mTargetUserId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public dispatchSetNewPasswordIntent()V
    .locals 3

    iget-object v1, p0, Lcom/android/flymexx/password/SetNewPasswordController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v2, "android.hardware.fingerprint"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/password/SetNewPasswordController;->mFingerprintManager:Lcom/android/flymexx/password/IFingerprintManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/password/SetNewPasswordController;->mFingerprintManager:Lcom/android/flymexx/password/IFingerprintManager;

    invoke-interface {v1}, Lcom/android/flymexx/password/IFingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/password/SetNewPasswordController;->mFingerprintManager:Lcom/android/flymexx/password/IFingerprintManager;

    iget v2, p0, Lcom/android/flymexx/password/SetNewPasswordController;->mTargetUserId:I

    invoke-interface {v1, v2}, Lcom/android/flymexx/password/IFingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/flymexx/password/SetNewPasswordController;->mTargetUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/flymexx/password/SetNewPasswordController;->mUi:Lcom/android/flymexx/password/SetNewPasswordController$Ui;

    invoke-interface {v1, v0}, Lcom/android/flymexx/password/SetNewPasswordController$Ui;->launchChooseLock(Landroid/os/Bundle;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/flymexx/password/SetNewPasswordController;->isFingerprintDisabledByAdmin()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/flymexx/password/SetNewPasswordController;->getFingerprintChooseLockExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method
