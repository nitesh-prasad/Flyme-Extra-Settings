.class final Lcom/android/flymexx/dashboard/DashboardContainerFragment$TabChangeListener;
.super Ljava/lang/Object;
.source "DashboardContainerFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/dashboard/DashboardContainerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TabChangeListener"
.end annotation


# instance fields
.field private final mActivity:Lcom/android/flymexx/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/flymexx/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment$TabChangeListener;->mActivity:Lcom/android/flymexx/SettingsActivity;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment$TabChangeListener;->mActivity:Lcom/android/flymexx/SettingsActivity;

    const/16 v1, 0x1dc

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment$TabChangeListener;->mActivity:Lcom/android/flymexx/SettingsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/flymexx/SettingsActivity;->setDisplaySearchMenu(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment$TabChangeListener;->mActivity:Lcom/android/flymexx/SettingsActivity;

    const/16 v1, 0x1dd

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardContainerFragment$TabChangeListener;->mActivity:Lcom/android/flymexx/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/flymexx/SettingsActivity;->setDisplaySearchMenu(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
