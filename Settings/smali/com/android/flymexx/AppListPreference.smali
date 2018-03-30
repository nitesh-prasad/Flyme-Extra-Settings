.class public Lcom/android/flymexx/AppListPreference;
.super Lcom/android/flymexx/CustomListPreference;
.source "AppListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/AppListPreference$AppArrayAdapter;,
        Lcom/android/flymexx/AppListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntryDrawables:[Landroid/graphics/drawable/Drawable;

.field protected final mForWork:Z

.field private mShowItemNone:Z

.field private mSummaries:[Ljava/lang/CharSequence;

.field private mSystemAppIndex:I

.field private mType:I

.field protected final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/AppListPreference;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/AppListPreference;->mSummaries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/AppListPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/flymexx/AppListPreference;->mSystemAppIndex:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/android/flymexx/AppListPreference;->mShowItemNone:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/flymexx/AppListPreference;->mSystemAppIndex:I

    iput v3, p0, Lcom/android/flymexx/AppListPreference;->mType:I

    sget-object v2, Lcom/android/flymexx/R$styleable;->WorkPreference:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/flymexx/AppListPreference;->mForWork:Z

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/flymexx/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/flymexx/AppListPreference;->mForWork:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/android/flymexx/AppListPreference;->mUserId:I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/flymexx/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v3, p0, Lcom/android/flymexx/AppListPreference;->mShowItemNone:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/flymexx/AppListPreference;->mSystemAppIndex:I

    iput v3, p0, Lcom/android/flymexx/AppListPreference;->mType:I

    sget-object v2, Lcom/android/flymexx/R$styleable;->WorkPreference:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/flymexx/AppListPreference;->mForWork:Z

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/flymexx/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/flymexx/AppListPreference;->mForWork:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/android/flymexx/AppListPreference;->mUserId:I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 9

    invoke-virtual {p0}, Lcom/android/flymexx/AppListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-boolean v0, p0, Lcom/android/flymexx/AppListPreference;->mShowItemNone:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    :goto_0
    if-eqz v7, :cond_2

    const/4 v6, -0x1

    :goto_1
    new-instance v0, Lcom/android/flymexx/AppListPreference$AppArrayAdapter;

    invoke-virtual {p0}, Lcom/android/flymexx/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/flymexx/AppListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/flymexx/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    const v3, 0x7f040028

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/flymexx/AppListPreference$AppArrayAdapter;-><init>(Lcom/android/flymexx/AppListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V

    return-object v0

    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/flymexx/AppListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    goto :goto_1
.end method

.method protected getSoleAppLabel()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/AppListPreference;->createListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    instance-of v4, p1, Lcom/android/flymexx/AppListPreference$SavedState;

    if-eqz v4, :cond_3

    move-object v3, p1

    check-cast v3, Lcom/android/flymexx/AppListPreference$SavedState;

    iget-boolean v4, v3, Lcom/android/flymexx/AppListPreference$SavedState;->showItemNone:Z

    iput-boolean v4, p0, Lcom/android/flymexx/AppListPreference;->mShowItemNone:Z

    iget v4, p0, Lcom/android/flymexx/AppListPreference;->mType:I

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/android/flymexx/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    iget-object v5, v3, Lcom/android/flymexx/AppListPreference$SavedState;->value:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4, v5}, Lcom/android/flymexx/AppListPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v4, v3, Lcom/android/flymexx/AppListPreference$SavedState;->summaries:[Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/flymexx/AppListPreference;->mSummaries:[Ljava/lang/CharSequence;

    iget-object v4, v3, Lcom/android/flymexx/AppListPreference$SavedState;->superState:Landroid/os/Parcelable;

    invoke-super {p0, v4}, Lcom/android/flymexx/CustomListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_1
    return-void

    :cond_1
    iget v4, p0, Lcom/android/flymexx/AppListPreference;->mType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, v3, Lcom/android/flymexx/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    array-length v2, v4

    new-array v0, v2, [Landroid/content/ComponentName;

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/android/flymexx/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/android/flymexx/AppListPreference$SavedState;->value:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/android/flymexx/AppListPreference;->setComponentNames([Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/android/flymexx/CustomListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    invoke-super {p0}, Lcom/android/flymexx/CustomListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    new-instance v0, Lcom/android/flymexx/AppListPreference$SavedState;

    invoke-virtual {p0}, Lcom/android/flymexx/AppListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/flymexx/AppListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/AppListPreference;->mSummaries:[Ljava/lang/CharSequence;

    iget-boolean v4, p0, Lcom/android/flymexx/AppListPreference;->mShowItemNone:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/flymexx/AppListPreference$SavedState;-><init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Parcelable;)V

    return-object v0
.end method

.method public setComponentNames([Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/flymexx/AppListPreference;->setComponentNames([Landroid/content/ComponentName;Landroid/content/ComponentName;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setComponentNames([Landroid/content/ComponentName;Landroid/content/ComponentName;[Ljava/lang/CharSequence;)V
    .locals 14

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/flymexx/AppListPreference;->mSummaries:[Ljava/lang/CharSequence;

    const/4 v10, 0x1

    iput v10, p0, Lcom/android/flymexx/AppListPreference;->mType:I

    invoke-virtual {p0}, Lcom/android/flymexx/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    array-length v11, p1

    iget-boolean v10, p0, Lcom/android/flymexx/AppListPreference;->mShowItemNone:Z

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_0
    add-int v4, v11, v10

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, -0x1

    const/4 v6, 0x0

    :goto_1
    array-length v10, p1

    if-ge v6, v10, :cond_3

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    aget-object v11, p1, v6

    iget v12, p0, Lcom/android/flymexx/AppListPreference;->mUserId:I

    const/4 v13, 0x0

    invoke-interface {v10, v11, v13, v12}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v10, p1, v6

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v7}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    aget-object v10, p1, v6

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_0

    move v8, v6

    goto :goto_2

    :cond_3
    iget-boolean v10, p0, Lcom/android/flymexx/AppListPreference;->mShowItemNone:Z

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Lcom/android/flymexx/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0da5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v10, ""

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/flymexx/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0200f2

    invoke-virtual {v10, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-interface {v2, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v10}, Lcom/android/flymexx/AppListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v10}, Lcom/android/flymexx/AppListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Landroid/graphics/drawable/Drawable;

    invoke-interface {v5, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/graphics/drawable/Drawable;

    iput-object v10, p0, Lcom/android/flymexx/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v10, -0x1

    if-eq v8, v10, :cond_5

    invoke-virtual {p0, v8}, Lcom/android/flymexx/AppListPreference;->setValueIndex(I)V

    :goto_3
    return-void

    :cond_5
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/flymexx/AppListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v3

    goto/16 :goto_2
.end method

.method public setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/flymexx/AppListPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/flymexx/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    array-length v10, p1

    iget-boolean v9, p0, Lcom/android/flymexx/AppListPreference;->mShowItemNone:Z

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    :goto_0
    add-int v3, v10, v9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, -0x1

    const/4 v9, -0x1

    iput v9, p0, Lcom/android/flymexx/AppListPreference;->mSystemAppIndex:I

    const/4 v5, 0x0

    :goto_1
    array-length v9, p1

    if-ge v5, v9, :cond_3

    :try_start_0
    aget-object v9, p1, v5

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/android/flymexx/AppListPreference;->mUserId:I

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11, v10}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v5

    :cond_0
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_1

    if-eqz p3, :cond_1

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, p3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    iput v5, p0, Lcom/android/flymexx/AppListPreference;->mSystemAppIndex:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    iget-boolean v9, p0, Lcom/android/flymexx/AppListPreference;->mShowItemNone:Z

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/android/flymexx/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0da5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v9, ""

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/flymexx/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0200f2

    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/CharSequence;

    invoke-interface {v1, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v9}, Lcom/android/flymexx/AppListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/CharSequence;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v9}, Lcom/android/flymexx/AppListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Landroid/graphics/drawable/Drawable;

    invoke-interface {v4, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/graphics/drawable/Drawable;

    iput-object v9, p0, Lcom/android/flymexx/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v9, -0x1

    if-eq v7, v9, :cond_5

    invoke-virtual {p0, v7}, Lcom/android/flymexx/AppListPreference;->setValueIndex(I)V

    :goto_3
    return-void

    :cond_5
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/flymexx/AppListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public setShowItemNone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/flymexx/AppListPreference;->mShowItemNone:Z

    return-void
.end method

.method protected setSoleAppLabelAsSummary()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/flymexx/AppListPreference;->getSoleAppLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/AppListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
