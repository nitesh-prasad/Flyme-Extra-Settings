.class Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;
.super Landroid/os/AsyncTask;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadIconsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/flymexx/applications/ProtectedAppsActivity$AppEntry;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;


# direct methods
.method private constructor <init>(Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->this$1:Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;-><init>(Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/android/flymexx/applications/ProtectedAppsActivity$AppEntry;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->doInBackground([Lcom/android/flymexx/applications/ProtectedAppsActivity$AppEntry;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/flymexx/applications/ProtectedAppsActivity$AppEntry;)Ljava/lang/Void;
    .locals 7

    const/4 v4, 0x0

    array-length v5, p1

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, p1, v4

    :try_start_0
    iget-object v6, v0, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppEntry;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->this$1:Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-static {v6}, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;->-get0(Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->this$1:Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;

    iget-object v6, v6, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;->this$0:Lcom/android/flymexx/applications/ProtectedAppsActivity;

    invoke-static {v6}, Lcom/android/flymexx/applications/ProtectedAppsActivity;->-get2(Lcom/android/flymexx/applications/ProtectedAppsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v6, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->this$1:Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-static {v6}, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;->-get0(Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {p0, v6}, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->this$1:Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-virtual {v0}, Lcom/android/flymexx/applications/ProtectedAppsActivity$AppsAdapter;->notifyDataSetChanged()V

    return-void
.end method
