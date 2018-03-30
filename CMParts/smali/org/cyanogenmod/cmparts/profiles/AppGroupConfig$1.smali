.class Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$1;
.super Ljava/lang/Object;
.source "AppGroupConfig.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$1;->this$0:Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$1;->this$0:Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->-get0(Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;)Landroid/app/NotificationGroup;

    move-result-object v1

    iget-object v2, v0, Lorg/cyanogenmod/cmparts/widget/PackageListAdapter$PackageItem;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/NotificationGroup;->addPackage(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$1;->this$0:Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;->-wrap1(Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig;)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/AppGroupConfig$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
