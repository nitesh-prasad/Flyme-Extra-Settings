.class Lcom/android/flymexx/RadioInfo$13;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/flymexx/RadioInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/RadioInfo$13;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$13;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0}, Lcom/android/flymexx/RadioInfo;->-get15(Lcom/android/flymexx/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$13;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0}, Lcom/android/flymexx/RadioInfo;->-get15(Lcom/android/flymexx/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    iget-object v0, p0, Lcom/android/flymexx/RadioInfo$13;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-static {v0}, Lcom/android/flymexx/RadioInfo;->-wrap11(Lcom/android/flymexx/RadioInfo;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
