.class Lcom/android/flymexx/datausage/DataUsageMeteredSettings$MeteredPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "DataUsageMeteredSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/datausage/DataUsageMeteredSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeteredPreference"
.end annotation


# instance fields
.field private mBinding:Z

.field private final mTemplate:Landroid/net/NetworkTemplate;

.field final synthetic this$0:Lcom/android/flymexx/datausage/DataUsageMeteredSettings;


# direct methods
.method public constructor <init>(Lcom/android/flymexx/datausage/DataUsageMeteredSettings;Landroid/content/Context;Landroid/net/NetworkTemplate;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/android/flymexx/datausage/DataUsageMeteredSettings$MeteredPreference;->this$0:Lcom/android/flymexx/datausage/DataUsageMeteredSettings;

    invoke-direct {p0, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/flymexx/datausage/DataUsageMeteredSettings$MeteredPreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p0, v6}, Lcom/android/flymexx/datausage/DataUsageMeteredSettings$MeteredPreference;->setPersistent(Z)V

    iput-boolean v7, p0, Lcom/android/flymexx/datausage/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    invoke-static {p1}, Lcom/android/flymexx/datausage/DataUsageMeteredSettings;->-get0(Lcom/android/flymexx/datausage/DataUsageMeteredSettings;)Lcom/android/flymexxlib/NetworkPolicyEditor;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/flymexxlib/NetworkPolicyEditor;->getPolicyMaybeUnquoted(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/flymexx/datausage/DataUsageMeteredSettings$MeteredPreference;->setChecked(Z)V

    invoke-virtual {p0, v6}, Lcom/android/flymexx/datausage/DataUsageMeteredSettings$MeteredPreference;->setEnabled(Z)V

    :goto_0
    iput-boolean v6, p0, Lcom/android/flymexx/datausage/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    return-void

    :cond_0
    iget-boolean v1, v0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {p0, v1}, Lcom/android/flymexx/datausage/DataUsageMeteredSettings$MeteredPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/flymexx/datausage/DataUsageMeteredSettings$MeteredPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected notifyChanged()V
    .locals 3

    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->notifyChanged()V

    iget-boolean v0, p0, Lcom/android/flymexx/datausage/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataUsageMeteredSettings$MeteredPreference;->this$0:Lcom/android/flymexx/datausage/DataUsageMeteredSettings;

    invoke-static {v0}, Lcom/android/flymexx/datausage/DataUsageMeteredSettings;->-get0(Lcom/android/flymexx/datausage/DataUsageMeteredSettings;)Lcom/android/flymexxlib/NetworkPolicyEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/datausage/DataUsageMeteredSettings$MeteredPreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/DataUsageMeteredSettings$MeteredPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/flymexxlib/NetworkPolicyEditor;->setPolicyMetered(Landroid/net/NetworkTemplate;Z)V

    const-string/jumbo v0, "com.android.providers.settings"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
