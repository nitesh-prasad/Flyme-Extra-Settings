.class Lcom/android/flymexx/RemoteBugreportActivity$2;
.super Ljava/lang/Object;
.source "RemoteBugreportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/RemoteBugreportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/RemoteBugreportActivity;


# direct methods
.method constructor <init>(Lcom/android/flymexx/RemoteBugreportActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/RemoteBugreportActivity$2;->this$0:Lcom/android/flymexx/RemoteBugreportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/RemoteBugreportActivity$2;->this$0:Lcom/android/flymexx/RemoteBugreportActivity;

    invoke-virtual {v0}, Lcom/android/flymexx/RemoteBugreportActivity;->finish()V

    return-void
.end method
