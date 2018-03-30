.class Lcom/android/flymexx/deviceinfo/PrivateVolumeForget$1;
.super Ljava/lang/Object;
.source "PrivateVolumeForget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/deviceinfo/PrivateVolumeForget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/deviceinfo/PrivateVolumeForget;


# direct methods
.method constructor <init>(Lcom/android/flymexx/deviceinfo/PrivateVolumeForget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/deviceinfo/PrivateVolumeForget$1;->this$0:Lcom/android/flymexx/deviceinfo/PrivateVolumeForget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/deviceinfo/PrivateVolumeForget$1;->this$0:Lcom/android/flymexx/deviceinfo/PrivateVolumeForget;

    iget-object v1, p0, Lcom/android/flymexx/deviceinfo/PrivateVolumeForget$1;->this$0:Lcom/android/flymexx/deviceinfo/PrivateVolumeForget;

    invoke-static {v1}, Lcom/android/flymexx/deviceinfo/PrivateVolumeForget;->-get0(Lcom/android/flymexx/deviceinfo/PrivateVolumeForget;)Landroid/os/storage/VolumeRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;->show(Landroid/app/Fragment;Ljava/lang/String;)V

    return-void
.end method
