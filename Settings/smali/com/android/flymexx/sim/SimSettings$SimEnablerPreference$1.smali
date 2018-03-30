.class Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$1;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;

    iget-object v1, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;

    iget-object v1, v1, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/flymexx/sim/SimSettings;

    invoke-static {v1}, Lcom/android/flymexx/sim/SimSettings;->-get0(Lcom/android/flymexx/sim/SimSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->-wrap0(Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;

    invoke-static {v0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->-wrap4(Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {v0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->update()V

    goto :goto_0

    :cond_2
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {v0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->update()V

    goto :goto_0
.end method
