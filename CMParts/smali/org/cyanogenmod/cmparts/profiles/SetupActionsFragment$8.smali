.class Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$8;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->requestAirplaneModeDialog(Lcyanogenmod/profiles/AirplaneModeSettings;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

.field final synthetic val$setting:Lcyanogenmod/profiles/AirplaneModeSettings;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;Lcyanogenmod/profiles/AirplaneModeSettings;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$8;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$8;->val$setting:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$8;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$8;->val$setting:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-virtual {v0, v1}, Lcyanogenmod/app/Profile;->setAirplaneMode(Lcyanogenmod/profiles/AirplaneModeSettings;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$8;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mAdapter:Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$8;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->-wrap4(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$8;->val$setting:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-virtual {v0, v2}, Lcyanogenmod/profiles/AirplaneModeSettings;->setOverride(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$8;->val$setting:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-virtual {v0, v1}, Lcyanogenmod/profiles/AirplaneModeSettings;->setOverride(Z)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$8;->val$setting:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-virtual {v0, v2}, Lcyanogenmod/profiles/AirplaneModeSettings;->setValue(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$8;->val$setting:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-virtual {v0, v1}, Lcyanogenmod/profiles/AirplaneModeSettings;->setOverride(Z)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$8;->val$setting:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-virtual {v0, v1}, Lcyanogenmod/profiles/AirplaneModeSettings;->setValue(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
