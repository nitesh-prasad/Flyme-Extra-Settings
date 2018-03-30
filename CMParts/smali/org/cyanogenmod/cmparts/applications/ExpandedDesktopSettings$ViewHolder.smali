.class Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;
.super Ljava/lang/Object;
.source "ExpandedDesktopSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private mode:Landroid/widget/Spinner;

.field private rootView:Landroid/view/View;

.field private stateIcon:Landroid/widget/ImageView;

.field private title:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;->mode:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;->stateIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0c009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0c009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;->mode:Landroid/widget/Spinner;

    const v0, 0x7f0c009a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0c009d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;->stateIcon:Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
