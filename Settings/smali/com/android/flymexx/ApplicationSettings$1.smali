.class Lcom/android/flymexx/ApplicationSettings$1;
.super Ljava/lang/Object;
.source "ApplicationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/ApplicationSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/ApplicationSettings;


# direct methods
.method constructor <init>(Lcom/android/flymexx/ApplicationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/ApplicationSettings$1;->this$0:Lcom/android/flymexx/ApplicationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/flymexx/ApplicationSettings$1;->this$0:Lcom/android/flymexx/ApplicationSettings;

    invoke-virtual {v1, v0}, Lcom/android/flymexx/ApplicationSettings;->handleUpdateAppInstallLocation(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method
