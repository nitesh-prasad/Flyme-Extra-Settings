.class Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings$4;
.super Ljava/lang/Object;
.source "ProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->resetAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings$4;->this$0:Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings$4;->this$0:Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->-get0(Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/app/ProfileManager;->resetAll()V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings$4;->this$0:Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->-get0(Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings$4;->this$0:Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->-get0(Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;)Lcyanogenmod/app/ProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileManager;->getActiveProfile()Lcyanogenmod/app/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcyanogenmod/app/ProfileManager;->setActiveProfile(Ljava/util/UUID;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings$4;->this$0:Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/profiles/ProfilesSettings;->refreshList()V

    return-void
.end method
