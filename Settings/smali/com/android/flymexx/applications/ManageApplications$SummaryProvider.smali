.class Lcom/android/flymexx/applications/ManageApplications$SummaryProvider;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoader:Lcom/android/flymexx/dashboard/SummaryLoader;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/applications/ManageApplications$SummaryProvider;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/applications/ManageApplications$SummaryProvider;)Lcom/android/flymexx/dashboard/SummaryLoader;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ManageApplications$SummaryProvider;->mLoader:Lcom/android/flymexx/dashboard/SummaryLoader;

    return-object v0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/flymexx/dashboard/SummaryLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/flymexx/applications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/flymexx/applications/ManageApplications$SummaryProvider;->mLoader:Lcom/android/flymexx/dashboard/SummaryLoader;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/flymexx/dashboard/SummaryLoader;Lcom/android/flymexx/applications/ManageApplications$SummaryProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/applications/ManageApplications$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/flymexx/dashboard/SummaryLoader;)V

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/flymexx/applications/ManageApplications$SummaryProvider$1;

    iget-object v1, p0, Lcom/android/flymexx/applications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/flymexx/applications/ManageApplications$SummaryProvider$1;-><init>(Lcom/android/flymexx/applications/ManageApplications$SummaryProvider;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/applications/ManageApplications$SummaryProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
