.class public Lorg/cyanogenmod/cmparts/cmstats/ReportingService;
.super Landroid/app/IntentService;
.source "ReportingService.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "CMStats"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/cyanogenmod/cmparts/cmstats/ReportingService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Lorg/cyanogenmod/cmparts/cmstats/ReportingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14

    const/4 v13, 0x1

    const-string/jumbo v9, "jobscheduler"

    invoke-virtual {p0, v9}, Lorg/cyanogenmod/cmparts/cmstats/ReportingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/job/JobScheduler;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lorg/cyanogenmod/cmparts/cmstats/Utilities;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lorg/cyanogenmod/cmparts/cmstats/Utilities;->getDevice()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lorg/cyanogenmod/cmparts/cmstats/Utilities;->getModVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lorg/cyanogenmod/cmparts/cmstats/Utilities;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lorg/cyanogenmod/cmparts/cmstats/Utilities;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lorg/cyanogenmod/cmparts/cmstats/Utilities;->getCarrierId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lorg/cyanogenmod/cmparts/cmstats/AnonymousStats;->getNextJobId(Landroid/content/Context;)I

    move-result v1

    sget-boolean v9, Lorg/cyanogenmod/cmparts/cmstats/ReportingService;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string/jumbo v9, "CMStats"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "scheduling job id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string/jumbo v9, "deviceName"

    invoke-virtual {v0, v9, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "uniqueId"

    invoke-virtual {v0, v9, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "version"

    invoke-virtual {v0, v9, v7}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "country"

    invoke-virtual {v0, v9, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "carrier"

    invoke-virtual {v0, v9, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "carrierId"

    invoke-virtual {v0, v9, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v9, "job_type"

    invoke-virtual {v0, v9, v13}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    new-instance v9, Landroid/app/job/JobInfo$Builder;

    new-instance v10, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/cmstats/ReportingService;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v1, v10}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v9, v13}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v9

    const-wide/16 v10, 0x3e8

    invoke-virtual {v9, v10, v11}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    invoke-static {p0}, Lorg/cyanogenmod/cmparts/cmstats/AnonymousStats;->updateLastSynced(Landroid/content/Context;)V

    invoke-static {p0}, Lorg/cyanogenmod/cmparts/cmstats/ReportingServiceManager;->setAlarm(Landroid/content/Context;)V

    return-void
.end method
