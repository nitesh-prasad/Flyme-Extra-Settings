.class final Lcom/android/flymexx/bluetooth/BluetoothSettings$4;
.super Lcom/android/flymexx/search/BaseSearchIndexProvider;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexx/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    const v8, 0x7f0c04ac

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v1, Lcom/android/flymexx/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/flymexx/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/flymexx/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/flymexx/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/android/flymexx/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    new-instance v1, Lcom/android/flymexx/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/flymexx/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/flymexx/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/flymexx/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    iput-boolean p2, v1, Lcom/android/flymexx/search/SearchIndexableRaw;->enabled:Z

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v6
.end method
