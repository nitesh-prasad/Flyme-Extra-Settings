.class public Lcyanogenmod/hardware/HSIC;
.super Ljava/lang/Object;
.source "HSIC.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/hardware/HSIC$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/hardware/HSIC;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContrast:F

.field private final mHue:F

.field private final mIntensity:F

.field private final mSaturation:F

.field private final mSaturationThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcyanogenmod/hardware/HSIC$1;

    invoke-direct {v0}, Lcyanogenmod/hardware/HSIC$1;-><init>()V

    sput-object v0, Lcyanogenmod/hardware/HSIC;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcyanogenmod/hardware/HSIC;->mHue:F

    iput p2, p0, Lcyanogenmod/hardware/HSIC;->mSaturation:F

    iput p3, p0, Lcyanogenmod/hardware/HSIC;->mIntensity:F

    iput p4, p0, Lcyanogenmod/hardware/HSIC;->mContrast:F

    iput p5, p0, Lcyanogenmod/hardware/HSIC;->mSaturationThreshold:F

    return-void
.end method

.method public static fromFloatArray([F)Lcyanogenmod/hardware/HSIC;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    array-length v0, p0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    new-instance v0, Lcyanogenmod/hardware/HSIC;

    aget v1, p0, v2

    aget v2, p0, v3

    aget v3, p0, v4

    aget v4, p0, v5

    aget v5, p0, v6

    invoke-direct/range {v0 .. v5}, Lcyanogenmod/hardware/HSIC;-><init>(FFFFF)V

    return-object v0

    :cond_0
    array-length v0, p0

    if-ne v0, v6, :cond_1

    new-instance v0, Lcyanogenmod/hardware/HSIC;

    aget v1, p0, v2

    aget v2, p0, v3

    aget v3, p0, v4

    aget v4, p0, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcyanogenmod/hardware/HSIC;-><init>(FFFFF)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toFloatArray()[F
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [F

    iget v1, p0, Lcyanogenmod/hardware/HSIC;->mHue:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcyanogenmod/hardware/HSIC;->mSaturation:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcyanogenmod/hardware/HSIC;->mIntensity:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcyanogenmod/hardware/HSIC;->mContrast:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcyanogenmod/hardware/HSIC;->mSaturationThreshold:F

    const/4 v2, 0x4

    aput v1, v0, v2

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "HSIC={ hue=%f saturation=%f intensity=%f contrast=%f saturationThreshold=%f }"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcyanogenmod/hardware/HSIC;->mHue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcyanogenmod/hardware/HSIC;->mSaturation:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Lcyanogenmod/hardware/HSIC;->mIntensity:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget v3, p0, Lcyanogenmod/hardware/HSIC;->mContrast:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget v3, p0, Lcyanogenmod/hardware/HSIC;->mSaturationThreshold:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcyanogenmod/hardware/HSIC;->toFloatArray()[F

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
