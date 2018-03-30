.class Lcom/android/flymexx/fingerprint/FingerprintEnrollEnrolling$5;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/fingerprint/FingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/flymexx/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/fingerprint/FingerprintEnrollEnrolling$5;->this$0:Lcom/android/flymexx/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/fingerprint/FingerprintEnrollEnrolling$5;->this$0:Lcom/android/flymexx/fingerprint/FingerprintEnrollEnrolling;

    iget-object v1, p0, Lcom/android/flymexx/fingerprint/FingerprintEnrollEnrolling$5;->this$0:Lcom/android/flymexx/fingerprint/FingerprintEnrollEnrolling;

    const v2, 0x7f0c0430

    invoke-virtual {v1, v2}, Lcom/android/flymexx/fingerprint/FingerprintEnrollEnrolling;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/fingerprint/FingerprintEnrollEnrolling;->-wrap1(Lcom/android/flymexx/fingerprint/FingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V

    return-void
.end method
