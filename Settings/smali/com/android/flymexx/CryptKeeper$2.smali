.class Lcom/android/flymexx/CryptKeeper$2;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/flymexx/CryptKeeper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/CryptKeeper$2;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/CryptKeeper$2;->this$0:Lcom/android/flymexx/CryptKeeper;

    invoke-static {v0}, Lcom/android/flymexx/CryptKeeper;->-get3(Lcom/android/flymexx/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    return-void
.end method
