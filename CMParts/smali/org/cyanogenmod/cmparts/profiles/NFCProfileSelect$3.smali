.class Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect$3;
.super Ljava/lang/Object;
.source "NFCProfileSelect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;->showProfileSelectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;

.field final synthetic val$profiles:[Lcyanogenmod/app/Profile;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;[Lcyanogenmod/app/Profile;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect$3;->this$0:Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect$3;->val$profiles:[Lcyanogenmod/app/Profile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect$3;->this$0:Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;->-get0(Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect$3;->val$profiles:[Lcyanogenmod/app/Profile;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect$3;->this$0:Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;

    invoke-static {v2}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;->-get0(Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;)I

    move-result v2

    aget-object v0, v1, v2

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect$3;->this$0:Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;->-get2(Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcyanogenmod/app/Profile;->addSecondaryUuid(Ljava/util/UUID;)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect$3;->this$0:Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;->-get1(Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;)Lcyanogenmod/app/ProfileManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcyanogenmod/app/ProfileManager;->updateProfile(Lcyanogenmod/app/Profile;)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect$3;->this$0:Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;

    const v2, 0x7f08026c

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect$3;->this$0:Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;

    invoke-virtual {v1}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;->finish()V

    return-void
.end method
