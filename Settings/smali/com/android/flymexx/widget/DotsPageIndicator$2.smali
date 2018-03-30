.class Lcom/android/flymexx/widget/DotsPageIndicator$2;
.super Landroid/database/DataSetObserver;
.source "DotsPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/widget/DotsPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/widget/DotsPageIndicator;


# direct methods
.method constructor <init>(Lcom/android/flymexx/widget/DotsPageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/widget/DotsPageIndicator$2;->this$0:Lcom/android/flymexx/widget/DotsPageIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/widget/DotsPageIndicator$2;->this$0:Lcom/android/flymexx/widget/DotsPageIndicator;

    iget-object v1, p0, Lcom/android/flymexx/widget/DotsPageIndicator$2;->this$0:Lcom/android/flymexx/widget/DotsPageIndicator;

    invoke-static {v1}, Lcom/android/flymexx/widget/DotsPageIndicator;->-get9(Lcom/android/flymexx/widget/DotsPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/flymexx/widget/DotsPageIndicator;->-wrap4(Lcom/android/flymexx/widget/DotsPageIndicator;I)V

    return-void
.end method
