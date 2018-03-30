.class Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;
.super Landroid/os/AsyncTask;
.source "ContributorsCloudFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContributorCloudLoaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mNavigate:Z

.field private final mNotify:Z

.field private mViewInfo:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;

.field final synthetic this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;ZZ)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean p2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mNotify:Z

    iput-boolean p3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mNavigate:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    invoke-virtual {v2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->-wrap1(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;Landroid/content/Context;)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    invoke-virtual {v2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->-wrap2(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;Landroid/content/Context;)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    invoke-virtual {v2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    invoke-static {v3}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->-get2(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->-wrap0(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;Landroid/content/Context;I)Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;

    iget-object v1, v1, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ContributorsCloud"

    const-string/jumbo v2, "Failed to generate cloud bitmap"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->-wrap4(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->-get0(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;

    iget-object v1, v1, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->-get3(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;)Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->update()V

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mNotify:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mNavigate:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;

    iget v1, v1, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;->mFocusX:F

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;

    iget v2, v2, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;->mFocusY:F

    invoke-static {v0, v1, v2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->-wrap5(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;FF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    invoke-static {v0, v2, v2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->-wrap5(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;FF)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->-get0(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->-get3(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;)Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->update()V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mNotify:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->-wrap4(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->-get1(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
