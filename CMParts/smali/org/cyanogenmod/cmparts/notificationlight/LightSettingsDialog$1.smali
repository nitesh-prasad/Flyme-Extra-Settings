.class Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog$1;
.super Ljava/lang/Object;
.source "LightSettingsDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog$1;->this$0:Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog$1;->this$0:Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;

    invoke-static {v2}, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;->-get2(Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;)Landroid/widget/Spinner;

    move-result-object v2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog$1;->this$0:Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;

    invoke-static {v2}, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;->-get1(Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;)Landroid/widget/Spinner;

    move-result-object v2

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog$1;->this$0:Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;

    invoke-static {v3}, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;->-get2(Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog$1;->this$0:Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;

    invoke-virtual {v3}, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;->getPulseSpeedOn()I

    move-result v3

    if-eq v3, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog$1;->this$0:Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;->-wrap0(Lorg/cyanogenmod/cmparts/notificationlight/LightSettingsDialog;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
