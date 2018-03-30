.class public Lcom/android/flymexx/widget/DotsPageIndicator$RightwardStartPredicate;
.super Lcom/android/flymexx/widget/DotsPageIndicator$StartPredicate;
.source "DotsPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/widget/DotsPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RightwardStartPredicate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/widget/DotsPageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/flymexx/widget/DotsPageIndicator;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/widget/DotsPageIndicator$RightwardStartPredicate;->this$0:Lcom/android/flymexx/widget/DotsPageIndicator;

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/widget/DotsPageIndicator$StartPredicate;-><init>(Lcom/android/flymexx/widget/DotsPageIndicator;F)V

    return-void
.end method


# virtual methods
.method shouldStart(F)Z
    .locals 1

    iget v0, p0, Lcom/android/flymexx/widget/DotsPageIndicator$RightwardStartPredicate;->thresholdValue:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
