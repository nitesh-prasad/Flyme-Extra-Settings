.class Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;
.super Landroid/support/v7/preference/Preference;
.source "AccountSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountPreference"
.end annotation


# instance fields
.field private final mFragment:Ljava/lang/String;

.field private final mFragmentArguments:Landroid/os/Bundle;

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mTitleResId:I

.field private final mTitleResPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/flymexx/accounts/AccountSettings;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/flymexx/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;->this$0:Lcom/android/flymexx/accounts/AccountSettings;

    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;->mTitleResPackageName:Ljava/lang/String;

    iput p5, p0, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;->mTitleResId:I

    iput-object p6, p0, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;->setWidgetLayoutResource(I)V

    invoke-virtual {p0, p3}, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p8}, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p0}, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    const-string/jumbo v1, "android.intent.extra.USER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;->this$0:Lcom/android/flymexx/accounts/AccountSettings;

    invoke-static {v1}, Lcom/android/flymexx/accounts/AccountSettings;->-get0(Lcom/android/flymexx/accounts/AccountSettings;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/flymexx/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v9

    :cond_0
    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/flymexx/Utils;->unlockWorkProfileIfNecessary(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v9

    :cond_1
    invoke-virtual {p0}, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;->mTitleResPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/flymexx/accounts/AccountSettings$AccountPreference;->mTitleResId:I

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lcom/android/flymexx/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;)V

    return v9

    :cond_2
    return v4
.end method
