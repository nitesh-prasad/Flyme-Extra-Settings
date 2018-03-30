.class Lcom/android/flymexx/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/flymexx/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/SettingsActivity$5;->this$0:Lcom/android/flymexx/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/SettingsActivity$5;->this$0:Lcom/android/flymexx/SettingsActivity;

    iget-object v1, p0, Lcom/android/flymexx/SettingsActivity$5;->this$0:Lcom/android/flymexx/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/flymexx/SettingsActivity;->getResultIntentData()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/flymexx/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/flymexx/SettingsActivity$5;->this$0:Lcom/android/flymexx/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/flymexx/SettingsActivity;->finish()V

    return-void
.end method
