.class Lcom/android/flymexx/SettingsActivity$6;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/SettingsActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/flymexx/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/SettingsActivity$6;->this$0:Lcom/android/flymexx/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/SettingsActivity$6;->this$0:Lcom/android/flymexx/SettingsActivity;

    invoke-static {v0}, Lcom/android/flymexx/SettingsActivity;->-wrap1(Lcom/android/flymexx/SettingsActivity;)V

    return-void
.end method
