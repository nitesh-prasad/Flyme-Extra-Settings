.class public Lcom/android/flymexx/password/FingerprintManagerWrapper;
.super Ljava/lang/Object;
.source "FingerprintManagerWrapper.java"

# interfaces
.implements Lcom/android/flymexx/password/IFingerprintManager;


# instance fields
.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/flymexx/password/FingerprintManagerWrapper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method


# virtual methods
.method public hasEnrolledFingerprints(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/password/FingerprintManagerWrapper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    return v0
.end method

.method public isHardwareDetected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/password/FingerprintManagerWrapper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    return v0
.end method

.method public preEnroll()J
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/password/FingerprintManagerWrapper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    return-wide v0
.end method
