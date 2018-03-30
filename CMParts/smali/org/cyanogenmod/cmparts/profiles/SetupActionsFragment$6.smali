.class Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$6;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->requestDozeModeDialog()Landroid/app/AlertDialog;
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

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$6;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$6;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-static {}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->-get0()[I

    move-result-object v1

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Lcyanogenmod/app/Profile;->setDozeMode(I)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$6;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->-wrap4(Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment$6;->this$0:Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/profiles/SetupActionsFragment;->mAdapter:Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
