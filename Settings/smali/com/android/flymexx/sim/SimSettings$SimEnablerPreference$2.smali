.class Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$2;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$2;->this$1:Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference$2;->this$1:Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {v0}, Lcom/android/flymexx/sim/SimSettings$SimEnablerPreference;->update()V

    return-void
.end method
