.class Lcom/android/flymexx/RadioInfo$7;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


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

    iput-object p1, p0, Lcom/android/flymexx/RadioInfo$7;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/flymexx/RadioInfo$7;->this$0:Lcom/android/flymexx/RadioInfo;

    const-class v2, Lcom/android/flymexx/BandMode;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/flymexx/RadioInfo$7;->this$0:Lcom/android/flymexx/RadioInfo;

    invoke-virtual {v1, v0}, Lcom/android/flymexx/RadioInfo;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method
