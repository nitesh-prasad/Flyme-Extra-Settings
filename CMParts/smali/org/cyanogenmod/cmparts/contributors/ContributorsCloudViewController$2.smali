.class Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ContributorsCloudViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;-><init>(Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$2;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$2;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->-get2(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$2;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->-get2(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController$2;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    invoke-virtual {v1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    return-void
.end method
