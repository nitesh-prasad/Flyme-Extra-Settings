.class Lcom/android/flymexx/fuelgauge/PowerUsageSummary$SummaryProvider$1;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Lcom/android/flymexxlib/BatteryInfo$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/fuelgauge/PowerUsageSummary$SummaryProvider;->setListening(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/flymexx/fuelgauge/PowerUsageSummary$SummaryProvider;


# direct methods
.method constructor <init>(Lcom/android/flymexx/fuelgauge/PowerUsageSummary$SummaryProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary$SummaryProvider$1;->this$1:Lcom/android/flymexx/fuelgauge/PowerUsageSummary$SummaryProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryInfoLoaded(Lcom/android/flymexxlib/BatteryInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary$SummaryProvider$1;->this$1:Lcom/android/flymexx/fuelgauge/PowerUsageSummary$SummaryProvider;

    invoke-static {v0}, Lcom/android/flymexx/fuelgauge/PowerUsageSummary$SummaryProvider;->-get0(Lcom/android/flymexx/fuelgauge/PowerUsageSummary$SummaryProvider;)Lcom/android/flymexx/dashboard/SummaryLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/fuelgauge/PowerUsageSummary$SummaryProvider$1;->this$1:Lcom/android/flymexx/fuelgauge/PowerUsageSummary$SummaryProvider;

    iget-object v2, p1, Lcom/android/flymexxlib/BatteryInfo;->mChargeLabelString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/flymexx/dashboard/SummaryLoader;->setSummary(Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    return-void
.end method
