.class public Lcom/android/flymexx/qstile/DevelopmentTiles$ShowLayout;
.super Landroid/service/quicksettings/TileService;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/qstile/DevelopmentTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowLayout"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    const-string/jumbo v1, "debug.layout"

    invoke-virtual {p0}, Lcom/android/flymexx/qstile/DevelopmentTiles$ShowLayout;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/flymexx/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/flymexx/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/android/flymexx/qstile/DevelopmentTiles$ShowLayout;->refresh()V

    return-void

    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public onStartListening()V
    .locals 0

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    invoke-virtual {p0}, Lcom/android/flymexx/qstile/DevelopmentTiles$ShowLayout;->refresh()V

    return-void
.end method

.method public refresh()V
    .locals 3

    const-string/jumbo v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/flymexx/qstile/DevelopmentTiles$ShowLayout;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v2, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/qstile/DevelopmentTiles$ShowLayout;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
