.class Lcom/android/flymexx/applications/AppStorageSettings$2;
.super Ljava/lang/Object;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/applications/AppStorageSettings;->createDialog(II)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/flymexx/applications/AppStorageSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/applications/AppStorageSettings$2;->this$0:Lcom/android/flymexx/applications/AppStorageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/AppStorageSettings$2;->this$0:Lcom/android/flymexx/applications/AppStorageSettings;

    invoke-static {v0}, Lcom/android/flymexx/applications/AppStorageSettings;->-wrap0(Lcom/android/flymexx/applications/AppStorageSettings;)V

    return-void
.end method
