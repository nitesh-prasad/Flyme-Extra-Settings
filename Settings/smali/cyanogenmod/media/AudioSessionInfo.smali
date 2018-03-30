.class public final Lcyanogenmod/media/AudioSessionInfo;
.super Ljava/lang/Object;
.source "AudioSessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/media/AudioSessionInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/media/AudioSessionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChannelMask:I

.field private final mFlags:I

.field private final mSessionId:I

.field private final mStream:I

.field private final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcyanogenmod/media/AudioSessionInfo$1;

    invoke-direct {v0}, Lcyanogenmod/media/AudioSessionInfo$1;-><init>()V

    sput-object v0, Lcyanogenmod/media/AudioSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mSessionId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mStream:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mChannelMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mUid:I

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    :cond_0
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/media/AudioSessionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcyanogenmod/media/AudioSessionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    instance-of v3, p1, Lcyanogenmod/media/AudioSessionInfo;

    if-eqz v3, :cond_1

    move-object v0, p1

    check-cast v0, Lcyanogenmod/media/AudioSessionInfo;

    if-eq p0, v0, :cond_0

    iget v3, p0, Lcyanogenmod/media/AudioSessionInfo;->mSessionId:I

    iget v4, v0, Lcyanogenmod/media/AudioSessionInfo;->mSessionId:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcyanogenmod/media/AudioSessionInfo;->mStream:I

    iget v4, v0, Lcyanogenmod/media/AudioSessionInfo;->mStream:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcyanogenmod/media/AudioSessionInfo;->mFlags:I

    iget v4, v0, Lcyanogenmod/media/AudioSessionInfo;->mFlags:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcyanogenmod/media/AudioSessionInfo;->mChannelMask:I

    iget v4, v0, Lcyanogenmod/media/AudioSessionInfo;->mChannelMask:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcyanogenmod/media/AudioSessionInfo;->mUid:I

    iget v4, v0, Lcyanogenmod/media/AudioSessionInfo;->mUid:I

    if-ne v3, v4, :cond_2

    :cond_0
    :goto_0
    return v1

    :cond_1
    return v2

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcyanogenmod/media/AudioSessionInfo;->mSessionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcyanogenmod/media/AudioSessionInfo;->mStream:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcyanogenmod/media/AudioSessionInfo;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcyanogenmod/media/AudioSessionInfo;->mChannelMask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcyanogenmod/media/AudioSessionInfo;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "audioSessionInfo[sessionId=%d, stream=%d, flags=%d, channelMask=%d, uid=%d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mSessionId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mStream:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mChannelMask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcyanogenmod/media/AudioSessionInfo;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    iget v1, p0, Lcyanogenmod/media/AudioSessionInfo;->mSessionId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcyanogenmod/media/AudioSessionInfo;->mStream:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcyanogenmod/media/AudioSessionInfo;->mFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcyanogenmod/media/AudioSessionInfo;->mChannelMask:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcyanogenmod/media/AudioSessionInfo;->mUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method
