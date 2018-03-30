.class Lorg/cyanogenmod/cmparts/widget/FloatingActionButton$1;
.super Landroid/view/ViewOutlineProvider;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/widget/FloatingActionButton$1;->this$0:Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/FloatingActionButton$1;->this$0:Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/widget/FloatingActionButton$1;->this$0:Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;

    invoke-virtual {v1}, Lorg/cyanogenmod/cmparts/widget/FloatingActionButton;->getHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
