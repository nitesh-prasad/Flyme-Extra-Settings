.class Lcom/android/flymexx/users/UserSettings$9;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/flymexx/users/UserSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/users/UserSettings$9;->this$0:Lcom/android/flymexx/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings$9;->this$0:Lcom/android/flymexx/users/UserSettings;

    iget-object v1, p0, Lcom/android/flymexx/users/UserSettings$9;->this$0:Lcom/android/flymexx/users/UserSettings;

    invoke-static {v1}, Lcom/android/flymexx/users/UserSettings;->-get0(Lcom/android/flymexx/users/UserSettings;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/flymexx/users/UserSettings;->-wrap11(Lcom/android/flymexx/users/UserSettings;I)V

    return-void
.end method
