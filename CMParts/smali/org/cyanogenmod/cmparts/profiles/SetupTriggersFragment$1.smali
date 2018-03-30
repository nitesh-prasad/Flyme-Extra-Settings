.class Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment$1;
.super Ljava/lang/Object;
.source "SetupTriggersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment$1;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "Profile"

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment$1;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;

    iget-object v3, v3, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "new_profile_mode"

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment$1;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;

    iget-boolean v3, v3, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->mNewProfileMode:Z

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment$1;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;

    invoke-virtual {v1}, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/cmparts/PartsActivity;

    const-class v1, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment$1;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupTriggersFragment;

    const v3, 0x7f08028f

    const/4 v4, 0x0

    const/4 v6, 0x5

    invoke-virtual/range {v0 .. v6}, Lorg/cyanogenmod/cmparts/PartsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method
