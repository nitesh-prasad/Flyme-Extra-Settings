.class Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService$StatsUploadTask;
.super Landroid/os/AsyncTask;
.source "StatsUploadJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsUploadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mJobParams:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService$StatsUploadTask;->this$0:Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService$StatsUploadTask;->mJobParams:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService$StatsUploadTask;->mJobParams:Landroid/app/job/JobParameters;

    invoke-virtual {v2}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v10

    const-string/jumbo v2, "uniqueId"

    invoke-virtual {v10, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "deviceName"

    invoke-virtual {v10, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "version"

    invoke-virtual {v10, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "country"

    invoke-virtual {v10, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "carrier"

    invoke-virtual {v10, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "carrierId"

    invoke-virtual {v10, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "timeStamp"

    invoke-virtual {v10, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const/4 v13, 0x0

    const-string/jumbo v2, "job_type"

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v2, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService$StatsUploadTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    packed-switch v11, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-static {}, Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "job id "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService$StatsUploadTask;->mJobParams:Landroid/app/job/JobParameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", has finished with success="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :pswitch_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService$StatsUploadTask;->this$0:Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService;

    invoke-static/range {v2 .. v8}, Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService;->-wrap1(Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService$StatsUploadTask;->this$0:Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService;

    invoke-static {v2, v12}, Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService;->-wrap0(Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService;Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    goto :goto_0

    :catch_0
    move-exception v9

    invoke-static {}, Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v16, "Could not upload stats checkin to community server"

    move-object/from16 v0, v16

    invoke-static {v2, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v13, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService$StatsUploadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService$StatsUploadTask;->this$0:Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService;->-get2(Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService$StatsUploadTask;->mJobParams:Landroid/app/job/JobParameters;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService$StatsUploadTask;->this$0:Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService$StatsUploadTask;->mJobParams:Landroid/app/job/JobParameters;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/cyanogenmod/cmparts/cmstats/StatsUploadJobService$StatsUploadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
