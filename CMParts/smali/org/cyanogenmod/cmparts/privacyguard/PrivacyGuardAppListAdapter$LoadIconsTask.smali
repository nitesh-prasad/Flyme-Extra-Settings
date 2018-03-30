.class Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;
.super Landroid/os/AsyncTask;
.source "PrivacyGuardAppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadIconsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;


# direct methods
.method private constructor <init>(Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->this$0:Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;-><init>(Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;

    invoke-virtual {p0, p1}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->doInBackground([Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;)Ljava/lang/Void;
    .locals 7

    const/4 v3, 0x0

    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    :try_start_0
    iget-object v5, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->this$0:Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;

    invoke-static {v5}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;->-get1(Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->this$0:Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;

    invoke-static {v5}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;->-get0(Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    iget-object v6, v0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {p0, v5}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    return-object v3

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->this$0:Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/privacyguard/PrivacyGuardAppListAdapter;->notifyDataSetChanged()V

    return-void
.end method
