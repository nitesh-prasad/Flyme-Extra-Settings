.class Lcom/android/flymexx/fingerprint/FingerprintLocationAnimationView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FingerprintLocationAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/fingerprint/FingerprintLocationAnimationView;->startAlphaAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/fingerprint/FingerprintLocationAnimationView;


# direct methods
.method constructor <init>(Lcom/android/flymexx/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/fingerprint/FingerprintLocationAnimationView$5;->this$0:Lcom/android/flymexx/fingerprint/FingerprintLocationAnimationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/fingerprint/FingerprintLocationAnimationView$5;->this$0:Lcom/android/flymexx/fingerprint/FingerprintLocationAnimationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/flymexx/fingerprint/FingerprintLocationAnimationView;->-set0(Lcom/android/flymexx/fingerprint/FingerprintLocationAnimationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
