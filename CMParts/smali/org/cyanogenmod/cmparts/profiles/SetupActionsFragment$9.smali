.class Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$9;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->requestRingModeDialog(Lcyanogenmod/profiles/RingModeSettings;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

.field final synthetic val$setting:Lcyanogenmod/profiles/RingModeSettings;

.field final synthetic val$values:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;Lcyanogenmod/profiles/RingModeSettings;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$9;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$9;->val$setting:Lcyanogenmod/profiles/RingModeSettings;

    iput-object p3, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$9;->val$values:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$9;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$9;->val$setting:Lcyanogenmod/profiles/RingModeSettings;

    invoke-virtual {v0, v1}, Lcyanogenmod/app/Profile;->setRingMode(Lcyanogenmod/profiles/RingModeSettings;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$9;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mAdapter:Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$9;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->-wrap4(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$9;->val$setting:Lcyanogenmod/profiles/RingModeSettings;

    invoke-virtual {v0, v2}, Lcyanogenmod/profiles/RingModeSettings;->setOverride(Z)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$9;->val$setting:Lcyanogenmod/profiles/RingModeSettings;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$9;->val$values:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcyanogenmod/profiles/RingModeSettings;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$9;->val$setting:Lcyanogenmod/profiles/RingModeSettings;

    invoke-virtual {v0, v2}, Lcyanogenmod/profiles/RingModeSettings;->setOverride(Z)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$9;->val$setting:Lcyanogenmod/profiles/RingModeSettings;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$9;->val$values:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcyanogenmod/profiles/RingModeSettings;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$9;->val$setting:Lcyanogenmod/profiles/RingModeSettings;

    invoke-virtual {v0, v2}, Lcyanogenmod/profiles/RingModeSettings;->setOverride(Z)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$9;->val$setting:Lcyanogenmod/profiles/RingModeSettings;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$9;->val$values:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcyanogenmod/profiles/RingModeSettings;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$9;->val$setting:Lcyanogenmod/profiles/RingModeSettings;

    invoke-virtual {v0, v3}, Lcyanogenmod/profiles/RingModeSettings;->setOverride(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
