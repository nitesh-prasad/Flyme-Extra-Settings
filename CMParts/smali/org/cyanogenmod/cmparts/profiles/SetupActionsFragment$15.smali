.class Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$15;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->requestBrightnessDialog(Lcyanogenmod/profiles/BrightnessSettings;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

.field final synthetic val$brightnessSettings:Lcyanogenmod/profiles/BrightnessSettings;

.field final synthetic val$override:Landroid/widget/CheckBox;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;Landroid/widget/SeekBar;Lcyanogenmod/profiles/BrightnessSettings;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$15;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$15;->val$seekBar:Landroid/widget/SeekBar;

    iput-object p3, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$15;->val$brightnessSettings:Lcyanogenmod/profiles/BrightnessSettings;

    iput-object p4, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$15;->val$override:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$15;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$15;->val$brightnessSettings:Lcyanogenmod/profiles/BrightnessSettings;

    invoke-virtual {v1, v0}, Lcyanogenmod/profiles/BrightnessSettings;->setValue(I)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$15;->val$brightnessSettings:Lcyanogenmod/profiles/BrightnessSettings;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$15;->val$override:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcyanogenmod/profiles/BrightnessSettings;->setOverride(Z)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$15;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    iget-object v1, v1, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$15;->val$brightnessSettings:Lcyanogenmod/profiles/BrightnessSettings;

    invoke-virtual {v1, v2}, Lcyanogenmod/app/Profile;->setBrightness(Lcyanogenmod/profiles/BrightnessSettings;)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$15;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    iget-object v1, v1, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mAdapter:Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;

    invoke-virtual {v1}, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$15;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->-wrap4(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
