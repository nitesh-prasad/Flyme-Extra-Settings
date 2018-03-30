.class Lcom/android/flymexx/DreamSettings$2;
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

    iput-object p1, p0, Lcom/android/flymexx/DreamSettings$2;->this$0:Lcom/android/flymexx/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/DreamSettings$2;->this$0:Lcom/android/flymexx/DreamSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/flymexx/DreamSettings;->showDialog(I)V

    return-void
.end method
