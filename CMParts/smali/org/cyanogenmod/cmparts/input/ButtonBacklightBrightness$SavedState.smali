.class Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState;
.super Landroid/support/v7/preference/Preference$BaseSavedState;
.source "ButtonBacklightBrightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field button:I

.field keyboard:I

.field timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState$1;

    invoke-direct {v0}, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState$1;-><init>()V

    sput-object v0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState;->timeout:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState;->button:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState;->keyboard:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState;->timeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState;->button:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonBacklightBrightness$SavedState;->keyboard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
