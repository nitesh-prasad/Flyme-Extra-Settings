.class final enum Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;
.super Ljava/lang/Enum;
.source "ButtonSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/input/ButtonSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

.field public static final enum APP_SWITCH:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

.field public static final enum IN_APP_SEARCH:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

.field public static final enum LAST_APP:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

.field public static final enum LAUNCH_CAMERA:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

.field public static final enum MENU:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

.field public static final enum NOTHING:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

.field public static final enum SEARCH:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

.field public static final enum SINGLE_HAND_LEFT:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

.field public static final enum SINGLE_HAND_RIGHT:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

.field public static final enum SLEEP:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

.field public static final enum SPLIT_SCREEN:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

.field public static final enum VOICE_SEARCH:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    const-string/jumbo v1, "NOTHING"

    invoke-direct {v0, v1, v3}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->NOTHING:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    new-instance v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    const-string/jumbo v1, "MENU"

    invoke-direct {v0, v1, v4}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->MENU:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    new-instance v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    const-string/jumbo v1, "APP_SWITCH"

    invoke-direct {v0, v1, v5}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->APP_SWITCH:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    new-instance v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    const-string/jumbo v1, "SEARCH"

    invoke-direct {v0, v1, v6}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->SEARCH:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    new-instance v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    const-string/jumbo v1, "VOICE_SEARCH"

    invoke-direct {v0, v1, v7}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->VOICE_SEARCH:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    new-instance v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    const-string/jumbo v1, "IN_APP_SEARCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->IN_APP_SEARCH:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    new-instance v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    const-string/jumbo v1, "LAUNCH_CAMERA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->LAUNCH_CAMERA:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    new-instance v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    const-string/jumbo v1, "SLEEP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->SLEEP:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    new-instance v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    const-string/jumbo v1, "LAST_APP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->LAST_APP:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    new-instance v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    const-string/jumbo v1, "SPLIT_SCREEN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->SPLIT_SCREEN:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    new-instance v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    const-string/jumbo v1, "SINGLE_HAND_LEFT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->SINGLE_HAND_LEFT:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    new-instance v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    const-string/jumbo v1, "SINGLE_HAND_RIGHT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->SINGLE_HAND_RIGHT:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    const/16 v0, 0xc

    new-array v0, v0, [Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    sget-object v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->NOTHING:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    aput-object v1, v0, v3

    sget-object v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->MENU:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    aput-object v1, v0, v4

    sget-object v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->APP_SWITCH:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    aput-object v1, v0, v5

    sget-object v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->SEARCH:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    aput-object v1, v0, v6

    sget-object v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->VOICE_SEARCH:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    aput-object v1, v0, v7

    sget-object v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->IN_APP_SEARCH:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->LAUNCH_CAMERA:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->SLEEP:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->LAST_APP:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->SPLIT_SCREEN:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->SINGLE_HAND_LEFT:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->SINGLE_HAND_RIGHT:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->$VALUES:[Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromIntSafe(I)Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;
    .locals 1

    sget-object v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->NOTHING:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->ordinal()I

    move-result v0

    if-lt p0, v0, :cond_0

    invoke-static {}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->values()[Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    move-result-object v0

    array-length v0, v0

    if-le p0, v0, :cond_1

    :cond_0
    sget-object v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->NOTHING:Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    return-object v0

    :cond_1
    invoke-static {}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->values()[Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;)Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;
    .locals 1

    invoke-virtual {p2}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->ordinal()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->fromIntSafe(I)Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;
    .locals 1

    const-class v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    return-object v0
.end method

.method public static values()[Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;
    .locals 1

    sget-object v0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;->$VALUES:[Lorg/cyanogenmod/cmparts/input/ButtonSettings$Action;

    return-object v0
.end method
