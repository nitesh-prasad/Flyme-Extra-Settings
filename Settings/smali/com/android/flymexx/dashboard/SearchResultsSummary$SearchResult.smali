.class Lcom/android/flymexx/dashboard/SearchResultsSummary$SearchResult;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/dashboard/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchResult"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public entries:Ljava/lang/String;

.field public iconResId:I

.field public key:Ljava/lang/String;

.field public summaryOff:Ljava/lang/String;

.field public summaryOn:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/flymexx/dashboard/SearchResultsSummary$SearchResult;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/flymexx/dashboard/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/flymexx/dashboard/SearchResultsSummary$SearchResult;->summaryOn:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/flymexx/dashboard/SearchResultsSummary$SearchResult;->summaryOff:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/flymexx/dashboard/SearchResultsSummary$SearchResult;->entries:Ljava/lang/String;

    iput p6, p0, Lcom/android/flymexx/dashboard/SearchResultsSummary$SearchResult;->iconResId:I

    iput-object p7, p0, Lcom/android/flymexx/dashboard/SearchResultsSummary$SearchResult;->key:Ljava/lang/String;

    return-void
.end method
