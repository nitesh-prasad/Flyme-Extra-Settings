.class Lorg/cyanogenmod/cmparts/profiles/AppGroupList$1;
.super Ljava/lang/Object;
.source "AppGroupList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/profiles/AppGroupList;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/profiles/AppGroupList;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/profiles/AppGroupList;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupList$1;->this$0:Lorg/cyanogenmod/cmparts/profiles/AppGroupList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupList$1;->this$0:Lorg/cyanogenmod/cmparts/profiles/AppGroupList;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/profiles/AppGroupList;->-wrap0(Lorg/cyanogenmod/cmparts/profiles/AppGroupList;)V

    return-void
.end method
