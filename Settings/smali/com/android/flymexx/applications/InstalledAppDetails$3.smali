.class Lcom/android/flymexx/applications/InstalledAppDetails$3;
.super Lcom/android/flymexx/applications/PermissionsSummaryHelper$PermissionsResultCallback;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/flymexx/applications/InstalledAppDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/applications/InstalledAppDetails$3;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-direct {p0}, Lcom/android/flymexx/applications/PermissionsSummaryHelper$PermissionsResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionSummaryResult(IIILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails$3;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-virtual {v3}, Lcom/android/flymexx/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails$3;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-virtual {v3}, Lcom/android/flymexx/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    const v3, 0x7f0c0d23

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails$3;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-static {v3}, Lcom/android/flymexx/applications/InstalledAppDetails;->-get3(Lcom/android/flymexx/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails$3;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-static {v3}, Lcom/android/flymexx/applications/InstalledAppDetails;->-get3(Lcom/android/flymexx/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :goto_0
    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails$3;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-static {v3}, Lcom/android/flymexx/applications/InstalledAppDetails;->-get3(Lcom/android/flymexx/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-lez p3, :cond_2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f12001d

    invoke-virtual {v1, v4, p3, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    const v3, 0x7f0c0d22

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails$3;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-static {v3}, Lcom/android/flymexx/applications/InstalledAppDetails;->-get3(Lcom/android/flymexx/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexx/applications/InstalledAppDetails$3;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v3, p0, Lcom/android/flymexx/applications/InstalledAppDetails$3;->this$0:Lcom/android/flymexx/applications/InstalledAppDetails;

    invoke-static {v3}, Lcom/android/flymexx/applications/InstalledAppDetails;->-get3(Lcom/android/flymexx/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
