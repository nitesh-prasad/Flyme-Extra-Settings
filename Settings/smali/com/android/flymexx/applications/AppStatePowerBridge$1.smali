.class final Lcom/android/flymexx/applications/AppStatePowerBridge$1;
.super Ljava/lang/Object;
.source "AppStatePowerBridge.java"

# interfaces
.implements Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/applications/AppStatePowerBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 0

    return-void
.end method
