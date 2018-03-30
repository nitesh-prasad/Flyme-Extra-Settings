.class public interface abstract Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexxlib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppFilter"
.end annotation


# virtual methods
.method public abstract filterApp(Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)Z
.end method

.method public abstract init()V
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;->init()V

    return-void
.end method
