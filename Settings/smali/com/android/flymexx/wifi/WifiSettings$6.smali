.class Lcom/android/flymexx/wifi/WifiSettings$6;
.super Landroid/support/v7/preference/Preference;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/wifi/WifiSettings;->onAccessPointsChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/flymexx/wifi/WifiSettings;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/wifi/WifiSettings$6;->this$0:Lcom/android/flymexx/wifi/WifiSettings;

    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method
