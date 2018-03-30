.class final enum Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;
.super Ljava/lang/Enum;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

.field public static final enum ANCHORED:Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

.field public static final enum COLLAPSED:Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

.field public static final enum EXPANDED:Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

    const-string/jumbo v1, "EXPANDED"

    invoke-direct {v0, v1, v2}, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;->EXPANDED:Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

    new-instance v0, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

    const-string/jumbo v1, "COLLAPSED"

    invoke-direct {v0, v1, v3}, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

    new-instance v0, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

    const-string/jumbo v1, "ANCHORED"

    invoke-direct {v0, v1, v4}, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;->ANCHORED:Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

    sget-object v1, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;->EXPANDED:Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;->ANCHORED:Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;->$VALUES:[Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;
    .locals 1

    const-class v0, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

    return-object v0
.end method

.method public static values()[Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;
    .locals 1

    sget-object v0, Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;->$VALUES:[Lcom/cyngn/uicommon/view/SlidingUpPanelLayout$SlideState;

    return-object v0
.end method
