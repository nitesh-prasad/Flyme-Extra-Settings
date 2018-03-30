.class Lcom/android/flymexx/DevelopmentSettings$4;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/DevelopmentSettings;->confirmEnableOemUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/flymexx/DevelopmentSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/DevelopmentSettings$4;->this$0:Lcom/android/flymexx/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/DevelopmentSettings$4;->this$0:Lcom/android/flymexx/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/android/flymexx/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/DevelopmentSettings$4;->this$0:Lcom/android/flymexx/DevelopmentSettings;

    invoke-static {v0}, Lcom/android/flymexx/DevelopmentSettings;->-wrap1(Lcom/android/flymexx/DevelopmentSettings;)V

    return-void
.end method
