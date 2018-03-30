.class public Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;
.super Lcom/android/flymexx/InstrumentedFragment;
.source "UserDictionaryAddWordFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# instance fields
.field private mContents:Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;

.field private mIsDeleting:Z

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/InstrumentedFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    return-void
.end method

.method private updateSpinner()V
    .locals 4

    iget-object v2, p0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;->getLocalesList(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/flymexx/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c08b5

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0, v2}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    const v2, 0x7f0c0a99

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v1, 0x0

    const v0, 0x7f040186

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    iget-object v0, p0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;

    iget-object v1, p0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;

    :goto_0
    invoke-virtual {p0}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v2}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;->getCurrentUserDictionaryLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/flymexx/inputmethod/UserDictionarySettingsUtils;->getLocaleDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;

    iget-object v1, p0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;

    invoke-direct {v0, v1, v2}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;)V

    iput-object v0, p0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    invoke-virtual {v0}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->isMoreLanguages()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/SettingsActivity;

    new-instance v2, Lcom/android/flymexx/inputmethod/UserDictionaryLocalePicker;

    invoke-direct {v2, p0}, Lcom/android/flymexx/inputmethod/UserDictionaryLocalePicker;-><init>(Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/flymexx/SettingsActivity;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->getLocaleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;

    const-string/jumbo v2, "locale"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;->delete(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    invoke-virtual {p0}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/flymexx/InstrumentedFragment;->onPause()V

    iget-boolean v0, p0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;Landroid/os/Bundle;)I

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/flymexx/InstrumentedFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/flymexx/inputmethod/UserDictionaryAddWordFragment;->updateSpinner()V

    return-void
.end method
