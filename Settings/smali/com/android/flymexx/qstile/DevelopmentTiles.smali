.class public Lcom/android/flymexx/qstile/DevelopmentTiles;
.super Ljava/lang/Object;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/qstile/DevelopmentTiles$GPUProfiling;,
        Lcom/android/flymexx/qstile/DevelopmentTiles$ShowLayout;
    }
.end annotation


# static fields
.field static final TILE_CLASSES:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/android/flymexx/qstile/DevelopmentTiles$ShowLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/android/flymexx/qstile/DevelopmentTiles$GPUProfiling;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/flymexx/qstile/DevelopmentTiles;->TILE_CLASSES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTilesEnabled(Landroid/content/Context;Z)V
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v6, Lcom/android/flymexx/qstile/DevelopmentTiles;->TILE_CLASSES:[Ljava/lang/Class;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v0, v6, v5

    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v1, v8, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    return-void
.end method
