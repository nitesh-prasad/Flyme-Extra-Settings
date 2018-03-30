.class Lcom/android/flymexx/DeviceAdminSettings$DeviceAdminListItem;
.super Ljava/lang/Object;
.source "DeviceAdminSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/DeviceAdminSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceAdminListItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/flymexx/DeviceAdminSettings$DeviceAdminListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public active:Z

.field public info:Landroid/app/admin/DeviceAdminInfo;

.field public name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexx/DeviceAdminSettings$DeviceAdminListItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/DeviceAdminSettings$DeviceAdminListItem;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/flymexx/DeviceAdminSettings$DeviceAdminListItem;)I
    .locals 2

    iget-boolean v0, p0, Lcom/android/flymexx/DeviceAdminSettings$DeviceAdminListItem;->active:Z

    iget-boolean v1, p1, Lcom/android/flymexx/DeviceAdminSettings$DeviceAdminListItem;->active:Z

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/flymexx/DeviceAdminSettings$DeviceAdminListItem;->active:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/DeviceAdminSettings$DeviceAdminListItem;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/flymexx/DeviceAdminSettings$DeviceAdminListItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/flymexx/DeviceAdminSettings$DeviceAdminListItem;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/DeviceAdminSettings$DeviceAdminListItem;->compareTo(Lcom/android/flymexx/DeviceAdminSettings$DeviceAdminListItem;)I

    move-result v0

    return v0
.end method
