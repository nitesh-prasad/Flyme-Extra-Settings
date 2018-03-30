.class Lcom/android/flymexx/accessibility/AccessibilitySettings$3;
.super Lcom/android/flymexx/accessibility/SettingsContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/flymexx/accessibility/AccessibilitySettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/accessibility/AccessibilitySettings$3;->this$0:Lcom/android/flymexx/accessibility/AccessibilitySettings;

    invoke-direct {p0, p2}, Lcom/android/flymexx/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/accessibility/AccessibilitySettings$3;->this$0:Lcom/android/flymexx/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/flymexx/accessibility/AccessibilitySettings;->-wrap1(Lcom/android/flymexx/accessibility/AccessibilitySettings;)V

    return-void
.end method
