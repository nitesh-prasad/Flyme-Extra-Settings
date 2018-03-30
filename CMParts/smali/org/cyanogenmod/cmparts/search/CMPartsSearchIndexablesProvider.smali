.class public Lorg/cyanogenmod/cmparts/search/CMPartsSearchIndexablesProvider;
.super Landroid/provider/SearchIndexablesProvider;
.source "CMPartsSearchIndexablesProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cyanogenmod/cmparts/search/CMPartsSearchIndexablesProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/cmparts/search/CMPartsSearchIndexablesProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/SearchIndexablesProvider;-><init>()V

    return-void
.end method

.method private getSearchIndexProvider(Ljava/lang/String;)Lorg/cyanogenmod/cmparts/search/Searchable$SearchIndexProvider;
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v4, Lorg/cyanogenmod/cmparts/search/Searchable;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_1
    const-string/jumbo v4, "SEARCH_INDEX_DATA_PROVIDER"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/cyanogenmod/cmparts/search/Searchable$SearchIndexProvider;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    :catch_0
    move-exception v1

    sget-object v4, Lorg/cyanogenmod/cmparts/search/CMPartsSearchIndexablesProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot find class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_0
    return-object v7

    :catch_1
    move-exception v2

    sget-object v4, Lorg/cyanogenmod/cmparts/search/CMPartsSearchIndexablesProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v7
.end method


# virtual methods
.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v11, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/search/CMPartsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lorg/cyanogenmod/internal/cmparts/PartsList;->get(Landroid/content/Context;)Lorg/cyanogenmod/internal/cmparts/PartsList;

    move-result-object v11

    invoke-virtual {v11}, Lorg/cyanogenmod/internal/cmparts/PartsList;->getPartsList()Ljava/util/Set;

    move-result-object v4

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/search/CMPartsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lorg/cyanogenmod/internal/cmparts/PartsList;->get(Landroid/content/Context;)Lorg/cyanogenmod/internal/cmparts/PartsList;

    move-result-object v11

    invoke-virtual {v11, v2}, Lorg/cyanogenmod/internal/cmparts/PartsList;->getPartInfo(Ljava/lang/String;)Lorg/cyanogenmod/internal/cmparts/PartInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getFragmentClass()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/cyanogenmod/cmparts/search/CMPartsSearchIndexablesProvider;->getSearchIndexProvider(Ljava/lang/String;)Lorg/cyanogenmod/cmparts/search/Searchable$SearchIndexProvider;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/search/CMPartsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/cyanogenmod/cmparts/search/Searchable$SearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v8, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v11, 0x1

    new-array v9, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-virtual {v0, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14

    const/4 v11, 0x2

    const/4 v13, 0x0

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v10, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/search/CMPartsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lorg/cyanogenmod/internal/cmparts/PartsList;->get(Landroid/content/Context;)Lorg/cyanogenmod/internal/cmparts/PartsList;

    move-result-object v10

    invoke-virtual {v10}, Lorg/cyanogenmod/internal/cmparts/PartsList;->getPartsList()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/search/CMPartsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lorg/cyanogenmod/internal/cmparts/PartsList;->get(Landroid/content/Context;)Lorg/cyanogenmod/internal/cmparts/PartsList;

    move-result-object v10

    invoke-virtual {v10, v2}, Lorg/cyanogenmod/internal/cmparts/PartsList;->getPartInfo(Ljava/lang/String;)Lorg/cyanogenmod/internal/cmparts/PartInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getFragmentClass()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lorg/cyanogenmod/cmparts/search/CMPartsSearchIndexablesProvider;->getSearchIndexProvider(Ljava/lang/String;)Lorg/cyanogenmod/cmparts/search/Searchable$SearchIndexProvider;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/search/CMPartsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/cyanogenmod/cmparts/search/Searchable$SearchIndexProvider;->getRawDataToIndex(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    invoke-virtual {v1}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getXmlRes()I

    move-result v10

    if-gtz v10, :cond_0

    new-instance v10, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/search/CMPartsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v12}, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;

    const/16 v10, 0xe

    new-array v8, v10, [Ljava/lang/Object;

    iget v10, v5, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->rank:I

    if-lez v10, :cond_3

    iget v10, v5, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->rank:I

    :goto_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v13

    iget-object v10, v5, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->title:Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, v5, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->title:Ljava/lang/String;

    :goto_2
    const/4 v12, 0x1

    aput-object v10, v8, v12

    invoke-virtual {v1}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getSummary()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v11

    iget-object v10, v5, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    const/4 v12, 0x5

    aput-object v10, v8, v12

    iget-object v10, v5, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    const/4 v12, 0x4

    aput-object v10, v8, v12

    iget-object v10, v5, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, v5, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    :goto_3
    const/4 v12, 0x6

    aput-object v10, v8, v12

    iget v10, v5, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->iconResId:I

    if-lez v10, :cond_6

    iget v10, v5, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->iconResId:I

    :goto_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v12, 0x8

    aput-object v10, v8, v12

    iget-object v10, v5, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    if-eqz v10, :cond_8

    iget-object v10, v5, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    :goto_5
    const/16 v12, 0x9

    aput-object v10, v8, v12

    iget-object v10, v5, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    if-eqz v10, :cond_9

    iget-object v10, v5, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    :goto_6
    const/16 v12, 0xa

    aput-object v10, v8, v12

    iget-object v10, v5, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    if-eqz v10, :cond_a

    iget-object v10, v5, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    :goto_7
    const/16 v12, 0xb

    aput-object v10, v8, v12

    iget-object v10, v5, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->key:Ljava/lang/String;

    if-eqz v10, :cond_b

    iget-object v10, v5, Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;->key:Ljava/lang/String;

    :goto_8
    const/16 v12, 0xc

    aput-object v10, v8, v12

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v12, 0xd

    aput-object v10, v8, v12

    invoke-virtual {v0, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v10, v11

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getTitle()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getTitle()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getIconRes()I

    move-result v10

    if-lez v10, :cond_7

    invoke-virtual {v1}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getIconRes()I

    move-result v10

    goto :goto_4

    :cond_7
    const/high16 v10, 0x3f020000    # 0.5078125f

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getAction()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_9
    sget-object v10, Lorg/cyanogenmod/internal/cmparts/PartsList;->CMPARTS_ACTIVITY:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_a
    sget-object v10, Lorg/cyanogenmod/internal/cmparts/PartsList;->CMPARTS_ACTIVITY:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_b
    invoke-virtual {v1}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getName()Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    :cond_c
    return-object v0
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v6, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/search/CMPartsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lorg/cyanogenmod/internal/cmparts/PartsList;->get(Landroid/content/Context;)Lorg/cyanogenmod/internal/cmparts/PartsList;

    move-result-object v6

    invoke-virtual {v6}, Lorg/cyanogenmod/internal/cmparts/PartsList;->getPartsList()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/search/CMPartsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lorg/cyanogenmod/internal/cmparts/PartsList;->get(Landroid/content/Context;)Lorg/cyanogenmod/internal/cmparts/PartsList;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/cyanogenmod/internal/cmparts/PartsList;->getPartInfo(Ljava/lang/String;)Lorg/cyanogenmod/internal/cmparts/PartInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getXmlRes()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x7

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getXmlRes()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    aput-object v10, v5, v9

    const/high16 v6, 0x3f020000    # 0.5078125f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-virtual {v1}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getAction()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    sget-object v6, Lorg/cyanogenmod/internal/cmparts/PartsList;->CMPARTS_ACTIVITY:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v5, v7

    sget-object v6, Lorg/cyanogenmod/internal/cmparts/PartsList;->CMPARTS_ACTIVITY:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    aput-object v6, v5, v7

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method
