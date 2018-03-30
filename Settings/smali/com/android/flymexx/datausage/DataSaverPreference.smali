.class public Lcom/android/flymexx/datausage/DataSaverPreference;
.super Landroid/support/v7/preference/Preference;
.source "DataSaverPreference.java"

# interfaces
.implements Lcom/android/flymexx/datausage/DataSaverBackend$Listener;


# instance fields
.field private final mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-direct {v0, p1}, Lcom/android/flymexx/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/flymexx/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onAttached()V

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/datausage/DataSaverBackend;->addListener(Lcom/android/flymexx/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0c0e23

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/flymexx/datausage/DataSaverPreference;->setSummary(I)V

    return-void

    :cond_0
    const v0, 0x7f0c0e24

    goto :goto_0
.end method

.method public onDetached()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onDetached()V

    iget-object v0, p0, Lcom/android/flymexx/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/flymexx/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/datausage/DataSaverBackend;->remListener(Lcom/android/flymexx/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0

    return-void
.end method
