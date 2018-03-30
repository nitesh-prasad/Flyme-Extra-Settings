.class Lcom/android/flymexx/location/LocationSettings$1;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/flymexx/location/LocationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/location/LocationSettings$1;->this$0:Lcom/android/flymexx/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/flymexx/location/LocationSettings$1;->this$0:Lcom/android/flymexx/location/LocationSettings;

    invoke-static {v1}, Lcom/android/flymexx/location/LocationSettings;->-get2(Lcom/android/flymexx/location/LocationSettings;)Lcom/android/flymexxlib/RestrictedSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/flymexx/location/LocationSettings$1;->this$0:Lcom/android/flymexx/location/LocationSettings;

    invoke-static {v1}, Lcom/android/flymexx/location/LocationSettings;->-get3(Lcom/android/flymexx/location/LocationSettings;)Landroid/os/UserManager;

    move-result-object v3

    const-string/jumbo v4, "no_share_location"

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/flymexx/location/LocationSettings$1;->this$0:Lcom/android/flymexx/location/LocationSettings;

    invoke-static {v5}, Lcom/android/flymexx/location/LocationSettings;->-get1(Lcom/android/flymexx/location/LocationSettings;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/flymexx/location/LocationSettings$1;->this$0:Lcom/android/flymexx/location/LocationSettings;

    invoke-static {v1}, Lcom/android/flymexx/location/LocationSettings;->-get2(Lcom/android/flymexx/location/LocationSettings;)Lcom/android/flymexxlib/RestrictedSwitchPreference;

    move-result-object v3

    if-eqz v0, :cond_1

    const v1, 0x7f0c0ce3

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/flymexxlib/RestrictedSwitchPreference;->setSummary(I)V

    return v2

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const v1, 0x7f0c0ce4

    goto :goto_1
.end method
