.class Lcom/android/flymexx/applications/ClearDefaultsPreference$1;
.super Ljava/lang/Object;
.source "ClearDefaultsPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/applications/ClearDefaultsPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/applications/ClearDefaultsPreference;

.field final synthetic val$view:Landroid/support/v7/preference/PreferenceViewHolder;


# direct methods
.method constructor <init>(Lcom/android/flymexx/applications/ClearDefaultsPreference;Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/flymexx/applications/ClearDefaultsPreference;

    iput-object p2, p0, Lcom/android/flymexx/applications/ClearDefaultsPreference$1;->val$view:Landroid/support/v7/preference/PreferenceViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/flymexx/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/flymexx/applications/ClearDefaultsPreference;

    invoke-static {v3}, Lcom/android/flymexx/applications/ClearDefaultsPreference;->-get3(Lcom/android/flymexx/applications/ClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/flymexx/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/flymexx/applications/ClearDefaultsPreference;

    invoke-static {v3}, Lcom/android/flymexx/applications/ClearDefaultsPreference;->-get2(Lcom/android/flymexx/applications/ClearDefaultsPreference;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexx/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/flymexx/applications/ClearDefaultsPreference;

    invoke-static {v4}, Lcom/android/flymexx/applications/ClearDefaultsPreference;->-get1(Lcom/android/flymexx/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/flymexx/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/flymexx/applications/ClearDefaultsPreference;

    iget-object v4, p0, Lcom/android/flymexx/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/flymexx/applications/ClearDefaultsPreference;

    invoke-static {v4}, Lcom/android/flymexx/applications/ClearDefaultsPreference;->-get1(Lcom/android/flymexx/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/flymexx/applications/ClearDefaultsPreference;->-wrap0(Lcom/android/flymexx/applications/ClearDefaultsPreference;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/flymexx/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/flymexx/applications/ClearDefaultsPreference;

    invoke-static {v3}, Lcom/android/flymexx/applications/ClearDefaultsPreference;->-get2(Lcom/android/flymexx/applications/ClearDefaultsPreference;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/flymexx/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/flymexx/applications/ClearDefaultsPreference;

    invoke-static {v3}, Lcom/android/flymexx/applications/ClearDefaultsPreference;->-get3(Lcom/android/flymexx/applications/ClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexx/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/flymexx/applications/ClearDefaultsPreference;

    invoke-static {v4}, Lcom/android/flymexx/applications/ClearDefaultsPreference;->-get1(Lcom/android/flymexx/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/flymexx/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/flymexx/applications/ClearDefaultsPreference;

    invoke-static {v3}, Lcom/android/flymexx/applications/ClearDefaultsPreference;->-get0(Lcom/android/flymexx/applications/ClearDefaultsPreference;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexx/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/flymexx/applications/ClearDefaultsPreference;

    invoke-static {v4}, Lcom/android/flymexx/applications/ClearDefaultsPreference;->-get1(Lcom/android/flymexx/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/flymexx/applications/ClearDefaultsPreference$1;->val$view:Landroid/support/v7/preference/PreferenceViewHolder;

    const v4, 0x7f11007e

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/flymexx/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/flymexx/applications/ClearDefaultsPreference;

    invoke-static {v3, v0}, Lcom/android/flymexx/applications/ClearDefaultsPreference;->-wrap1(Lcom/android/flymexx/applications/ClearDefaultsPreference;Landroid/widget/TextView;)V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/flymexx/applications/ClearDefaultsPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "mUsbManager.clearDefaults"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
