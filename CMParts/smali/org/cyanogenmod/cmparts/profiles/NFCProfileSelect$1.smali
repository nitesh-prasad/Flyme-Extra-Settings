.class Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect$1;
.super Ljava/lang/Object;
.source "NFCProfileSelect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect$1;->this$0:Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect$1;->this$0:Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/profiles/NFCProfileSelect;->showProfileSelectionDialog()V

    return-void
.end method
