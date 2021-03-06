.class public Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/applications/AppOpsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppOpEntry"
.end annotation


# instance fields
.field private final mApp:Lcom/android/flymexx/applications/AppOpsState$AppEntry;

.field private final mOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOverriddenPrimaryMode:I

.field private final mPkgOps:Landroid/app/AppOpsManager$PackageOps;

.field private final mSwitchOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSwitchOrder:I


# direct methods
.method public constructor <init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/flymexx/applications/AppOpsState$AppEntry;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mOverriddenPrimaryMode:I

    iput-object p1, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mPkgOps:Landroid/app/AppOpsManager$PackageOps;

    iput-object p3, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/flymexx/applications/AppOpsState$AppEntry;

    iput p4, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mSwitchOrder:I

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/flymexx/applications/AppOpsState$AppEntry;

    invoke-virtual {v0, p0, p2}, Lcom/android/flymexx/applications/AppOpsState$AppEntry;->addOp(Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;Landroid/app/AppOpsManager$OpEntry;)V

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static addOp(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;",
            "Landroid/app/AppOpsManager$OpEntry;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v2

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getCombinedText(Ljava/util/ArrayList;[Ljava/lang/CharSequence;Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;[",
            "Ljava/lang/CharSequence;",
            "Landroid/content/res/Resources;",
            "Z)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    if-lez v2, :cond_0

    const-string/jumbo v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getAllowedCount()I

    move-result v5

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getIgnoredCount()I

    move-result v6

    add-int v1, v5, v6

    if-eqz p4, :cond_1

    if-lez v1, :cond_1

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/high16 v6, 0x7f120000

    invoke-virtual {p3, v6, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v6

    aget-object v6, p2, v6

    aput-object v6, v5, v7

    aput-object v4, v5, v8

    const v6, 0x7f0c0226

    invoke-virtual {p3, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v5

    aget-object v5, p2, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public addOp(Landroid/app/AppOpsManager$OpEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/flymexx/applications/AppOpsState$AppEntry;

    invoke-virtual {v0, p0, p1}, Lcom/android/flymexx/applications/AppOpsState$AppEntry;->addOp(Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;Landroid/app/AppOpsManager$OpEntry;)V

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->addOp(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/flymexx/applications/AppOpsState$AppEntry;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/flymexx/applications/AppOpsState$AppEntry;->getOpSwitch(I)Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->addOp(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V

    :cond_0
    return-void
.end method

.method public getAppEntry()Lcom/android/flymexx/applications/AppOpsState$AppEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/flymexx/applications/AppOpsState$AppEntry;

    return-object v0
.end method

.method public getCountsText(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 10

    const/high16 v9, 0x7f120000

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getAllowedCount()I

    move-result v0

    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getIgnoredCount()I

    move-result v2

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    const/4 v5, 0x0

    return-object v5

    :cond_0
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1, v9, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1, v9, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_1

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    const v6, 0x7f0c0227

    invoke-virtual {p1, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_1
    if-nez v0, :cond_2

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v7

    const v6, 0x7f0c0228

    invoke-virtual {p1, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_2
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    aput-object v3, v5, v8

    const v6, 0x7f0c0229

    invoke-virtual {p1, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getNumOpEntry()I
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    return-object v0
.end method

.method public getPackageOps()Landroid/app/AppOpsManager$PackageOps;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mPkgOps:Landroid/app/AppOpsManager$PackageOps;

    return-object v0
.end method

.method public getPrimaryOpMode()I
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mOverriddenPrimaryMode:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mOverriddenPrimaryMode:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v0

    goto :goto_0
.end method

.method public getSummaryText(Lcom/android/flymexx/applications/AppOpsState;)Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/flymexx/applications/AppOpsState;->mOpSummaries:[Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/android/flymexx/applications/AppOpsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getCombinedText(Ljava/util/ArrayList;[Ljava/lang/CharSequence;Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchOrder()I
    .locals 1

    iget v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mSwitchOrder:I

    return v0
.end method

.method public getSwitchText(Lcom/android/flymexx/applications/AppOpsState;)Ljava/lang/CharSequence;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p1, Lcom/android/flymexx/applications/AppOpsState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/flymexx/applications/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getCombinedText(Ljava/util/ArrayList;[Ljava/lang/CharSequence;Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/flymexx/applications/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getCombinedText(Ljava/util/ArrayList;[Ljava/lang/CharSequence;Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public getTime()J
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeText(Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;
    .locals 7

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0863

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x40000

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    const v0, 0x7f0c0864

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v0

    return v0
.end method

.method public overridePrimaryOpMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mOverriddenPrimaryMode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/flymexx/applications/AppOpsState$AppEntry;

    invoke-virtual {v0}, Lcom/android/flymexx/applications/AppOpsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
