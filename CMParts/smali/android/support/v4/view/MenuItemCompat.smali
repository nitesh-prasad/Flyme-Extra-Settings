.class public final Landroid/support/v4/view/MenuItemCompat;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;,
        Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;,
        Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;,
        Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;,
        Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v1, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;

    invoke-direct {v1}, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v1, Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;

    invoke-direct {v1}, Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;

    invoke-direct {v1}, Landroid/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expandActionView(Landroid/view/MenuItem;)Z
    .locals 1

    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroid/support/v4/internal/view/SupportMenuItem;->expandActionView()Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->expandActionView(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public static getActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroid/support/v4/internal/view/SupportMenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static isActionViewExpanded(Landroid/view/MenuItem;)Z
    .locals 1

    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroid/support/v4/internal/view/SupportMenuItem;->isActionViewExpanded()Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->isActionViewExpanded(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public static setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "MenuItemCompat"

    const-string/jumbo v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setActionView(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)V
    .locals 1

    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setShowAsAction(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setShowAsAction(Landroid/view/MenuItem;I)V

    goto :goto_0
.end method
