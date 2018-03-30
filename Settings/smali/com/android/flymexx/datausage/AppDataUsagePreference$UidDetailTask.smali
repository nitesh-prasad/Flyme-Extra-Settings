.class Lcom/android/flymexx/datausage/AppDataUsagePreference$UidDetailTask;
.super Landroid/os/AsyncTask;
.source "AppDataUsagePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/datausage/AppDataUsagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidDetailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/flymexxlib/net/UidDetail;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItem:Lcom/android/flymexxlib/AppItem;

.field private final mProvider:Lcom/android/flymexxlib/net/UidDetailProvider;

.field private final mTarget:Lcom/android/flymexx/datausage/AppDataUsagePreference;


# direct methods
.method private constructor <init>(Lcom/android/flymexxlib/net/UidDetailProvider;Lcom/android/flymexxlib/AppItem;Lcom/android/flymexx/datausage/AppDataUsagePreference;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/net/UidDetailProvider;

    iput-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsagePreference$UidDetailTask;->mProvider:Lcom/android/flymexxlib/net/UidDetailProvider;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexxlib/AppItem;

    iput-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsagePreference$UidDetailTask;->mItem:Lcom/android/flymexxlib/AppItem;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/datausage/AppDataUsagePreference;

    iput-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsagePreference$UidDetailTask;->mTarget:Lcom/android/flymexx/datausage/AppDataUsagePreference;

    return-void
.end method

.method private static bindView(Lcom/android/flymexxlib/net/UidDetail;Landroid/support/v7/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/flymexxlib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/flymexxlib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static bindView(Lcom/android/flymexxlib/net/UidDetailProvider;Lcom/android/flymexxlib/AppItem;Lcom/android/flymexx/datausage/AppDataUsagePreference;)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p1, Lcom/android/flymexxlib/AppItem;->key:I

    invoke-virtual {p0, v1, v3}, Lcom/android/flymexxlib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/flymexxlib/net/UidDetail;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/android/flymexx/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/flymexxlib/net/UidDetail;Landroid/support/v7/preference/Preference;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/flymexx/datausage/AppDataUsagePreference$UidDetailTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/flymexx/datausage/AppDataUsagePreference$UidDetailTask;-><init>(Lcom/android/flymexxlib/net/UidDetailProvider;Lcom/android/flymexxlib/AppItem;Lcom/android/flymexx/datausage/AppDataUsagePreference;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/android/flymexx/datausage/AppDataUsagePreference$UidDetailTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/flymexxlib/net/UidDetail;
    .locals 3

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsagePreference$UidDetailTask;->mProvider:Lcom/android/flymexxlib/net/UidDetailProvider;

    iget-object v1, p0, Lcom/android/flymexx/datausage/AppDataUsagePreference$UidDetailTask;->mItem:Lcom/android/flymexxlib/AppItem;

    iget v1, v1, Lcom/android/flymexxlib/AppItem;->key:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/flymexxlib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/flymexxlib/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/datausage/AppDataUsagePreference$UidDetailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/flymexxlib/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/flymexxlib/net/UidDetail;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsagePreference$UidDetailTask;->mTarget:Lcom/android/flymexx/datausage/AppDataUsagePreference;

    invoke-static {p1, v0}, Lcom/android/flymexx/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/flymexxlib/net/UidDetail;Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/flymexxlib/net/UidDetail;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/datausage/AppDataUsagePreference$UidDetailTask;->onPostExecute(Lcom/android/flymexxlib/net/UidDetail;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsagePreference$UidDetailTask;->mTarget:Lcom/android/flymexx/datausage/AppDataUsagePreference;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/flymexx/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/flymexxlib/net/UidDetail;Landroid/support/v7/preference/Preference;)V

    return-void
.end method
