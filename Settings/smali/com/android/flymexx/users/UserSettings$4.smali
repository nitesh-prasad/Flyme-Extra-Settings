.class final Lcom/android/flymexx/users/UserSettings$4;
.super Lcom/android/flymexx/search/BaseSearchIndexProvider;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/flymexx/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    const v6, 0x7f0c0b75

    const v5, 0x7f0c0b3c

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->create(Landroid/content/Context;)Lcom/android/flymexx/users/UserSettings$UserCapabilities;

    move-result-object v3

    iget-boolean v4, v3, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v4, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Lcom/android/flymexx/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/flymexx/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/flymexx/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/flymexx/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v4, v3, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    if-nez v4, :cond_1

    iget-boolean v4, v3, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    if-eqz v4, :cond_2

    :cond_1
    new-instance v0, Lcom/android/flymexx/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/flymexx/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    iget-boolean v4, v3, Lcom/android/flymexx/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz v4, :cond_4

    const v4, 0x7f0c0b3e

    :goto_0
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/flymexx/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/flymexx/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {p1}, Lcom/android/flymexx/users/UserSettings;->-wrap2(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v0, Lcom/android/flymexx/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/flymexx/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/flymexx/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/flymexx/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v2

    :cond_4
    const v4, 0x7f0c0b3f

    goto :goto_0
.end method
