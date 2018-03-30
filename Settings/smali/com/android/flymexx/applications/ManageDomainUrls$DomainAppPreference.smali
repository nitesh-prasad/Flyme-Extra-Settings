.class Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;
.super Landroid/support/v7/preference/Preference;
.source "ManageDomainUrls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/applications/ManageDomainUrls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DomainAppPreference"
.end annotation


# instance fields
.field private final mEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

.field private final mPm:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/android/flymexx/applications/ManageDomainUrls;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;)Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/flymexx/applications/ManageDomainUrls;Landroid/content/Context;Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)V
    .locals 2

    iput-object p1, p0, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->this$0:Lcom/android/flymexx/applications/ManageDomainUrls;

    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->mPm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->setState()V

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private getDomainsSummary(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7

    const v6, 0x7f0c0d37

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v2, p1}, Lcom/android/flymexx/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0c0d38

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0c0d39

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private setState()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->getDomainsSummary(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference$1;

    invoke-direct {v1, p0}, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference$1;-><init>(Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public reuse()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->setState()V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ManageDomainUrls$DomainAppPreference;->notifyChanged()V

    return-void
.end method
