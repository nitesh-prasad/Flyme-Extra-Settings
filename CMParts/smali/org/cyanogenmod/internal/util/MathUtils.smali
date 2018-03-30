.class public final Lorg/cyanogenmod/internal/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static linearToPowerCurve([DD)D
    .locals 7

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    mul-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static powerCurve(DDD)[D
    .locals 8

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/4 v1, 0x3

    new-array v0, v1, [D

    mul-double v2, p0, p4

    mul-double v4, p2, p2

    sub-double/2addr v2, v4

    mul-double v4, v6, p2

    sub-double v4, p0, v4

    add-double/2addr v4, p4

    div-double/2addr v2, v4

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    sub-double v2, p2, p0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v4, v6, p2

    sub-double v4, p0, v4

    add-double/2addr v4, p4

    div-double/2addr v2, v4

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    sub-double v2, p4, p2

    sub-double v4, p2, p0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public static powerCurveToLinear([DD)D
    .locals 5

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    sub-double v0, p1, v0

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const/4 v2, 0x2

    aget-wide v2, p0, v2

    div-double/2addr v0, v2

    return-wide v0
.end method
