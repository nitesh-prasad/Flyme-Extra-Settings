.class Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter$3;
.super Ljava/lang/Object;
.source "LocaleDragAndDropAdapter.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;->updateLocalesWhenAnimationStops(Landroid/os/LocaleList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;


# direct methods
.method constructor <init>(Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationsFinished()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;->-get3(Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;->-get3(Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v1}, Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;->-get2(Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;->-get3(Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    iget-object v0, p0, Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;

    iget-object v1, p0, Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v1}, Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;->-get3(Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;->-set0(Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    iget-object v0, p0, Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0, v2}, Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;->-set1(Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    iget-object v0, p0, Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;->-set2(Lcom/android/flymexx/localepicker/LocaleDragAndDropAdapter;Ljava/text/NumberFormat;)Ljava/text/NumberFormat;

    return-void
.end method
