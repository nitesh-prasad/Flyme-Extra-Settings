.class Lcom/android/flymexx/fuelgauge/PowerUsageDetail$2;
.super Ljava/lang/Object;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/fuelgauge/PowerUsageDetail;->createDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/fuelgauge/PowerUsageDetail;


# direct methods
.method constructor <init>(Lcom/android/flymexx/fuelgauge/PowerUsageDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/fuelgauge/PowerUsageDetail$2;->this$0:Lcom/android/flymexx/fuelgauge/PowerUsageDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/flymexx/fuelgauge/PowerUsageDetail$2;->this$0:Lcom/android/flymexx/fuelgauge/PowerUsageDetail;

    iget-object v1, p0, Lcom/android/flymexx/fuelgauge/PowerUsageDetail$2;->this$0:Lcom/android/flymexx/fuelgauge/PowerUsageDetail;

    iget-object v1, v1, Lcom/android/flymexx/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v2}, Lcom/android/flymexx/fuelgauge/HighPowerDetail;->show(Landroid/app/Fragment;Ljava/lang/String;IZ)V

    const/4 v0, 0x1

    return v0
.end method
