.class public Lcom/android/flymexx/cyanogenmod/RemoteSummaryProvider;
.super Ljava/lang/Object;
.source "RemoteSummaryProvider.java"

# interfaces
.implements Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;
.implements Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mKey:Ljava/lang/String;

.field private final mLoader:Lcom/android/flymexx/dashboard/SummaryLoader;

.field private final mTile:Lcom/android/flymexxlib/drawer/Tile;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/android/flymexx/dashboard/SummaryLoader;Lcom/android/flymexxlib/drawer/Tile;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/flymexx/cyanogenmod/RemoteSummaryProvider;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/flymexx/cyanogenmod/RemoteSummaryProvider;->mLoader:Lcom/android/flymexx/dashboard/SummaryLoader;

    iput-object p3, p0, Lcom/android/flymexx/cyanogenmod/RemoteSummaryProvider;->mTile:Lcom/android/flymexxlib/drawer/Tile;

    iget-object v0, p0, Lcom/android/flymexx/cyanogenmod/RemoteSummaryProvider;->mTile:Lcom/android/flymexxlib/drawer/Tile;

    iget-object v0, v0, Lcom/android/flymexxlib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "org.cyanogenmod.settings.summary.key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/cyanogenmod/RemoteSummaryProvider;->mKey:Ljava/lang/String;

    return-void
.end method

.method public static createSummaryProvider(Landroid/app/Activity;Lcom/android/flymexx/dashboard/SummaryLoader;Lcom/android/flymexxlib/drawer/Tile;)Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p2, Lcom/android/flymexxlib/drawer/Tile;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/flymexxlib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "org.cyanogenmod.settings.summary.receiver"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/flymexx/cyanogenmod/RemoteSummaryProvider;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/flymexx/cyanogenmod/RemoteSummaryProvider;-><init>(Landroid/app/Activity;Lcom/android/flymexx/dashboard/SummaryLoader;Lcom/android/flymexxlib/drawer/Tile;)V

    return-object v0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public getReceiverIntent()Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "cyanogenmod.intent.action.UPDATE_PREFERENCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/flymexx/cyanogenmod/RemoteSummaryProvider;->mTile:Lcom/android/flymexxlib/drawer/Tile;

    iget-object v2, v2, Lcom/android/flymexxlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/cyanogenmod/RemoteSummaryProvider;->mTile:Lcom/android/flymexxlib/drawer/Tile;

    iget-object v3, v3, Lcom/android/flymexxlib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "org.cyanogenmod.settings.summary.receiver"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, ":cm:pref_key"

    iget-object v2, p0, Lcom/android/flymexx/cyanogenmod/RemoteSummaryProvider;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public onRemoteUpdated(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/cyanogenmod/RemoteSummaryProvider;->mLoader:Lcom/android/flymexx/dashboard/SummaryLoader;

    const-string/jumbo v1, ":cm:pref_summary"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/flymexx/dashboard/SummaryLoader;->setSummary(Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/cyanogenmod/RemoteSummaryProvider;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcyanogenmod/preference/RemotePreferenceManager;->get(Landroid/content/Context;)Lcyanogenmod/preference/RemotePreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/cyanogenmod/RemoteSummaryProvider;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcyanogenmod/preference/RemotePreferenceManager;->attach(Ljava/lang/String;Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/cyanogenmod/RemoteSummaryProvider;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcyanogenmod/preference/RemotePreferenceManager;->get(Landroid/content/Context;)Lcyanogenmod/preference/RemotePreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/cyanogenmod/RemoteSummaryProvider;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcyanogenmod/preference/RemotePreferenceManager;->detach(Ljava/lang/String;Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;)V

    goto :goto_0
.end method
