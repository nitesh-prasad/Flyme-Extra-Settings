.class final Lcom/android/flymexxlib/applications/ApplicationsState$10;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexxlib/applications/ApplicationsState;
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
    .locals 1

    iget-object v0, p1, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public init()V
    .locals 0

    return-void
.end method
