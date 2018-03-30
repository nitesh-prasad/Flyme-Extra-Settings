.class public interface abstract Lcom/android/flymexx/TrustedCredentialsDialogBuilder$DelegateInterface;
.super Ljava/lang/Object;
.source "TrustedCredentialsDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/TrustedCredentialsDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DelegateInterface"
.end annotation


# virtual methods
.method public abstract getX509CertsFromCertHolder(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeOrInstallCert(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)V
.end method

.method public abstract startConfirmCredentialIfNotConfirmed(ILjava/util/function/IntConsumer;)Z
.end method
