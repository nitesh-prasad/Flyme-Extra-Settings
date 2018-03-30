.class Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExpandedDesktopSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllPackagesAdapter"
.end annotation


# instance fields
.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mModesAdapter:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ModeAdapter;

.field private mPositions:[I

.field private mSections:[Ljava/lang/String;

.field final synthetic this$0:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->mEntries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->setEntries(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->this$0:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->mEntries:Ljava/util/List;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ModeAdapter;

    invoke-direct {v0, p2, v2}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ModeAdapter;-><init>(Landroid/content/Context;Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ModeAdapter;)V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->mModesAdapter:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ModeAdapter;

    new-instance v0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;-><init>(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;Landroid/content/pm/PackageManager;Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;)V

    invoke-static {p1, v0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->-set0(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;)Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ActivityFilter;

    return-void
.end method

.method private setEntries(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->mEntries:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->mSections:[Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->mPositions:[I

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->mPositions:[I

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->mSections:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->mPositions:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    return v1

    :cond_1
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->mPositions:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_2

    :goto_0
    return v0

    :cond_2
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->mSections:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-nez p2, :cond_0

    new-instance v1, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03002c

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;-><init>(Landroid/view/View;Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;)V

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;->-get1(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v2

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->mModesAdapter:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ModeAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;->-get1(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :goto_0
    iget-object v2, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_1

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;->-get2(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;)Landroid/view/View;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;->-get4(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->this$0:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;

    invoke-static {v2}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->-get1(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;)Lcom/android/flymexxlib/applications/ApplicationsState;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/flymexxlib/applications/ApplicationsState;->ensureIcon(Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)V

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;->-get0(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;->-get1(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v2

    iget-object v3, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->-wrap1(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;->-get1(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;->-get3(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->this$0:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;

    iget-object v4, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->-wrap1(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->-wrap0(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;->-get2(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$ViewHolder;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl;->removeFromWhiteLists(Ljava/lang/String;)V

    packed-switch p3, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->this$0:Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;->-wrap2(Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/applications/ExpandedDesktopSettings$AllPackagesAdapter;->notifyDataSetChanged()V

    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl;->addToStatusWhiteList(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl;->addToNavigationWhiteList(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl;->addToStatusWhiteList(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl;->addToNavigationWhiteList(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
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
