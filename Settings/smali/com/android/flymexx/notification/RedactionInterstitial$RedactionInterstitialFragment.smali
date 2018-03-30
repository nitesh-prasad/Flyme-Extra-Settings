.class public Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;
.super Lcom/android/flymexx/SettingsPreferenceFragment;
.source "RedactionInterstitial.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/notification/RedactionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RedactionInterstitialFragment"
.end annotation


# instance fields
.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRedactSensitiveButton:Lcom/android/flymexx/RestrictedRadioButton;

.field private mShowAllButton:Lcom/android/flymexx/RestrictedRadioButton;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private checkNotificationFeaturesAndSetDisabled(Lcom/android/flymexx/RestrictedRadioButton;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    invoke-static {v1, p2, v2}, Lcom/android/flymexxlib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/flymexx/RestrictedRadioButton;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method private loadFromSettings()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_screen_show_notifications"

    iget v5, p0, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_screen_allow_private_notifications"

    iget v5, p0, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    const/4 v6, 0x1

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    :goto_1
    const v0, 0x7f110205

    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/flymexx/RestrictedRadioButton;

    invoke-virtual {v3}, Lcom/android/flymexx/RestrictedRadioButton;->isDisabledByAdmin()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    iget-object v3, p0, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/flymexx/RestrictedRadioButton;

    invoke-virtual {v3}, Lcom/android/flymexx/RestrictedRadioButton;->isDisabledByAdmin()Z

    move-result v3

    if-nez v3, :cond_1

    const v0, 0x7f110203

    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v0}, Landroid/widget/RadioGroup;->check(I)V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const v0, 0x7f110204

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4a

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v2, 0x7f110204

    if-ne p2, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    const v2, 0x7f110205

    if-eq p2, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "lock_screen_allow_private_notifications"

    if-eqz v1, :cond_2

    move v2, v3

    :goto_2
    iget v7, p0, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    invoke-static {v5, v6, v2, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "lock_screen_show_notifications"

    if-eqz v0, :cond_3

    :goto_3
    iget v4, p0, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    move v3, v4

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f110206

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/notification/RedactionInterstitial;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/flymexx/notification/RedactionInterstitial;->getResultIntentData()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/flymexx/notification/RedactionInterstitial;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0400f5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/flymexx/RestrictedRadioButton;

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->checkNotificationFeaturesAndSetDisabled(Lcom/android/flymexx/RestrictedRadioButton;I)V

    iget-object v0, p0, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/flymexx/RestrictedRadioButton;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->checkNotificationFeaturesAndSetDisabled(Lcom/android/flymexx/RestrictedRadioButton;I)V

    invoke-direct {p0}, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->loadFromSettings()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v1, 0x7f110202

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f110204

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/RestrictedRadioButton;

    iput-object v1, p0, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/flymexx/RestrictedRadioButton;

    const v1, 0x7f110203

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/RestrictedRadioButton;

    iput-object v1, p0, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/flymexx/RestrictedRadioButton;

    iget-object v1, p0, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/flymexx/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    invoke-virtual {p0}, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/flymexx/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f110093

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0c70

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/flymexx/RestrictedRadioButton;

    const v2, 0x7f0c0c6d

    invoke-virtual {v1, v2}, Lcom/android/flymexx/RestrictedRadioButton;->setText(I)V

    iget-object v1, p0, Lcom/android/flymexx/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/flymexx/RestrictedRadioButton;

    const v2, 0x7f0c0c6e

    invoke-virtual {v1, v2}, Lcom/android/flymexx/RestrictedRadioButton;->setText(I)V

    const v1, 0x7f110205

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const v2, 0x7f0c0c6f

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(I)V

    :cond_0
    const v1, 0x7f110206

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
