.class public final Lcyanogenmod/platform/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final LiveLockScreen:[I

.field public static final cm_Searchable:[I

.field public static final cm_SelfRemovingPreference:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/high16 v0, 0x3f080000    # 0.53125f

    const v1, 0x3f080001

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcyanogenmod/platform/R$styleable;->LiveLockScreen:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x3f010007

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcyanogenmod/platform/R$styleable;->cm_Searchable:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcyanogenmod/platform/R$styleable;->cm_SelfRemovingPreference:[I

    return-void

    :array_0
    .array-data 4
        0x3f010002
        0x3f010003
        0x3f010004
        0x3f010005
        0x3f010006
        0x3f010008
        0x3f010009
        0x3f01000a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
