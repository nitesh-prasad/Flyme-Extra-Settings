.class Lcom/android/flymexx/dashboard/SearchResultsSummary$SuggestionItem;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/dashboard/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionItem"
.end annotation


# instance fields
.field public query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/flymexx/dashboard/SearchResultsSummary$SuggestionItem;->query:Ljava/lang/String;

    return-void
.end method
