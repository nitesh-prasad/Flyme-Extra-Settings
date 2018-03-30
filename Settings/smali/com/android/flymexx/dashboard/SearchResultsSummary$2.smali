.class Lcom/android/flymexx/dashboard/SearchResultsSummary$2;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/dashboard/SearchResultsSummary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/dashboard/SearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/android/flymexx/dashboard/SearchResultsSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/flymexx/dashboard/SearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x0

    add-int/lit8 p3, p3, -0x1

    if-gez p3, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/flymexx/dashboard/SearchResultsSummary;

    invoke-static {v1}, Lcom/android/flymexx/dashboard/SearchResultsSummary;->-get3(Lcom/android/flymexx/dashboard/SearchResultsSummary;)Lcom/android/flymexx/dashboard/SearchResultsSummary$SuggestionsAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/android/flymexx/dashboard/SearchResultsSummary$SuggestionsAdapter;->-get0(Lcom/android/flymexx/dashboard/SearchResultsSummary$SuggestionsAdapter;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v1, p0, Lcom/android/flymexx/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/flymexx/dashboard/SearchResultsSummary;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/flymexx/dashboard/SearchResultsSummary;->-set1(Lcom/android/flymexx/dashboard/SearchResultsSummary;Z)Z

    iget-object v1, p0, Lcom/android/flymexx/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/flymexx/dashboard/SearchResultsSummary;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/flymexx/dashboard/SearchResultsSummary;->-set0(Lcom/android/flymexx/dashboard/SearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/flymexx/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/flymexx/dashboard/SearchResultsSummary;

    invoke-static {v1}, Lcom/android/flymexx/dashboard/SearchResultsSummary;->-get2(Lcom/android/flymexx/dashboard/SearchResultsSummary;)Landroid/widget/SearchView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/flymexx/dashboard/SearchResultsSummary;

    invoke-static {v2}, Lcom/android/flymexx/dashboard/SearchResultsSummary;->-get0(Lcom/android/flymexx/dashboard/SearchResultsSummary;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method
