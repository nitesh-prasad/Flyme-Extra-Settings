.class public Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;
.super Landroid/app/Fragment;
.source "ContributorsCloudFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Lorg/cyanogenmod/cmparts/search/Searchable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$1;,
        Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;,
        Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsAdapter;,
        Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsDataHolder;,
        Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsViewHolder;,
        Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lorg/cyanogenmod/cmparts/search/Searchable$SearchIndexProvider;


# instance fields
.field private mContributionsInfoMenuItem:Landroid/view/MenuItem;

.field private mContributorCommits:I

.field private mContributorInfoMenuItem:Landroid/view/MenuItem;

.field private mContributorName:Ljava/lang/String;

.field private mContributorNick:Ljava/lang/String;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mFailedView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mLastUpdate:J

.field private mLoadingView:Landroid/view/View;

.field private mSearchAdapter:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsAdapter;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchResults:Landroid/widget/ListView;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSelectedContributor:I

.field private mTotalCommits:I

.field private mTotalContributors:I

.field private mViewController:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mLoadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;)I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSelectedContributor:I

    return v0
.end method

.method static synthetic -get3(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;)Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mViewController:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;Landroid/content/Context;I)Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->generateViewInfo(Landroid/content/Context;I)Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->loadContributorsInfo(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap2(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->loadUserInfo(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsDataHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->onContributorSelected(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsDataHolder;)V

    return-void
.end method

.method static synthetic -wrap4(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->onLoadCloudDataFailed()V

    return-void
.end method

.method static synthetic -wrap5(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->onLoadCloudDataSuccess(FF)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$1;

    invoke-direct {v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$1;-><init>()V

    sput-object v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->SEARCH_INDEX_DATA_PROVIDER:Lorg/cyanogenmod/cmparts/search/Searchable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSelectedContributor:I

    return-void
.end method

.method private animateFadeOutFadeIn(Landroid/view/View;Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const-string/jumbo v2, "alpha"

    new-array v3, v7, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "alpha"

    new-array v3, v7, [F

    aput v6, v3, v5

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$4;

    invoke-direct {v1, p0, p1, p2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$4;-><init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static extractContributorsCloudDatabase(Landroid/content/Context;)V
    .locals 11

    const/16 v0, 0x400

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v8, "contributors.db"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string/jumbo v9, "contributors.db"

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, -0x1

    const/16 v8, 0x400

    :try_start_1
    new-array v1, v8, [B

    :goto_0
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v4, v1, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v8, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v5, v6

    :goto_1
    :try_start_2
    const-string/jumbo v8, "ContributorsCloud"

    const-string/jumbo v9, "Failed to extract contributors database"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    return-void

    :cond_1
    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_3
    move-object v5, v6

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_2

    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    throw v8

    :catch_3
    move-exception v3

    goto :goto_5

    :catchall_1
    move-exception v8

    move-object v5, v6

    goto :goto_4

    :catch_4
    move-exception v3

    goto :goto_1
.end method

.method private declared-synchronized generateViewInfo(Landroid/content/Context;I)Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;
    .locals 38

    monitor-enter p0

    const/4 v4, 0x0

    const/high16 v18, -0x40800000    # -1.0f

    const/high16 v19, -0x40800000    # -1.0f

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const/16 v34, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->getDatabase(Landroid/content/Context;Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v17

    if-nez v17, :cond_0

    const/16 v34, 0x0

    monitor-exit p0

    return-object v34

    :cond_0
    :try_start_1
    const-string/jumbo v34, "select value from info where key = ?;"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const-string/jumbo v36, "orig_size"

    const/16 v37, 0x0

    aput-object v36, v35, v37

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v34

    if-eqz v34, :cond_1

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const-string/jumbo v34, "select id, name, x, y, r, fs from metadata;"

    const/16 v35, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    if-nez v7, :cond_2

    const/16 v34, 0x0

    monitor-exit p0

    return-object v34

    :cond_1
    const/16 v34, 0x0

    monitor-exit p0

    return-object v34

    :cond_2
    const v34, 0x7f090048

    :try_start_2
    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    const v34, 0x7f090049

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    new-instance v27, Landroid/graphics/Paint;

    const/16 v34, 0x5

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-direct/range {p0 .. p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->hasLargeHeap()Z

    move-result v34

    if-eqz v34, :cond_9

    const/16 v6, 0x800

    :goto_0
    sget-object v34, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v34

    invoke-static {v6, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v34

    if-eqz v34, :cond_e

    const-string/jumbo v34, "id"

    move-object/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const-string/jumbo v34, "name"

    move-object/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v34, "x"

    move-object/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v26

    invoke-direct {v0, v1, v2, v6}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->translate(FII)F

    move-result v32

    const-string/jumbo v34, "y"

    move-object/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v26

    invoke-direct {v0, v1, v2, v6}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->translate(FII)F

    move-result v33

    const-string/jumbo v34, "r"

    move-object/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    const-string/jumbo v34, "fs"

    move-object/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v26

    invoke-direct {v0, v1, v2, v6}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->translate(FII)F

    move-result v20

    if-gez v22, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v26

    invoke-direct {v0, v1, v2, v6}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->translate(FII)F

    move-result v34

    sub-float v33, v33, v34

    :cond_4
    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    move/from16 v34, v13

    :goto_2
    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/16 v31, 0x0

    const/16 v21, 0x0

    move/from16 v0, p2

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    if-eqz v28, :cond_6

    :cond_5
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move/from16 v2, v35

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v21, v0

    :cond_6
    move/from16 v0, p2

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    const/16 v34, -0x1

    move/from16 v0, v28

    move/from16 v1, v34

    if-ne v0, v1, :cond_8

    :cond_7
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v31

    :cond_8
    if-nez v28, :cond_b

    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v27

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_3
    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/ImageView;->getWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/ImageView;->getHeight()I

    move-result v23

    div-int/lit8 v15, v24, 0x2

    div-int/lit8 v16, v23, 0x2

    div-int/lit8 v9, v6, 0x2

    div-int/lit8 v10, v6, 0x2

    const/4 v14, 0x0

    const/4 v11, 0x0

    if-nez v28, :cond_d

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v34

    invoke-direct {v0, v1, v6, v2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->translate(FII)F

    move-result v34

    const/high16 v35, 0x40000000    # 2.0f

    div-float v14, v34, v35

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v34

    invoke-direct {v0, v1, v6, v2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->translate(FII)F

    move-result v34

    const/high16 v35, 0x40000000    # 2.0f

    div-float v11, v34, v35

    :goto_4
    int-to-float v0, v15

    move/from16 v34, v0

    int-to-float v0, v9

    move/from16 v35, v0

    sub-float v35, v32, v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v24

    invoke-direct {v0, v1, v6, v2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->translate(FII)F

    move-result v35

    add-float v34, v34, v35

    add-float v18, v34, v14

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v34, v0

    int-to-float v0, v10

    move/from16 v35, v0

    sub-float v35, v33, v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v23

    invoke-direct {v0, v1, v6, v2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->translate(FII)F

    move-result v35

    add-float v34, v34, v35

    add-float v19, v34, v11

    goto/16 :goto_1

    :cond_9
    const/16 v6, 0x400

    goto/16 :goto_0

    :cond_a
    move/from16 v34, v12

    goto/16 :goto_2

    :cond_b
    const/16 v34, -0x1

    move/from16 v0, v28

    move/from16 v1, v34

    if-ne v0, v1, :cond_c

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    sub-float v34, v31, v21

    move/from16 v0, v21

    move/from16 v1, v34

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v34, -0x3d4c0000    # -90.0f

    move/from16 v0, v34

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v27

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v34

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v34
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v34

    monitor-exit p0

    throw v34

    :cond_c
    :try_start_4
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    const/high16 v34, 0x40000000    # 2.0f

    div-float v34, v21, v34

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v34, 0x42b40000    # 90.0f

    move/from16 v0, v34

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v27

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_3

    :cond_d
    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v34

    invoke-direct {v0, v1, v6, v2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->translate(FII)F

    move-result v34

    const/high16 v35, 0x40000000    # 2.0f

    div-float v14, v34, v35

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v34

    invoke-direct {v0, v1, v6, v2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->translate(FII)F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v34

    const/high16 v35, 0x40000000    # 2.0f

    div-float v11, v34, v35

    goto/16 :goto_4

    :cond_e
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    new-instance v30, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;

    const/16 v34, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;-><init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;)V

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;->mBitmap:Landroid/graphics/Bitmap;

    move/from16 v0, v18

    move-object/from16 v1, v30

    iput v0, v1, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;->mFocusX:F

    move/from16 v0, v19

    move-object/from16 v1, v30

    iput v0, v1, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ViewInfo;->mFocusY:F
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-object v30
.end method

.method private declared-synchronized getDatabase(Landroid/content/Context;Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 7

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_3

    const-string/jumbo v3, "contributors.db"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    const-string/jumbo v3, "ContributorsCloud"

    const-string/jumbo v4, "Cannot open cloud database: contributors.db. db == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v6

    :cond_0
    :try_start_2
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v3

    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v3, "ContributorsCloud"

    const-string/jumbo v4, "Cannot open cloud database: contributors.db"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :try_start_4
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    :try_start_5
    invoke-static {p1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->extractContributorsCloudDatabase(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->getDatabase(Landroid/content/Context;Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v6

    :cond_3
    :try_start_6
    iget-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private hasLargeHeap()Z
    .locals 3

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    const/16 v2, 0x60

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadContributorsInfo(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iput v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mTotalContributors:I

    iput v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mTotalCommits:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mLastUpdate:J

    invoke-direct {p0, p1, v6}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->getDatabase(Landroid/content/Context;Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "select count(*) from metadata where id > 0;"

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mTotalContributors:I

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string/jumbo v2, "select sum(commits) from metadata where id > 0;"

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mTotalCommits:I

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string/jumbo v2, "select value from info where key = ?;"

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "date"

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mLastUpdate:J

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1
    return-void

    :cond_2
    return-void

    :cond_3
    return-void
.end method

.method private loadUserInfo(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->getDatabase(Landroid/content/Context;Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    iget v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSelectedContributor:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    const-string/jumbo v3, "select m1.name, m1.username, m1.commits from metadata as m1 where m1.id = ?;"

    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mContributorName:Ljava/lang/String;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mContributorNick:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mContributorCommits:I

    return-void

    :cond_1
    return-void
.end method

.method private onContributorSelected(I)V
    .locals 2

    const/4 v1, 0x1

    iput p1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSelectedContributor:I

    new-instance v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;

    invoke-direct {v0, p0, v1, v1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;-><init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;ZZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->collapseActionView()Z

    :cond_0
    return-void
.end method

.method private onContributorSelected(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsDataHolder;)V
    .locals 1

    iget v0, p1, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsDataHolder;->mId:I

    invoke-direct {p0, v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->onContributorSelected(I)V

    return-void
.end method

.method private onLoadCloudDataFailed()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mLoadingView:Landroid/view/View;

    :goto_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mFailedView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->animateFadeOutFadeIn(Landroid/view/View;Landroid/view/View;)V

    invoke-direct {p0, v2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->showMenuItems(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchResults:Landroid/widget/ListView;

    goto :goto_0
.end method

.method private onLoadCloudDataSuccess(FF)V
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mLoadingView:Landroid/view/View;

    :goto_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->animateFadeOutFadeIn(Landroid/view/View;Landroid/view/View;)V

    invoke-direct {p0, v3}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->showMenuItems(Z)V

    cmpl-float v0, p1, v2

    if-eqz v0, :cond_0

    cmpl-float v0, p2, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mViewController:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    const/16 v1, 0x9c4

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->setZoomTransitionDuration(I)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mViewController:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, p1, p2, v3}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->setScale(FFFZ)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$3;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$3;-><init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchResults:Landroid/widget/ListView;

    goto :goto_0
.end method

.method private performFilter(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsDataHolder;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->getDatabase(Landroid/content/Context;Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    return-object v5

    :cond_0
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v5, "\\|"

    const-string/jumbo v6, ""

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v7

    const-string/jumbo v5, "select id, name || case when username is null then \'\' else \' <\'||username||\'>\' end contributor from metadata where lower(filter) like lower(\'%\' || ? || \'%\') and id > 0 order by commits desc"

    invoke-virtual {v2, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    return-object v5

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v3, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsDataHolder;

    invoke-direct {v3, v8}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsDataHolder;-><init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsDataHolder;)V

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsDataHolder;->mId:I

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsDataHolder;->mLabel:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method private showContributorsInfo(Landroid/content/Context;)V
    .locals 12

    const/4 v10, -0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    invoke-static {p1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    iget v8, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mTotalContributors:I

    if-eq v8, v10, :cond_0

    iget v8, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mTotalContributors:I

    int-to-long v8, v8

    invoke-virtual {v4, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    :goto_0
    iget v8, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mTotalCommits:I

    if-eq v8, v10, :cond_1

    iget v8, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mTotalCommits:I

    int-to-long v8, v8

    invoke-virtual {v4, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    :goto_1
    iget-wide v8, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mLastUpdate:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mLastUpdate:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mLastUpdate:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0802f6

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v9, 0x1

    aput-object v6, v8, v9

    const/4 v9, 0x2

    aput-object v3, v8, v9

    const v9, 0x7f0802f7

    invoke-virtual {p0, v9, v8}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v8, 0x104000a

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const-string/jumbo v7, "-"

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "-"

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "-"

    goto :goto_2
.end method

.method private showMenuItems(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mContributorInfoMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mContributorInfoMenuItem:Landroid/view/MenuItem;

    iget v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSelectedContributor:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    move v0, p1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mContributionsInfoMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mContributionsInfoMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchView:Landroid/widget/SearchView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private showUserInfo(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    iget-object v6, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mContributorName:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mContributorName:Ljava/lang/String;

    :goto_0
    iget-object v6, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mContributorNick:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mContributorNick:Ljava/lang/String;

    :goto_1
    iget-object v6, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mContributorName:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget v6, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mContributorCommits:I

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0802f4

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    const/4 v7, 0x2

    aput-object v1, v6, v7

    const v7, 0x7f0802f5

    invoke-virtual {p0, v7, v6}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v6, 0x104000a

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const-string/jumbo v3, "-"

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "-"

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "-"

    goto :goto_2
.end method

.method private translate(FII)F
    .locals 2

    int-to-float v0, p3

    mul-float/2addr v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onClose()Z
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchResults:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->animateFadeOutFadeIn(Landroid/view/View;Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->setHasOptionsMenu(Z)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "state_selected_contributor"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSelectedContributor:I

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x7f0f0000

    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v2, 0x7f0c00e9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    const v2, 0x7f0c00ea

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mContributorInfoMenuItem:Landroid/view/MenuItem;

    const v2, 0x7f0c00eb

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mContributionsInfoMenuItem:Landroid/view/MenuItem;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->showMenuItems(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const v2, 0x7f03001e

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c006b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mLoadingView:Landroid/view/View;

    const v2, 0x7f0c006c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mFailedView:Landroid/view/View;

    const v2, 0x7f0c006a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    new-instance v2, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;-><init>(Landroid/widget/ImageView;)V

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mViewController:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mViewController:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->setMaximumScale(F)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mViewController:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-virtual {v2, v3}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudViewController;->setMediumScale(F)V

    const v2, 0x7f0c006d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchResults:Landroid/widget/ListView;

    new-instance v2, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsAdapter;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchAdapter:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsAdapter;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchResults:Landroid/widget/ListView;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchAdapter:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchResults:Landroid/widget/ListView;

    new-instance v3, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$2;

    invoke-direct {v3, p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$2;-><init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v4}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;-><init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;ZZ)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchResults:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->animateFadeOutFadeIn(Landroid/view/View;Landroid/view/View;)V

    iget v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSelectedContributor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mContributorInfoMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mContributionsInfoMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return v2
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchResults:Landroid/widget/ListView;

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->animateFadeOutFadeIn(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mContributorInfoMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mContributionsInfoMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_0
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchView:Landroid/widget/SearchView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    const/4 v1, -0x1

    iput v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSelectedContributor:I

    new-instance v0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;

    invoke-direct {v0, p0, v3, v3}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;-><init>(Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;ZZ)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->showUserInfo(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->showContributorsInfo(Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0c00e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->performFilter(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchAdapter:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsAdapter;

    invoke-virtual {v1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsAdapter;->clear()V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchAdapter:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsAdapter;

    invoke-virtual {v1, v0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSearchAdapter:Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsAdapter;

    invoke-virtual {v1}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment$ContributorsAdapter;->notifyDataSetChanged()V

    const/4 v1, 0x1

    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "state_selected_contributor"

    iget v1, p0, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->mSelectedContributor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, ":settings:fragment_args_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "contributor_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "contributor_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/cmparts/contributors/ContributorsCloudFragment;->onContributorSelected(I)V

    const-string/jumbo v2, ":settings:fragment_args_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
