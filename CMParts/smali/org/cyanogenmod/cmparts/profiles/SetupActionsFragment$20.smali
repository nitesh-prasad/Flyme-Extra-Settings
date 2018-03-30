.class Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$20;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->requestActiveAppGroupsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

.field final synthetic val$notificationGroups:[Landroid/app/NotificationGroup;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;[Landroid/app/NotificationGroup;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$20;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$20;->val$notificationGroups:[Landroid/app/NotificationGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$20;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    new-instance v1, Lcyanogenmod/app/ProfileGroup;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$20;->val$notificationGroups:[Landroid/app/NotificationGroup;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcyanogenmod/app/ProfileGroup;-><init>(Ljava/util/UUID;Z)V

    invoke-virtual {v0, v1}, Lcyanogenmod/app/Profile;->addProfileGroup(Lcyanogenmod/app/ProfileGroup;)V

    :goto_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$20;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->-wrap4(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$20;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->-wrap2(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$20;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$20;->val$notificationGroups:[Landroid/app/NotificationGroup;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcyanogenmod/app/Profile;->removeProfileGroup(Ljava/util/UUID;)V

    goto :goto_0
.end method
