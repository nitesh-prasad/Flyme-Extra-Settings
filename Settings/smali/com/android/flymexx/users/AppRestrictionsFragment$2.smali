.class Lcom/android/flymexx/users/AppRestrictionsFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/flymexx/users/AppRestrictionsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/users/AppRestrictionsFragment$2;->this$0:Lcom/android/flymexx/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/AppRestrictionsFragment$2;->this$0:Lcom/android/flymexx/users/AppRestrictionsFragment;

    invoke-static {v0, p2}, Lcom/android/flymexx/users/AppRestrictionsFragment;->-wrap1(Lcom/android/flymexx/users/AppRestrictionsFragment;Landroid/content/Intent;)V

    return-void
.end method
