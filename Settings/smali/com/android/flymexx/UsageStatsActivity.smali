.class public Lcom/android/flymexx/UsageStatsActivity;
.super Landroid/app/Activity;
.source "UsageStatsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/UsageStatsActivity$AppNameComparator;,
        Lcom/android/flymexx/UsageStatsActivity$AppViewHolder;,
        Lcom/android/flymexx/UsageStatsActivity$LastTimeUsedComparator;,
        Lcom/android/flymexx/UsageStatsActivity$UsageStatsAdapter;,
        Lcom/android/flymexx/UsageStatsActivity$UsageTimeComparator;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/flymexx/UsageStatsActivity$UsageStatsAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mUsageStatsManager:Landroid/app/usage/UsageStatsManager;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/UsageStatsActivity;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/UsageStatsActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/UsageStatsActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/UsageStatsActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/UsageStatsActivity;)Landroid/app/usage/UsageStatsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/UsageStatsActivity;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f04017e

    invoke-virtual {p0, v2}, Lcom/android/flymexx/UsageStatsActivity;->setContentView(I)V

    const-string/jumbo v2, "usagestats"

    invoke-virtual {p0, v2}, Lcom/android/flymexx/UsageStatsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    iput-object v2, p0, Lcom/android/flymexx/UsageStatsActivity;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/flymexx/UsageStatsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/flymexx/UsageStatsActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/flymexx/UsageStatsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/UsageStatsActivity;->mPm:Landroid/content/pm/PackageManager;

    const v2, 0x7f110296

    invoke-virtual {p0, v2}, Lcom/android/flymexx/UsageStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v2, 0x7f110297

    invoke-virtual {p0, v2}, Lcom/android/flymexx/UsageStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v2, Lcom/android/flymexx/UsageStatsActivity$UsageStatsAdapter;

    invoke-direct {v2, p0}, Lcom/android/flymexx/UsageStatsActivity$UsageStatsAdapter;-><init>(Lcom/android/flymexx/UsageStatsActivity;)V

    iput-object v2, p0, Lcom/android/flymexx/UsageStatsActivity;->mAdapter:Lcom/android/flymexx/UsageStatsActivity$UsageStatsAdapter;

    iget-object v2, p0, Lcom/android/flymexx/UsageStatsActivity;->mAdapter:Lcom/android/flymexx/UsageStatsActivity$UsageStatsAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/flymexx/UsageStatsActivity;->mAdapter:Lcom/android/flymexx/UsageStatsActivity$UsageStatsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/flymexx/UsageStatsActivity$UsageStatsAdapter;->sortList(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
