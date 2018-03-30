.class Lcom/android/flymexx/AppListPreferenceWithSettings$1;
.super Ljava/lang/Object;
.source "AppListPreferenceWithSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/AppListPreferenceWithSettings;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/AppListPreferenceWithSettings;


# direct methods
.method constructor <init>(Lcom/android/flymexx/AppListPreferenceWithSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/AppListPreferenceWithSettings$1;->this$0:Lcom/android/flymexx/AppListPreferenceWithSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/flymexx/AppListPreferenceWithSettings$1;->this$0:Lcom/android/flymexx/AppListPreferenceWithSettings;

    invoke-static {v1}, Lcom/android/flymexx/AppListPreferenceWithSettings;->-get0(Lcom/android/flymexx/AppListPreferenceWithSettings;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/flymexx/AppListPreferenceWithSettings$1;->this$0:Lcom/android/flymexx/AppListPreferenceWithSettings;

    invoke-virtual {v1}, Lcom/android/flymexx/AppListPreferenceWithSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
