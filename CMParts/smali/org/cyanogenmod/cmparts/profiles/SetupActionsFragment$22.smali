.class Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$22;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$22;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$22;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$22;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    iget-object v1, v1, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v0, v1}, Lcyanogenmod/app/ProfileManager;->addProfile(Lcyanogenmod/app/Profile;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$22;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$22;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    return-void
.end method
