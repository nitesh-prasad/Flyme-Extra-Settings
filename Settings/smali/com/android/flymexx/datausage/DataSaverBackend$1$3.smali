.class Lcom/android/flymexx/datausage/DataSaverBackend$1$3;
.super Ljava/lang/Object;
.source "DataSaverBackend.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/datausage/DataSaverBackend$1;->onRestrictBackgroundChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/flymexx/datausage/DataSaverBackend$1;

.field final synthetic val$isDataSaving:Z


# direct methods
.method constructor <init>(Lcom/android/flymexx/datausage/DataSaverBackend$1;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/datausage/DataSaverBackend$1$3;->this$1:Lcom/android/flymexx/datausage/DataSaverBackend$1;

    iput-boolean p2, p0, Lcom/android/flymexx/datausage/DataSaverBackend$1$3;->val$isDataSaving:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverBackend$1$3;->this$1:Lcom/android/flymexx/datausage/DataSaverBackend$1;

    iget-object v0, v0, Lcom/android/flymexx/datausage/DataSaverBackend$1;->this$0:Lcom/android/flymexx/datausage/DataSaverBackend;

    iget-boolean v1, p0, Lcom/android/flymexx/datausage/DataSaverBackend$1$3;->val$isDataSaving:Z

    invoke-static {v0, v1}, Lcom/android/flymexx/datausage/DataSaverBackend;->-wrap1(Lcom/android/flymexx/datausage/DataSaverBackend;Z)V

    return-void
.end method
