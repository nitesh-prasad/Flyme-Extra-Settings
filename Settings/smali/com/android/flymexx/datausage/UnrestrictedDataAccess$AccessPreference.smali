.class Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "UnrestrictedDataAccess.java"

# interfaces
.implements Lcom/android/flymexx/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/datausage/UnrestrictedDataAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessPreference"
.end annotation


# instance fields
.field private final mEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

.field private final mState:Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;

.field final synthetic this$0:Lcom/android/flymexx/datausage/UnrestrictedDataAccess;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/flymexx/datausage/UnrestrictedDataAccess;Landroid/content/Context;Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)V
    .locals 2

    iput-object p1, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/flymexx/datausage/UnrestrictedDataAccess;

    invoke-direct {p0, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->setState()V

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setState()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    invoke-virtual {p0, v0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0c0e22

    invoke-virtual {p0, v0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->setSummary(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttached()V
    .locals 1

    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onAttached()V

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/flymexx/datausage/UnrestrictedDataAccess;

    invoke-static {v0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->-get1(Lcom/android/flymexx/datausage/UnrestrictedDataAccess;)Lcom/android/flymexx/datausage/DataSaverBackend;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/flymexx/datausage/DataSaverBackend;->addListener(Lcom/android/flymexx/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference$1;

    invoke-direct {v1, p0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference$1;-><init>(Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-boolean p2, v0, Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->reuse()V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 4

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/flymexx/datausage/AppDataUsage;

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0d14

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/flymexx/datausage/UnrestrictedDataAccess;

    iget-object v3, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    invoke-static {v0, v1, v2, v3}, Lcom/android/flymexx/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;Lcom/android/flymexx/SettingsPreferenceFragment;Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onClick()V

    goto :goto_0
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDetached()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/flymexx/datausage/UnrestrictedDataAccess;

    invoke-static {v0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess;->-get1(Lcom/android/flymexx/datausage/UnrestrictedDataAccess;)Lcom/android/flymexx/datausage/DataSaverBackend;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/flymexx/datausage/DataSaverBackend;->remListener(Lcom/android/flymexx/datausage/DataSaverBackend$Listener;)V

    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onDetached()V

    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/flymexxlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-boolean p2, v0, Lcom/android/flymexx/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->reuse()V

    :cond_0
    return-void
.end method

.method public reuse()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->setState()V

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/UnrestrictedDataAccess$AccessPreference;->notifyChanged()V

    return-void
.end method
