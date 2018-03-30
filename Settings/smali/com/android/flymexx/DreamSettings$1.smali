.class Lcom/android/flymexx/DreamSettings$1;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/DreamSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/flymexx/DreamSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/DreamSettings$1;->this$0:Lcom/android/flymexx/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/DreamSettings$1;->this$0:Lcom/android/flymexx/DreamSettings;

    invoke-static {v0}, Lcom/android/flymexx/DreamSettings;->-get0(Lcom/android/flymexx/DreamSettings;)Lcom/android/flymexxlib/dream/DreamBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/flymexxlib/dream/DreamBackend;->startDreaming()V

    return-void
.end method
