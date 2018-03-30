.class Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ModeAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExpandedDesktopSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModeAdapter"
.end annotation


# instance fields
.field private hasNavigationBar:Z

.field private final inflater:Landroid/view/LayoutInflater;

.field private final items:[I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ModeAdapter;->hasNavigationBar:Z

    const v1, 0x7f080335

    const v2, 0x7f080336

    const v3, 0x7f080337

    const v4, 0x7f080338

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ModeAdapter;->items:[I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ModeAdapter;->inflater:Landroid/view/LayoutInflater;

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v1

    iput-boolean v1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ModeAdapter;->hasNavigationBar:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ModeAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ModeAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ModeAdapter;->hasNavigationBar:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ModeAdapter;->items:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    :goto_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ModeAdapter;->items:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, -0x8a8a8b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ModeAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x1090009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method
