.class public Lcom/android/flymexx/notification/NotificationLockscreenPreference;
.super Lcom/android/flymexx/RestrictedListPreference;
.source "NotificationLockscreenPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/notification/NotificationLockscreenPreference$Listener;
    }
.end annotation


# instance fields
.field private mAdminRestrictingRemoteInput:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

.field private mAllowRemoteInput:Z

.field private mListener:Lcom/android/flymexx/notification/NotificationLockscreenPreference$Listener;

.field private mRemoteInputCheckBoxEnabled:Z

.field private mShowRemoteInput:Z

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/notification/NotificationLockscreenPreference;)Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/notification/NotificationLockscreenPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->mShowRemoteInput:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/flymexx/notification/NotificationLockscreenPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/notification/NotificationLockscreenPreference;IZ)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->checkboxVisibilityForSelectedIndex(IZ)I

    move-result v0

    return v0
.end method

.method private checkboxVisibilityForSelectedIndex(IZ)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->mRemoteInputCheckBoxEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 4

    new-instance v0, Lcom/android/flymexx/RestrictedListPreference$RestrictedArrayAdapter;

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/flymexx/RestrictedListPreference$RestrictedArrayAdapter;-><init>(Lcom/android/flymexx/RestrictedListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method protected isAutoClosePreference()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/flymexx/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/android/flymexx/RestrictedListPreference;->onClick()V

    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/flymexx/RestrictedListPreference;->onDialogClosed(Z)V

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_screen_allow_remote_input"

    iget-boolean v0, p0, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogCreated(Landroid/app/Dialog;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/flymexx/RestrictedListPreference;->onDialogCreated(Landroid/app/Dialog;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->create()V

    const v2, 0x7f110165

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->mListener:Lcom/android/flymexx/notification/NotificationLockscreenPreference$Listener;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const v2, 0x7f110166

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v2, :cond_3

    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    const v2, 0x102032c

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->mListener:Lcom/android/flymexx/notification/NotificationLockscreenPreference$Listener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method protected onDialogStateRestored(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/RestrictedListPreference;->onDialogStateRestored(Landroid/app/Dialog;Landroid/os/Bundle;)V

    move-object v3, p1

    check-cast v3, Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    const v3, 0x102032c

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->mShowRemoteInput:Z

    invoke-direct {p0, v2, v3}, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->checkboxVisibilityForSelectedIndex(IZ)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->mListener:Lcom/android/flymexx/notification/NotificationLockscreenPreference$Listener;

    invoke-virtual {v3, v1}, Lcom/android/flymexx/notification/NotificationLockscreenPreference$Listener;->setView(Landroid/view/View;)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/flymexx/notification/NotificationLockscreenPreference$Listener;

    invoke-direct {v0, p0, p2}, Lcom/android/flymexx/notification/NotificationLockscreenPreference$Listener;-><init>(Lcom/android/flymexx/notification/NotificationLockscreenPreference;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->mListener:Lcom/android/flymexx/notification/NotificationLockscreenPreference$Listener;

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->createListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->getSelectedValuePos()I

    move-result v3

    iget-object v4, p0, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->mListener:Lcom/android/flymexx/notification/NotificationLockscreenPreference$Listener;

    invoke-virtual {p1, v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->mShowRemoteInput:Z

    invoke-virtual {p0}, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "lock_screen_allow_remote_input"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/flymexx/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    const v0, 0x7f04009d

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
