.class final Lcom/android/flymexxlib/drawer/TileUtils$1;
.super Ljava/lang/Object;
.source "TileUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexxlib/drawer/TileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/flymexxlib/drawer/Tile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/flymexxlib/drawer/Tile;Lcom/android/flymexxlib/drawer/Tile;)I
    .locals 2

    iget v0, p2, Lcom/android/flymexxlib/drawer/Tile;->priority:I

    iget v1, p1, Lcom/android/flymexxlib/drawer/Tile;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/flymexxlib/drawer/Tile;

    check-cast p2, Lcom/android/flymexxlib/drawer/Tile;

    invoke-virtual {p0, p1, p2}, Lcom/android/flymexxlib/drawer/TileUtils$1;->compare(Lcom/android/flymexxlib/drawer/Tile;Lcom/android/flymexxlib/drawer/Tile;)I

    move-result v0

    return v0
.end method
