.class Lcom/android/flymexx/users/UserSettings$6;
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

    iput-object p1, p0, Lcom/android/flymexx/users/UserSettings$6;->this$0:Lcom/android/flymexx/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/UserSettings$6;->this$0:Lcom/android/flymexx/users/UserSettings;

    invoke-static {v0}, Lcom/android/flymexx/users/UserSettings;->-wrap10(Lcom/android/flymexx/users/UserSettings;)V

    return-void
.end method
