.class Lcom/android/flymexx/datausage/DataUsageList$8;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/datausage/DataUsageList;->bindStats(Landroid/net/NetworkStats;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/flymexx/datausage/DataUsageList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/datausage/DataUsageList$8;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    move-object v1, p1

    check-cast v1, Lcom/android/flymexx/datausage/AppDataUsagePreference;

    invoke-virtual {v1}, Lcom/android/flymexx/datausage/AppDataUsagePreference;->getItem()Lcom/android/flymexxlib/AppItem;

    move-result-object v0

    iget-object v2, p0, Lcom/android/flymexx/datausage/DataUsageList$8;->this$0:Lcom/android/flymexx/datausage/DataUsageList;

    invoke-static {v2, v0}, Lcom/android/flymexx/datausage/DataUsageList;->-wrap2(Lcom/android/flymexx/datausage/DataUsageList;Lcom/android/flymexxlib/AppItem;)V

    const/4 v2, 0x1

    return v2
.end method
