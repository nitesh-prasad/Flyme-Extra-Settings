.class Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$13;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->requestVolumeDialog(ILcyanogenmod/profiles/StreamSettings;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

.field final synthetic val$volumizer:Landroid/preference/SeekBarVolumizer;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$13;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$13;->val$volumizer:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$13;->val$volumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$13;->val$volumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$13;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    invoke-static {v0, v1}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->-wrap3(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
