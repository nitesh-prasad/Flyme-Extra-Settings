.class public Lcom/android/flymexxlib/applications/ApplicationsState$CompoundFilter;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexxlib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompoundFilter"
.end annotation


# instance fields
.field private final mFirstFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

.field private final mSecondFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;


# direct methods
.method public constructor <init>(Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/flymexxlib/applications/ApplicationsState$CompoundFilter;->mFirstFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    iput-object p2, p0, Lcom/android/flymexxlib/applications/ApplicationsState$CompoundFilter;->mSecondFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState$CompoundFilter;->mFirstFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0, p1}, Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState$CompoundFilter;->mSecondFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0, p1}, Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState$CompoundFilter;->mFirstFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;->init()V

    iget-object v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState$CompoundFilter;->mSecondFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0}, Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;->init()V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState$CompoundFilter;->mFirstFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0, p1}, Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/flymexxlib/applications/ApplicationsState$CompoundFilter;->mSecondFilter:Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0, p1}, Lcom/android/flymexxlib/applications/ApplicationsState$AppFilter;->init(Landroid/content/Context;)V

    return-void
.end method
