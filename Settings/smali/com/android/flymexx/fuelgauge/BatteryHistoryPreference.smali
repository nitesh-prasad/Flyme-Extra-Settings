.class public Lcom/android/flymexx/fuelgauge/BatteryHistoryPreference;
.super Landroid/support/v7/preference/Preference;
.source "BatteryHistoryPreference.java"


# instance fields
.field private mBatteryInfo:Lcom/android/flymexxlib/BatteryInfo;

.field private mHelper:Lcom/android/internal/os/BatteryStatsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f040031

    invoke-virtual {p0, v0}, Lcom/android/flymexx/fuelgauge/BatteryHistoryPreference;->setLayoutResource(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/fuelgauge/BatteryHistoryPreference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v1, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/flymexxlib/BatteryInfo;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    const v1, 0x7f110088

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/flymexxlib/BatteryInfo;

    iget-object v2, v2, Lcom/android/flymexxlib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f110089

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/flymexxlib/BatteryInfo;

    iget-object v2, v2, Lcom/android/flymexxlib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f11008a

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/graph/UsageView;

    const v1, 0x7f11029c

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/flymexxlib/BatteryInfo;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/flymexxlib/BatteryInfo$BatteryDataParser;

    invoke-virtual {v1, v0, v2}, Lcom/android/flymexxlib/BatteryInfo;->bindHistory(Lcom/android/flymexxlib/graph/UsageView;[Lcom/android/flymexxlib/BatteryInfo$BatteryDataParser;)V

    return-void
.end method

.method public performClick()V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryPreference;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const-string/jumbo v1, "tmp_bat_history.bin"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->storeStatsHistoryInFile(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "stats"

    const-string/jumbo v1, "tmp_bat_history.bin"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "broadcast"

    iget-object v1, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryPreference;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/BatteryHistoryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/flymexx/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const v5, 0x7f0c096f

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/flymexx/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    return-void
.end method

.method public setStats(Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 6

    iput-object p1, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryPreference;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/BatteryHistoryPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v4

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/flymexxlib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;J)Lcom/android/flymexxlib/BatteryInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/flymexxlib/BatteryInfo;

    invoke-virtual {p0}, Lcom/android/flymexx/fuelgauge/BatteryHistoryPreference;->notifyChanged()V

    return-void
.end method
