.class Lcom/android/flymexx/applications/ProtectedAppsActivity$AppViewHolder;
.super Ljava/lang/Object;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/applications/ProtectedAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppViewHolder"
.end annotation


# instance fields
.field public final checkBox:Landroid/widget/CheckBox;

.field public final container:Landroid/view/View;

.field public final icon:Landroid/widget/ImageView;

.field public final launch:Landroid/view/View;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f11014a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppViewHolder;->container:Landroid/view/View;

    const v0, 0x7f11003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f11003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f11014b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppViewHolder;->launch:Landroid/view/View;

    const v0, 0x7f11004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    return-void
.end method
