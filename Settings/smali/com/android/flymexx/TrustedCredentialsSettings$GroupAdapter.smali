.class Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mData:Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;

.field final synthetic this$0:Lcom/android/flymexx/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/flymexx/TrustedCredentialsSettings;Lcom/android/flymexx/TrustedCredentialsSettings$Tab;)V
    .locals 2

    iput-object p1, p0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/flymexx/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    new-instance v0, Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;-><init>(Lcom/android/flymexx/TrustedCredentialsSettings;Lcom/android/flymexx/TrustedCredentialsSettings$Tab;Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;)V

    iput-object v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {p0}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->load()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexx/TrustedCredentialsSettings;Lcom/android/flymexx/TrustedCredentialsSettings$Tab;Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;-><init>(Lcom/android/flymexx/TrustedCredentialsSettings;Lcom/android/flymexx/TrustedCredentialsSettings$Tab;)V

    return-void
.end method

.method private getUserIdByGroup(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method private getViewForCertificate(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;Lcom/android/flymexx/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p3, :cond_2

    iget-object v2, p0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/flymexx/TrustedCredentialsSettings;

    invoke-virtual {v2}, Lcom/android/flymexx/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040175

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter$ViewHolder;

    invoke-direct {v0, p0, v5}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter$ViewHolder;-><init>(Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)V

    const v2, 0x7f110274

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-set0(Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v2, 0x7f110275

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-set1(Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v2, 0x7f110276

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    invoke-static {v0, v2}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-set2(Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/widget/Switch;)Landroid/widget/Switch;

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-static {v0}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-get0(Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1}, Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;->-get3(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-get1(Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1}, Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;->-get4(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->-get5(Lcom/android/flymexx/TrustedCredentialsSettings$Tab;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-get2(Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object v5

    invoke-static {p1}, Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;->-get2(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-static {v0}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-get2(Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object v2

    iget-object v5, p0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/flymexx/TrustedCredentialsSettings;

    invoke-static {v5}, Lcom/android/flymexx/TrustedCredentialsSettings;->-get5(Lcom/android/flymexx/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v5

    const-string/jumbo v6, "no_config_credentials"

    new-instance v7, Landroid/os/UserHandle;

    iget v8, p1, Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-static {v0}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-get2(Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setVisibility(I)V

    :cond_1
    return-object p3

    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter$ViewHolder;

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1
.end method


# virtual methods
.method public checkGroupExpandableAndStartWarningActivity(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(IZ)Z

    move-result v0

    return v0
.end method

.method public checkGroupExpandableAndStartWarningActivity(IZ)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iget-object v4, p0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/flymexx/TrustedCredentialsSettings;

    invoke-static {v4}, Lcom/android/flymexx/TrustedCredentialsSettings;->-get5(Lcom/android/flymexx/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object v2

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/flymexx/TrustedCredentialsSettings;

    invoke-virtual {v4}, Lcom/android/flymexx/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return v5

    :cond_1
    iget-object v4, p0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/flymexx/TrustedCredentialsSettings;

    invoke-static {v4}, Lcom/android/flymexx/TrustedCredentialsSettings;->-get5(Lcom/android/flymexx/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/flymexx/TrustedCredentialsSettings;

    invoke-virtual {v4}, Lcom/android/flymexx/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/flymexx/TrustedCredentialsSettings;

    invoke-static {v4, v1}, Lcom/android/flymexx/TrustedCredentialsSettings;->-wrap1(Lcom/android/flymexx/TrustedCredentialsSettings;I)Z

    :cond_2
    return v5

    :cond_3
    const/4 v4, 0x1

    return v4
.end method

.method public getChild(II)Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->getUserIdByGroup(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->getChild(II)Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public getChildAdapter(I)Lcom/android/flymexx/TrustedCredentialsSettings$ChildAdapter;
    .locals 3

    new-instance v0, Lcom/android/flymexx/TrustedCredentialsSettings$ChildAdapter;

    iget-object v1, p0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/flymexx/TrustedCredentialsSettings;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/android/flymexx/TrustedCredentialsSettings$ChildAdapter;-><init>(Lcom/android/flymexx/TrustedCredentialsSettings;Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;ILcom/android/flymexx/TrustedCredentialsSettings$ChildAdapter;)V

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->getChild(II)Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;->-get2(Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;)Lcom/android/flymexx/TrustedCredentialsSettings$Tab;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->getViewForCertificate(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;Lcom/android/flymexx/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 2

    iget-object v1, p0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getGroup(I)Landroid/os/UserHandle;
    .locals 2

    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->getUserIdByGroup(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p3, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/flymexx/TrustedCredentialsSettings;

    invoke-virtual {v2}, Lcom/android/flymexx/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {v0, p4}, Lcom/android/flymexx/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_0
    const v2, 0x1020016

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->getUserInfoByGroup(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0c008c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    return-object p3

    :cond_1
    const v2, 0x7f0c008b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public getUserInfoByGroup(I)Landroid/content/pm/UserInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/flymexx/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/flymexx/TrustedCredentialsSettings;->-get5(Lcom/android/flymexx/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->getUserIdByGroup(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public load()V
    .locals 2

    new-instance v0, Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData$AliasLoader;

    iget-object v1, p0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData$AliasLoader;-><init>(Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/flymexx/TrustedCredentialsSettings;

    invoke-virtual {p0, p3, p4}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->getChild(II)Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/TrustedCredentialsSettings;->-wrap2(Lcom/android/flymexx/TrustedCredentialsSettings;Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1

    invoke-virtual {p0, p3}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public remove(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/TrustedCredentialsSettings$AdapterData;->remove(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method public setExpandableListView(Landroid/widget/ExpandableListView;)V
    .locals 1

    invoke-virtual {p1, p0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    invoke-virtual {p1, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    invoke-virtual {p1, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    return-void
.end method
