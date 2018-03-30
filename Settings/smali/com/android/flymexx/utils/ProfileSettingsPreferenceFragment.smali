.class public abstract Lcom/android/flymexx/utils/ProfileSettingsPreferenceFragment;
.super Lcom/android/flymexx/SettingsPreferenceFragment;
.source "ProfileSettingsPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getIntentActionString()Ljava/lang/String;
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string/jumbo v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/flymexx/utils/ProfileSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/flymexx/utils/ProfileSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/flymexxlib/drawer/UserAdapter;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/flymexxlib/drawer/UserAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const v3, 0x7f04012d

    invoke-virtual {p0, v3}, Lcom/android/flymexx/utils/ProfileSettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v3, Lcom/android/flymexx/utils/ProfileSettingsPreferenceFragment$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/flymexx/utils/ProfileSettingsPreferenceFragment$1;-><init>(Lcom/android/flymexx/utils/ProfileSettingsPreferenceFragment;Lcom/android/flymexxlib/drawer/UserAdapter;Landroid/widget/Spinner;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    return-void
.end method
