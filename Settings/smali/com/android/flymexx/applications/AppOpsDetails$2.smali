.class Lcom/android/flymexx/applications/AppOpsDetails$2;
.super Ljava/lang/Object;
.source "AppOpsDetails.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/applications/AppOpsDetails;->getSwitchPrefForEntry(Lcom/android/flymexx/applications/AppOpsState$AppOpEntry;Landroid/graphics/drawable/Drawable;)Landroid/support/v14/preference/SwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/applications/AppOpsDetails;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$switchOp:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/flymexx/applications/AppOpsDetails;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/applications/AppOpsDetails$2;->this$0:Lcom/android/flymexx/applications/AppOpsDetails;

    iput p2, p0, Lcom/android/flymexx/applications/AppOpsDetails$2;->val$switchOp:I

    iput p3, p0, Lcom/android/flymexx/applications/AppOpsDetails$2;->val$uid:I

    iput-object p4, p0, Lcom/android/flymexx/applications/AppOpsDetails$2;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v2, 0x1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/flymexx/applications/AppOpsDetails$2;->this$0:Lcom/android/flymexx/applications/AppOpsDetails;

    invoke-static {v1}, Lcom/android/flymexx/applications/AppOpsDetails;->-get0(Lcom/android/flymexx/applications/AppOpsDetails;)Landroid/app/AppOpsManager;

    move-result-object v3

    iget v4, p0, Lcom/android/flymexx/applications/AppOpsDetails$2;->val$switchOp:I

    iget v5, p0, Lcom/android/flymexx/applications/AppOpsDetails$2;->val$uid:I

    iget-object v6, p0, Lcom/android/flymexx/applications/AppOpsDetails$2;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return v2

    :cond_0
    move v1, v2

    goto :goto_0
.end method
