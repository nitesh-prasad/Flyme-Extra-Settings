.class Lcom/android/flymexx/localepicker/LocaleListEditor$4;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/localepicker/LocaleListEditor;


# direct methods
.method constructor <init>(Lcom/android/flymexx/localepicker/LocaleListEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/localepicker/LocaleListEditor$4;->this$0:Lcom/android/flymexx/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/flymexx/localepicker/LocaleListEditor$4;->this$0:Lcom/android/flymexx/localepicker/LocaleListEditor;

    invoke-static {v0, v1}, Lcom/android/flymexx/localepicker/LocaleListEditor;->-set0(Lcom/android/flymexx/localepicker/LocaleListEditor;Z)Z

    iget-object v0, p0, Lcom/android/flymexx/localepicker/LocaleListEditor$4;->this$0:Lcom/android/flymexx/localepicker/LocaleListEditor;

    invoke-static {v0, v1}, Lcom/android/flymexx/localepicker/LocaleListEditor;->-set1(Lcom/android/flymexx/localepicker/LocaleListEditor;Z)Z

    iget-object v0, p0, Lcom/android/flymexx/localepicker/LocaleListEditor$4;->this$0:Lcom/android/flymexx/localepicker/LocaleListEditor;

    invoke-static {v0}, Lcom/android/flymexx/localepicker/LocaleListEditor;->-get0(Lcom/android/flymexx/localepicker/LocaleListEditor;)Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;->removeChecked()V

    iget-object v0, p0, Lcom/android/flymexx/localepicker/LocaleListEditor$4;->this$0:Lcom/android/flymexx/localepicker/LocaleListEditor;

    invoke-static {v0, v1}, Lcom/android/flymexx/localepicker/LocaleListEditor;->-wrap0(Lcom/android/flymexx/localepicker/LocaleListEditor;Z)V

    return-void
.end method
