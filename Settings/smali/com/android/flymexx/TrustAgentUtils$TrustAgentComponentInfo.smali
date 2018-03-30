.class public Lcom/android/flymexx/TrustAgentUtils$TrustAgentComponentInfo;
.super Ljava/lang/Object;
.source "TrustAgentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/TrustAgentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrustAgentComponentInfo"
.end annotation


# instance fields
.field admin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

.field componentName:Landroid/content/ComponentName;

.field summary:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/flymexx/TrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method
