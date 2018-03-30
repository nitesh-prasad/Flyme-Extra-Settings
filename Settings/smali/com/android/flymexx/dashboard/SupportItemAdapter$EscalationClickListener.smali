.class final Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;
.super Ljava/lang/Object;
.source "SupportItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/dashboard/SupportItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EscalationClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;


# direct methods
.method private constructor <init>(Lcom/android/flymexx/dashboard/SupportItemAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexx/dashboard/SupportItemAdapter;Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;-><init>(Lcom/android/flymexx/dashboard/SupportItemAdapter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-get0(Lcom/android/flymexx/dashboard/SupportItemAdapter;)Landroid/accounts/Account;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-get1(Lcom/android/flymexx/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0x1e0

    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-get1(Lcom/android/flymexx/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-get4(Lcom/android/flymexx/dashboard/SupportItemAdapter;)Lcom/android/flymexx/overlay/SupportFeatureProvider;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/flymexx/overlay/SupportFeatureProvider;->getAccountLoginIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-get1(Lcom/android/flymexx/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-get4(Lcom/android/flymexx/dashboard/SupportItemAdapter;)Lcom/android/flymexx/overlay/SupportFeatureProvider;

    move-result-object v5

    iget-object v6, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v6}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-get1(Lcom/android/flymexx/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/flymexx/overlay/SupportFeatureProvider;->getSignInHelpIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-get2(Lcom/android/flymexx/dashboard/SupportItemAdapter;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-get1(Lcom/android/flymexx/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0x1e1

    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-wrap1(Lcom/android/flymexx/dashboard/SupportItemAdapter;I)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-get1(Lcom/android/flymexx/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0x1e2

    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-wrap1(Lcom/android/flymexx/dashboard/SupportItemAdapter;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_2

    goto :goto_0

    :pswitch_4
    iget-object v5, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-get4(Lcom/android/flymexx/dashboard/SupportItemAdapter;)Lcom/android/flymexx/overlay/SupportFeatureProvider;

    move-result-object v5

    iget-object v6, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v6}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-get3(Lcom/android/flymexx/dashboard/SupportItemAdapter;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lcom/android/flymexx/overlay/SupportFeatureProvider;->getSupportPhones(Ljava/lang/String;Z)Lcom/android/flymexx/support/SupportPhone;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/flymexx/support/SupportPhone;->getDialIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v5, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-get1(Lcom/android/flymexx/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-get1(Lcom/android/flymexx/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0x1e5

    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-get1(Lcom/android/flymexx/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    move v0, v4

    goto :goto_1

    :pswitch_5
    iget-object v4, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-get4(Lcom/android/flymexx/dashboard/SupportItemAdapter;)Lcom/android/flymexx/overlay/SupportFeatureProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-get3(Lcom/android/flymexx/dashboard/SupportItemAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lcom/android/flymexx/overlay/SupportFeatureProvider;->getSupportPhones(Ljava/lang/String;Z)Lcom/android/flymexx/support/SupportPhone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/flymexx/support/SupportPhoneDialogFragment;->newInstance(Lcom/android/flymexx/support/SupportPhone;)Lcom/android/flymexx/support/SupportPhoneDialogFragment;

    move-result-object v1

    iget-object v4, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-get1(Lcom/android/flymexx/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0x1e6

    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-get1(Lcom/android/flymexx/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "SupportPhoneDialog"

    invoke-virtual {v1, v4, v5}, Lcom/android/flymexx/support/SupportPhoneDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1020014
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1020014
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1020014
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
