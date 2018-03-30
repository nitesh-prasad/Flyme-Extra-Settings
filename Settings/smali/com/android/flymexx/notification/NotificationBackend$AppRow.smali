.class public Lcom/android/flymexx/notification/NotificationBackend$AppRow;
.super Lcom/android/flymexx/notification/NotificationBackend$Row;
.source "NotificationBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/notification/NotificationBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppRow"
.end annotation


# instance fields
.field public appBypassDnd:Z

.field public appImportance:I

.field public appVisOverride:I

.field public banned:Z

.field public cantBlock:Z

.field public cantSilence:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/CharSequence;

.field public lockScreenSecure:Z

.field public pkg:Ljava/lang/String;

.field public settingsIntent:Landroid/content/Intent;

.field public soundTimeout:J

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/notification/NotificationBackend$Row;-><init>()V

    return-void
.end method
