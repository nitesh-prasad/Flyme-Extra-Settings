.class Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$1;->this$0:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment$1;->this$0:Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/SettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method
