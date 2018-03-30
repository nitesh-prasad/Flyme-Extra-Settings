.class Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mSlideState:Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SavedState$1;

    invoke-direct {v0}, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SavedState$1;-><init>()V

    sput-object v0, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    :try_start_0
    const-class v1, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

    iput-object v1, p0, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

    iput-object v1, p0, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SavedState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

    invoke-virtual {v0}, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
