.class Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;
.super Landroid/os/Handler;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextChangedHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method static synthetic -wrap0(Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->notifyAfterTextChanged()V

    return-void
.end method

.method constructor <init>(Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->this$1:Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private notifyAfterTextChanged()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->removeMessages(I)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->this$1:Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->this$1:Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0}, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment;->-wrap0(Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment;)V

    :cond_1
    return-void
.end method
