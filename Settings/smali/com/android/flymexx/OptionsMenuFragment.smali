.class public abstract Lcom/android/flymexx/OptionsMenuFragment;
.super Lcom/android/flymexx/InstrumentedFragment;
.source "OptionsMenuFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/OptionsMenuFragment;->setHasOptionsMenu(Z)V

    return-void
.end method
