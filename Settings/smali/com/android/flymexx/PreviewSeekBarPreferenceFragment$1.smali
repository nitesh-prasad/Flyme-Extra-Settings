.class Lcom/android/flymexx/PreviewSeekBarPreferenceFragment$1;
.super Ljava/lang/Object;
.source "PreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/PreviewSeekBarPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/PreviewSeekBarPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/flymexx/PreviewSeekBarPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/PreviewSeekBarPreferenceFragment$1;->this$0:Lcom/android/flymexx/PreviewSeekBarPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v0, p0, Lcom/android/flymexx/PreviewSeekBarPreferenceFragment$1;->this$0:Lcom/android/flymexx/PreviewSeekBarPreferenceFragment;

    invoke-static {v0}, Lcom/android/flymexx/PreviewSeekBarPreferenceFragment;->-get0(Lcom/android/flymexx/PreviewSeekBarPreferenceFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->sendAccessibilityEvent(I)V

    return-void
.end method
