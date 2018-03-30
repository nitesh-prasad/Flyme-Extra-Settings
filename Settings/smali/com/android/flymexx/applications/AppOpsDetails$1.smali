.class Lcom/android/flymexx/applications/AppOpsDetails$1;
.super Ljava/lang/Object;
.source "AppOpsDetails.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/applications/AppOpsDetails;->getListPrefForEntry(Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;Landroid/graphics/drawable/Drawable;)Landroid/support/v7/preference/ListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/applications/AppOpsDetails;

.field final synthetic val$entry:Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$res:Landroid/content/res/Resources;

.field final synthetic val$switchOp:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/flymexx/applications/AppOpsDetails;IILjava/lang/String;Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/applications/AppOpsDetails$1;->this$0:Lcom/android/flymexx/applications/AppOpsDetails;

    iput p2, p0, Lcom/android/flymexx/applications/AppOpsDetails$1;->val$switchOp:I

    iput p3, p0, Lcom/android/flymexx/applications/AppOpsDetails$1;->val$uid:I

    iput-object p4, p0, Lcom/android/flymexx/applications/AppOpsDetails$1;->val$pkgName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/flymexx/applications/AppOpsDetails$1;->val$entry:Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;

    iput-object p6, p0, Lcom/android/flymexx/applications/AppOpsDetails$1;->val$res:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    const/4 v9, 0x1

    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/android/flymexx/applications/AppOpsDetails$1;->this$0:Lcom/android/flymexx/applications/AppOpsDetails;

    invoke-static {v4}, Lcom/android/flymexx/applications/AppOpsDetails;->-get0(Lcom/android/flymexx/applications/AppOpsDetails;)Landroid/app/AppOpsManager;

    move-result-object v4

    iget v5, p0, Lcom/android/flymexx/applications/AppOpsDetails$1;->val$switchOp:I

    iget v6, p0, Lcom/android/flymexx/applications/AppOpsDetails$1;->val$uid:I

    iget-object v7, p0, Lcom/android/flymexx/applications/AppOpsDetails$1;->val$pkgName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/flymexx/applications/AppOpsDetails$1;->this$0:Lcom/android/flymexx/applications/AppOpsDetails;

    invoke-static {v8, v1}, Lcom/android/flymexx/applications/AppOpsDetails;->-wrap0(Lcom/android/flymexx/applications/AppOpsDetails;I)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    iget-object v4, p0, Lcom/android/flymexx/applications/AppOpsDetails$1;->this$0:Lcom/android/flymexx/applications/AppOpsDetails;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v1

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/flymexx/applications/AppOpsDetails$1;->val$entry:Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;

    iget-object v7, p0, Lcom/android/flymexx/applications/AppOpsDetails$1;->val$res:Landroid/content/res/Resources;

    invoke-virtual {v6, v7}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getCountsText(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/android/flymexx/applications/AppOpsDetails$1;->val$entry:Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;

    iget-object v7, p0, Lcom/android/flymexx/applications/AppOpsDetails$1;->val$res:Landroid/content/res/Resources;

    invoke-virtual {v6, v7, v9}, Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;->getTimeText(Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/android/flymexx/applications/AppOpsDetails;->-wrap1(Lcom/android/flymexx/applications/AppOpsDetails;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v9
.end method
