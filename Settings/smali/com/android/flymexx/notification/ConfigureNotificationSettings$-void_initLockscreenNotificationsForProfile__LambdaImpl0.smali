.class final synthetic Lcom/android/flymexx/notification/ConfigureNotificationSettings$-void_initLockscreenNotificationsForProfile__LambdaImpl0;
.super Ljava/lang/Object;
.source "ConfigureNotificationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/notification/ConfigureNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_initLockscreenNotificationsForProfile__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/flymexx/notification/ConfigureNotificationSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/flymexx/notification/ConfigureNotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/flymexx/notification/ConfigureNotificationSettings$-void_initLockscreenNotificationsForProfile__LambdaImpl0;->val$this:Lcom/android/flymexx/notification/ConfigureNotificationSettings;

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/notification/ConfigureNotificationSettings$-void_initLockscreenNotificationsForProfile__LambdaImpl0;->val$this:Lcom/android/flymexx/notification/ConfigureNotificationSettings;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/notification/ConfigureNotificationSettings;->-com_android_settings_notification_ConfigureNotificationSettings_lambda$1(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method
