.class Lcom/android/flymexx/FallbackHome$2;
.super Landroid/os/Handler;
.source "FallbackHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/FallbackHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/FallbackHome;


# direct methods
.method constructor <init>(Lcom/android/flymexx/FallbackHome;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/FallbackHome$2;->this$0:Lcom/android/flymexx/FallbackHome;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/FallbackHome$2;->this$0:Lcom/android/flymexx/FallbackHome;

    invoke-static {v0}, Lcom/android/flymexx/FallbackHome;->-wrap0(Lcom/android/flymexx/FallbackHome;)V

    return-void
.end method
