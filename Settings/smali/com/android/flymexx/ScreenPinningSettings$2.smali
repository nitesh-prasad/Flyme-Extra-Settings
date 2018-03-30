.class Lcom/android/flymexx/ScreenPinningSettings$2;
.super Ljava/lang/Object;
.source "ScreenPinningSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/ScreenPinningSettings;->updateDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/ScreenPinningSettings;


# direct methods
.method constructor <init>(Lcom/android/flymexx/ScreenPinningSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/ScreenPinningSettings$2;->this$0:Lcom/android/flymexx/ScreenPinningSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/ScreenPinningSettings$2;->this$0:Lcom/android/flymexx/ScreenPinningSettings;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/flymexx/ScreenPinningSettings;->-wrap1(Lcom/android/flymexx/ScreenPinningSettings;Z)Z

    move-result v0

    return v0
.end method
