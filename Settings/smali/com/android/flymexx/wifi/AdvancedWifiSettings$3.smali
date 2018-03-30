.class Lcom/android/flymexx/wifi/AdvancedWifiSettings$3;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/wifi/AdvancedWifiSettings;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/flymexx/wifi/AdvancedWifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/flymexx/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/android/flymexx/wifi/AdvancedWifiSettings$WpsFragment;

    invoke-direct {v0, v3}, Lcom/android/flymexx/wifi/AdvancedWifiSettings$WpsFragment;-><init>(I)V

    iget-object v1, p0, Lcom/android/flymexx/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/flymexx/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Lcom/android/flymexx/wifi/AdvancedWifiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "wps_pin_entry"

    invoke-virtual {v0, v1, v2}, Lcom/android/flymexx/wifi/AdvancedWifiSettings$WpsFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return v3
.end method
