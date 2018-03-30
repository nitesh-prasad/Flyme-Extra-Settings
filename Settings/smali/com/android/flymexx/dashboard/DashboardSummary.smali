.class public Lcom/android/flymexx/dashboard/DashboardSummary;
.super Lcom/android/flymexx/InstrumentedFragment;
.source "DashboardSummary.java"

# interfaces
.implements Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoryListener;
.implements Lcom/android/flymexx/dashboard/conditional/ConditionManager$ConditionListener;
.implements Lcom/android/flymexx/dashboard/conditional/FocusRecyclerView$FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/dashboard/DashboardSummary$SuggestionLoader;
    }
.end annotation


# static fields
.field public static final INITIAL_ITEMS:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/flymexx/dashboard/DashboardAdapter;

.field private mConditionManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

.field private mDashboard:Lcom/android/flymexx/dashboard/conditional/FocusRecyclerView;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mSuggestionParser:Lcom/android/flymexxlib/SuggestionParser;

.field private mSuggestionsChecks:Lcom/android/flymexx/dashboard/SuggestionsChecks;

.field private mSuggestionsHiddenLogged:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionsShownLogged:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSummaryLoader:Lcom/android/flymexx/dashboard/SummaryLoader;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/dashboard/DashboardSummary;)Lcom/android/flymexx/dashboard/DashboardAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mAdapter:Lcom/android/flymexx/dashboard/DashboardAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/dashboard/DashboardSummary;)Lcom/android/flymexxlib/SuggestionParser;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mSuggestionParser:Lcom/android/flymexxlib/SuggestionParser;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/dashboard/DashboardSummary;)Lcom/android/flymexx/dashboard/SuggestionsChecks;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mSuggestionsChecks:Lcom/android/flymexx/dashboard/SuggestionsChecks;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/flymexx/dashboard/DashboardSummary;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/android/flymexx/Settings$WifiSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/android/flymexx/Settings$BluetoothSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/android/flymexx/Settings$DataUsageSummaryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lcom/android/flymexx/Settings$PowerUsageSummaryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lcom/android/flymexx/Settings$ManageApplicationsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-class v1, Lcom/android/flymexx/Settings$StorageSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/flymexx/dashboard/DashboardSummary;->INITIAL_ITEMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private rebuildUI()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DashboardSummary"

    const-string/jumbo v1, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/android/flymexx/dashboard/DashboardSummary$SuggestionLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/flymexx/dashboard/DashboardSummary$SuggestionLoader;-><init>(Lcom/android/flymexx/dashboard/DashboardSummary;Lcom/android/flymexx/dashboard/DashboardSummary$SuggestionLoader;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/dashboard/DashboardSummary$SuggestionLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method public onCategoriesChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/dashboard/DashboardSummary;->rebuildUI()V

    return-void
.end method

.method public onConditionsChanged()V
    .locals 2

    const-string/jumbo v0, "DashboardSummary"

    const-string/jumbo v1, "onConditionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mAdapter:Lcom/android/flymexx/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mConditionManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/flymexx/dashboard/DashboardAdapter;->setConditions(Ljava/util/List;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-super {p0, p1}, Lcom/android/flymexx/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/flymexx/SettingsActivity;

    invoke-virtual {v4}, Lcom/android/flymexx/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    new-instance v4, Lcom/android/flymexx/dashboard/SummaryLoader;

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/flymexx/dashboard/SummaryLoader;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v4, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/flymexx/dashboard/SummaryLoader;

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;Z)Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mConditionManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    new-instance v4, Lcom/android/flymexxlib/SuggestionParser;

    const-string/jumbo v5, "suggestions"

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const v6, 0x7f080066

    invoke-direct {v4, v1, v5, v6}, Lcom/android/flymexxlib/SuggestionParser;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    iput-object v4, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mSuggestionParser:Lcom/android/flymexxlib/SuggestionParser;

    new-instance v4, Lcom/android/flymexx/dashboard/SuggestionsChecks;

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/flymexx/dashboard/SuggestionsChecks;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mSuggestionsChecks:Lcom/android/flymexx/dashboard/SuggestionsChecks;

    if-nez p1, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mSuggestionsHiddenLogged:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v4, "suggestions_shown_logged"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    const-string/jumbo v4, "suggestions_hidden_logged"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mSuggestionsHiddenLogged:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f040059

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/flymexx/dashboard/SummaryLoader;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/SummaryLoader;->release()V

    invoke-super {p0}, Lcom/android/flymexx/InstrumentedFragment;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "suggestions_hidden_logged"

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mSuggestionsHiddenLogged:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v0, "suggestions_shown_logged"

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "scroll_position"

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mAdapter:Lcom/android/flymexx/dashboard/DashboardAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mAdapter:Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/dashboard/DashboardAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-super {p0}, Lcom/android/flymexx/InstrumentedFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;

    invoke-virtual {v6, p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->addCategoryListener(Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoryListener;)V

    iget-object v6, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/flymexx/dashboard/SummaryLoader;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/flymexx/dashboard/SummaryLoader;->setListening(Z)V

    iget-object v6, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mConditionManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v6}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/dashboard/conditional/Condition;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/Condition;->shouldShow()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mAdapter:Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-virtual {v6}, Lcom/android/flymexx/dashboard/DashboardAdapter;->getSuggestions()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mAdapter:Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-virtual {v6}, Lcom/android/flymexx/dashboard/DashboardAdapter;->getSuggestions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/flymexxlib/drawer/Tile;

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/android/flymexx/dashboard/DashboardAdapter;->getSuggestionIdentifier(Landroid/content/Context;Lcom/android/flymexxlib/drawer/Tile;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x180

    invoke-static {v6, v8, v7}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 7

    invoke-super {p0}, Lcom/android/flymexx/InstrumentedFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;

    invoke-virtual {v5, p0}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->remCategoryListener(Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$CategoryListener;)V

    iget-object v5, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/flymexx/dashboard/SummaryLoader;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/flymexx/dashboard/SummaryLoader;->setListening(Z)V

    iget-object v5, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mConditionManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v5}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/dashboard/conditional/Condition;

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/Condition;->shouldShow()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/flymexx/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mAdapter:Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-virtual {v5}, Lcom/android/flymexx/dashboard/DashboardAdapter;->getSuggestions()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mAdapter:Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-virtual {v5}, Lcom/android/flymexx/dashboard/DashboardAdapter;->getSuggestions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/flymexxlib/drawer/Tile;

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/flymexx/dashboard/DashboardAdapter;->getSuggestionIdentifier(Landroid/content/Context;Lcom/android/flymexxlib/drawer/Tile;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mSuggestionsHiddenLogged:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mSuggestionsHiddenLogged:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x181

    invoke-static {v5, v6, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v1, 0x7f1100e6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/dashboard/conditional/FocusRecyclerView;

    iput-object v1, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mDashboard:Lcom/android/flymexx/dashboard/conditional/FocusRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    if-eqz p2, :cond_0

    const-string/jumbo v1, "scroll_position"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mDashboard:Lcom/android/flymexx/dashboard/conditional/FocusRecyclerView;

    iget-object v4, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v4}, Lcom/android/flymexx/dashboard/conditional/FocusRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mDashboard:Lcom/android/flymexx/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v1, v5}, Lcom/android/flymexx/dashboard/conditional/FocusRecyclerView;->setHasFixedSize(Z)V

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mDashboard:Lcom/android/flymexx/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v1, p0}, Lcom/android/flymexx/dashboard/conditional/FocusRecyclerView;->setListener(Lcom/android/flymexx/dashboard/conditional/FocusRecyclerView$FocusListener;)V

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mDashboard:Lcom/android/flymexx/dashboard/conditional/FocusRecyclerView;

    new-instance v4, Lcom/android/flymexx/dashboard/DashboardDecorator;

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/flymexx/dashboard/DashboardDecorator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lcom/android/flymexx/dashboard/conditional/FocusRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance v1, Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-virtual {p0}, Lcom/android/flymexx/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mSuggestionParser:Lcom/android/flymexxlib/SuggestionParser;

    iget-object v6, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mConditionManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v6}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v4, v5, p2, v6}, Lcom/android/flymexx/dashboard/DashboardAdapter;-><init>(Landroid/content/Context;Lcom/android/flymexxlib/SuggestionParser;Landroid/os/Bundle;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mAdapter:Lcom/android/flymexx/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mDashboard:Lcom/android/flymexx/dashboard/conditional/FocusRecyclerView;

    iget-object v4, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mAdapter:Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-virtual {v1, v4}, Lcom/android/flymexx/dashboard/conditional/FocusRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/flymexx/dashboard/SummaryLoader;

    iget-object v4, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mAdapter:Lcom/android/flymexx/dashboard/DashboardAdapter;

    invoke-virtual {v1, v4}, Lcom/android/flymexx/dashboard/SummaryLoader;->setAdapter(Lcom/android/flymexx/dashboard/DashboardAdapter;)V

    iget-object v1, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mDashboard:Lcom/android/flymexx/dashboard/conditional/FocusRecyclerView;

    invoke-static {v1}, Lcom/android/flymexx/dashboard/conditional/ConditionAdapterUtils;->addDismiss(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {p0}, Lcom/android/flymexx/dashboard/DashboardSummary;->rebuildUI()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mConditionManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v2, p0}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->addListener(Lcom/android/flymexx/dashboard/conditional/ConditionManager$ConditionListener;)V

    iget-object v2, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mConditionManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->refreshAll()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/flymexx/dashboard/DashboardSummary;->mConditionManager:Lcom/android/flymexx/dashboard/conditional/ConditionManager;

    invoke-virtual {v2, p0}, Lcom/android/flymexx/dashboard/conditional/ConditionManager;->remListener(Lcom/android/flymexx/dashboard/conditional/ConditionManager$ConditionListener;)V

    goto :goto_0
.end method
