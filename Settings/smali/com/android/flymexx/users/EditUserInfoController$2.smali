.class Lcom/android/flymexx/users/EditUserInfoController$2;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/flymexx/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/users/EditUserInfoController;


# direct methods
.method constructor <init>(Lcom/android/flymexx/users/EditUserInfoController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/users/EditUserInfoController$2;->this$0:Lcom/android/flymexx/users/EditUserInfoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/users/EditUserInfoController$2;->this$0:Lcom/android/flymexx/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/flymexx/users/EditUserInfoController;->clear()V

    return-void
.end method
