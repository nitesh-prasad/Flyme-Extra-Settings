.class Lcom/android/flymexx/location/LocationSettings$4;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/location/LocationSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/location/LocationSettings;

.field final synthetic val$activity:Lcom/android/flymexx/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/flymexx/location/LocationSettings;Lcom/android/flymexx/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/location/LocationSettings$4;->this$0:Lcom/android/flymexx/location/LocationSettings;

    iput-object p2, p0, Lcom/android/flymexx/location/LocationSettings$4;->val$activity:Lcom/android/flymexx/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/flymexx/location/LocationSettings$4;->val$activity:Lcom/android/flymexx/SettingsActivity;

    const-class v1, Lcom/android/flymexx/location/LocationMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/flymexx/location/LocationSettings$4;->this$0:Lcom/android/flymexx/location/LocationSettings;

    const v3, 0x7f0c0781

    const/4 v6, 0x0

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/flymexx/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v0, 0x1

    return v0
.end method
