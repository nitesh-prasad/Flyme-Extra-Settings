.class Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$3;
.super Ljava/lang/Object;
.source "ContributorsCloudFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->onLoadCloudDataSuccess(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$3;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$3;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->-get3(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;)Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->setZoomTransitionDuration(I)V

    return-void
.end method
