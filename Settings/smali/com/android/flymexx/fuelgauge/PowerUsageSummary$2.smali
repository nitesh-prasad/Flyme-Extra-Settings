.class final Lcom/android/flymexx/fuelgauge/PowerUsageSummary$2;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSummaryProvider(Landroid/app/Activity;Lcom/android/flymexx/dashboard/SummaryLoader;)Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;
    .locals 2

    new-instance v0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary$SummaryProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/flymexx/dashboard/SummaryLoader;Lcom/android/flymexx/fuelgauge/PowerUsageSummary$SummaryProvider;)V

    return-object v0
.end method
