.class public Lcom/android/flymexxlib/BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexxlib/BatteryInfo$BatteryDataParser;,
        Lcom/android/flymexxlib/BatteryInfo$Callback;
    }
.end annotation


# instance fields
.field public batteryPercentString:Ljava/lang/String;

.field public mBatteryLevel:I

.field public mChargeLabelString:Ljava/lang/String;

.field private mCharging:Z

.field public mDischarging:Z

.field private mStats:Landroid/os/BatteryStats;

.field public remainingLabel:Ljava/lang/String;

.field public remainingTimeUs:J

.field private timePeriod:J


# direct methods
.method static synthetic -get0(Lcom/android/flymexxlib/BatteryInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexxlib/BatteryInfo;->mCharging:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/flymexxlib/BatteryInfo;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/flymexxlib/BatteryInfo;->timePeriod:J

    return-wide p1
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/flymexxlib/BatteryInfo;->mDischarging:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/flymexxlib/BatteryInfo;->remainingTimeUs:J

    return-void
.end method

.method public static getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;J)Lcom/android/flymexxlib/BatteryInfo;
    .locals 7

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/flymexxlib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JZ)Lcom/android/flymexxlib/BatteryInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JZ)Lcom/android/flymexxlib/BatteryInfo;
    .locals 17

    new-instance v6, Lcom/android/flymexxlib/BatteryInfo;

    invoke-direct {v6}, Lcom/android/flymexxlib/BatteryInfo;-><init>()V

    move-object/from16 v0, p2

    iput-object v0, v6, Lcom/android/flymexxlib/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    invoke-static/range {p1 .. p1}, Lcom/android/flymexxlib/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v13

    iput v13, v6, Lcom/android/flymexxlib/BatteryInfo;->mBatteryLevel:I

    iget v13, v6, Lcom/android/flymexxlib/BatteryInfo;->mBatteryLevel:I

    invoke-static {v13}, Lcom/android/flymexxlib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/flymexxlib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    const-string/jumbo v13, "plugged"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    :goto_0
    iput-boolean v13, v6, Lcom/android/flymexxlib/BatteryInfo;->mCharging:Z

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-boolean v13, v6, Lcom/android/flymexxlib/BatteryInfo;->mCharging:Z

    if-nez v13, :cond_4

    invoke-virtual/range {p2 .. p4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v4

    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-lez v13, :cond_3

    iput-wide v4, v6, Lcom/android/flymexxlib/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v14, 0x3e8

    div-long v14, v4, v14

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    if-eqz p5, :cond_1

    sget v13, Lcom/android/flymexxlib/R$string;->power_remaining_duration_only_short:I

    :goto_1
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    invoke-virtual {v9, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/flymexxlib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    if-eqz p5, :cond_2

    sget v13, Lcom/android/flymexxlib/R$string;->power_discharging_duration_short:I

    :goto_2
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    iget-object v15, v6, Lcom/android/flymexxlib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x1

    aput-object v12, v14, v15

    invoke-virtual {v9, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/flymexxlib/BatteryInfo;->mChargeLabelString:Ljava/lang/String;

    :goto_3
    return-object v6

    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    sget v13, Lcom/android/flymexxlib/R$string;->power_remaining_duration_only:I

    goto :goto_1

    :cond_2
    sget v13, Lcom/android/flymexxlib/R$string;->power_discharging_duration:I

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    iput-object v13, v6, Lcom/android/flymexxlib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    iget-object v13, v6, Lcom/android/flymexxlib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    iput-object v13, v6, Lcom/android/flymexxlib/BatteryInfo;->mChargeLabelString:Ljava/lang/String;

    goto :goto_3

    :cond_4
    invoke-virtual/range {p2 .. p4}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v2

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v9, v0, v1}, Lcom/android/flymexxlib/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "status"

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-wide/16 v14, 0x0

    cmp-long v13, v2, v14

    if-lez v13, :cond_c

    const/4 v13, 0x5

    if-eq v10, v13, :cond_c

    const/4 v13, 0x0

    iput-boolean v13, v6, Lcom/android/flymexxlib/BatteryInfo;->mDischarging:Z

    iput-wide v2, v6, Lcom/android/flymexxlib/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v14, 0x3e8

    div-long v14, v2, v14

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "plugged"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v13, 0x1

    if-ne v7, v13, :cond_6

    if-eqz p5, :cond_5

    sget v8, Lcom/android/flymexxlib/R$string;->power_charging_duration_ac_short:I

    :goto_4
    sget v13, Lcom/android/flymexxlib/R$string;->power_remaining_duration_only:I

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    invoke-virtual {v9, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/flymexxlib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    iget-object v14, v6, Lcom/android/flymexxlib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const/4 v14, 0x1

    aput-object v12, v13, v14

    invoke-virtual {v9, v8, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/flymexxlib/BatteryInfo;->mChargeLabelString:Ljava/lang/String;

    goto :goto_3

    :cond_5
    sget v8, Lcom/android/flymexxlib/R$string;->power_charging_duration_ac:I

    goto :goto_4

    :cond_6
    const/4 v13, 0x2

    if-ne v7, v13, :cond_8

    if-eqz p5, :cond_7

    sget v8, Lcom/android/flymexxlib/R$string;->power_charging_duration_usb_short:I

    goto :goto_4

    :cond_7
    sget v8, Lcom/android/flymexxlib/R$string;->power_charging_duration_usb:I

    goto :goto_4

    :cond_8
    const/4 v13, 0x4

    if-ne v7, v13, :cond_a

    if-eqz p5, :cond_9

    sget v8, Lcom/android/flymexxlib/R$string;->power_charging_duration_wireless_short:I

    goto :goto_4

    :cond_9
    sget v8, Lcom/android/flymexxlib/R$string;->power_charging_duration_wireless:I

    goto :goto_4

    :cond_a
    if-eqz p5, :cond_b

    sget v8, Lcom/android/flymexxlib/R$string;->power_charging_duration_short:I

    goto :goto_4

    :cond_b
    sget v8, Lcom/android/flymexxlib/R$string;->power_charging_duration:I

    goto :goto_4

    :cond_c
    iput-object v11, v6, Lcom/android/flymexxlib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    sget v13, Lcom/android/flymexxlib/R$string;->power_charging:I

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    iget-object v15, v6, Lcom/android/flymexxlib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x1

    aput-object v11, v14, v15

    invoke-virtual {v9, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/flymexxlib/BatteryInfo;->mChargeLabelString:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/flymexxlib/BatteryInfo$Callback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/flymexxlib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/flymexxlib/BatteryInfo$Callback;Z)V

    return-void
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/flymexxlib/BatteryInfo$Callback;Z)V
    .locals 2

    new-instance v0, Lcom/android/flymexxlib/BatteryInfo$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/flymexxlib/BatteryInfo$2;-><init>(Landroid/content/Context;ZLcom/android/flymexxlib/BatteryInfo$Callback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/BatteryInfo$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static varargs parse(Landroid/os/BatteryStats;J[Lcom/android/flymexxlib/BatteryInfo$BatteryDataParser;)V
    .locals 37

    const-wide/16 v28, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v12, 0x0

    const/16 v19, -0x1

    const-wide/16 v6, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v20, 0x0

    const/16 v18, 0x0

    const/16 v26, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v32

    if-eqz v32, :cond_8

    new-instance v27, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v32

    if-eqz v32, :cond_8

    add-int/lit8 v26, v26, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    move-object/from16 v0, v27

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    :cond_1
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x7

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    :cond_2
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v32, v0

    const-wide v34, 0x39ef8b000L

    add-long v34, v34, v22

    cmp-long v32, v32, v34

    if-gtz v32, :cond_3

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    const-wide/32 v34, 0x493e0

    add-long v34, v34, v14

    cmp-long v32, v32, v34

    if-gez v32, :cond_4

    :cond_3
    const-wide/16 v28, 0x0

    :cond_4
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    const-wide/16 v32, 0x0

    cmp-long v32, v28, v32

    if-nez v32, :cond_5

    sub-long v32, v20, v14

    sub-long v28, v22, v32

    :cond_5
    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v32

    if-eqz v32, :cond_0

    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v32, 0x1

    move/from16 v0, v26

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    :cond_6
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v19, v0

    :cond_7
    move/from16 v18, v26

    move-object/from16 v0, v27

    iget-wide v12, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    add-long v32, v22, v12

    sub-long v8, v32, v20

    const-wide/16 v32, 0x3e8

    div-long v32, p1, v32

    add-long v10, v8, v32

    const/16 v16, 0x0

    move/from16 v4, v18

    const/16 v17, 0x0

    :goto_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_9

    aget-object v32, p3, v17

    move-object/from16 v0, v32

    move-wide/from16 v1, v28

    invoke-interface {v0, v1, v2, v10, v11}, Lcom/android/flymexxlib/BatteryInfo$BatteryDataParser;->onParsingStarted(JJ)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_9
    cmp-long v32, v8, v28

    if-lez v32, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v32

    if-eqz v32, :cond_11

    new-instance v27, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v32

    if-eqz v32, :cond_11

    move/from16 v0, v16

    if-ge v0, v4, :cond_11

    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v32

    if-eqz v32, :cond_b

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    sub-long v32, v32, v20

    add-long v6, v6, v32

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    sub-long v30, v6, v28

    const-wide/16 v32, 0x0

    cmp-long v32, v30, v32

    if-gez v32, :cond_a

    const-wide/16 v30, 0x0

    :cond_a
    const/16 v17, 0x0

    :goto_3
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_10

    aget-object v32, p3, v17

    move-object/from16 v0, v32

    move-wide/from16 v1, v30

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lcom/android/flymexxlib/BatteryInfo$BatteryDataParser;->onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    :cond_b
    move-wide/from16 v24, v6

    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_c

    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x7

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_d

    :cond_c
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v32, v0

    cmp-long v32, v32, v28

    if-ltz v32, :cond_f

    move-object/from16 v0, v27

    iget-wide v6, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    :goto_4
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    :cond_d
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_10

    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_e

    sub-long v32, v24, v6

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->abs(J)J

    move-result-wide v32

    const-wide/32 v34, 0x36ee80

    cmp-long v32, v32, v34

    if-lez v32, :cond_10

    :cond_e
    const/16 v17, 0x0

    :goto_5
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_10

    aget-object v32, p3, v17

    invoke-interface/range {v32 .. v32}, Lcom/android/flymexxlib/BatteryInfo$BatteryDataParser;->onDataGap()V

    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    :cond_f
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    sub-long v32, v32, v14

    add-long v6, v28, v32

    goto :goto_4

    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    const/16 v17, 0x0

    :goto_6
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_12

    aget-object v32, p3, v17

    invoke-interface/range {v32 .. v32}, Lcom/android/flymexxlib/BatteryInfo$BatteryDataParser;->onParsingDone()V

    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method


# virtual methods
.method public varargs bindHistory(Lcom/android/flymexxlib/graph/UsageView;[Lcom/android/flymexxlib/BatteryInfo$BatteryDataParser;)V
    .locals 12

    new-instance v2, Lcom/android/flymexxlib/BatteryInfo$1;

    invoke-direct {v2, p0, p1}, Lcom/android/flymexxlib/BatteryInfo$1;-><init>(Lcom/android/flymexxlib/BatteryInfo;Lcom/android/flymexxlib/graph/UsageView;)V

    array-length v6, p2

    add-int/lit8 v6, v6, 0x1

    new-array v3, v6, [Lcom/android/flymexxlib/BatteryInfo$BatteryDataParser;

    const/4 v1, 0x0

    :goto_0
    array-length v6, p2

    if-ge v1, v6, :cond_0

    aget-object v6, p2, v1

    aput-object v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v6, p2

    aput-object v2, v3, v6

    iget-object v6, p0, Lcom/android/flymexxlib/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    iget-wide v8, p0, Lcom/android/flymexxlib/BatteryInfo;->remainingTimeUs:J

    invoke-static {v6, v8, v9, v3}, Lcom/android/flymexxlib/BatteryInfo;->parse(Landroid/os/BatteryStats;J[Lcom/android/flymexxlib/BatteryInfo$BatteryDataParser;)V

    invoke-virtual {p1}, Lcom/android/flymexxlib/graph/UsageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v6, Lcom/android/flymexxlib/R$string;->charge_length_format:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/android/flymexxlib/BatteryInfo;->timePeriod:J

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v4, ""

    iget-wide v6, p0, Lcom/android/flymexxlib/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    sget v6, Lcom/android/flymexxlib/R$string;->remaining_length_format:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/android/flymexxlib/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {p1, v6}, Lcom/android/flymexxlib/graph/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    return-void
.end method
