.class Lorg/cyanogenmod/cmparts/input/ButtonSettings$1;
.super Ljava/lang/Object;
.source "ButtonSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/input/ButtonSettings;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/input/ButtonSettings;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/input/ButtonSettings;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$1;->this$0:Lorg/cyanogenmod/cmparts/input/ButtonSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$1;->this$0:Lorg/cyanogenmod/cmparts/input/ButtonSettings;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->-get0(Lorg/cyanogenmod/cmparts/input/ButtonSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$1;->this$0:Lorg/cyanogenmod/cmparts/input/ButtonSettings;

    invoke-static {v0}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->-get1(Lorg/cyanogenmod/cmparts/input/ButtonSettings;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$1;->this$0:Lorg/cyanogenmod/cmparts/input/ButtonSettings;

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->-get0(Lorg/cyanogenmod/cmparts/input/ButtonSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$1;->this$0:Lorg/cyanogenmod/cmparts/input/ButtonSettings;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/input/ButtonSettings$1;->this$0:Lorg/cyanogenmod/cmparts/input/ButtonSettings;

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->-get0(Lorg/cyanogenmod/cmparts/input/ButtonSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/cyanogenmod/cmparts/input/ButtonSettings;->-wrap0(Lorg/cyanogenmod/cmparts/input/ButtonSettings;Z)V

    return-void
.end method
