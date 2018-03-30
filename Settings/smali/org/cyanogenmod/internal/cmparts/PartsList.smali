.class public Lorg/cyanogenmod/internal/cmparts/PartsList;
.super Ljava/lang/Object;
.source "PartsList.java"


# static fields
.field public static final CMPARTS_ACTIVITY:Landroid/content/ComponentName;

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lorg/cyanogenmod/internal/cmparts/PartsList;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mParts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/cyanogenmod/internal/cmparts/PartInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/cyanogenmod/internal/cmparts/PartsList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/internal/cmparts/PartsList;->TAG:Ljava/lang/String;

    sget-object v0, Lorg/cyanogenmod/internal/cmparts/PartsList;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/cyanogenmod/internal/cmparts/PartsList;->DEBUG:Z

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "org.cyanogenmod.cmparts"

    const-string/jumbo v2, "org.cyanogenmod.cmparts.PartsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/cyanogenmod/internal/cmparts/PartsList;->CMPARTS_ACTIVITY:Landroid/content/ComponentName;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/cyanogenmod/internal/cmparts/PartsList;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/internal/cmparts/PartsList;->mParts:Ljava/util/Map;

    iput-object p1, p0, Lorg/cyanogenmod/internal/cmparts/PartsList;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/cyanogenmod/internal/cmparts/PartsList;->loadParts()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/cyanogenmod/internal/cmparts/PartsList;
    .locals 2

    sget-object v1, Lorg/cyanogenmod/internal/cmparts/PartsList;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/cyanogenmod/internal/cmparts/PartsList;->sInstance:Lorg/cyanogenmod/internal/cmparts/PartsList;

    if-nez v0, :cond_0

    new-instance v0, Lorg/cyanogenmod/internal/cmparts/PartsList;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/internal/cmparts/PartsList;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cyanogenmod/internal/cmparts/PartsList;->sInstance:Lorg/cyanogenmod/internal/cmparts/PartsList;

    :cond_0
    sget-object v0, Lorg/cyanogenmod/internal/cmparts/PartsList;->sInstance:Lorg/cyanogenmod/internal/cmparts/PartsList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadParts()V
    .locals 8

    iget-object v5, p0, Lorg/cyanogenmod/internal/cmparts/PartsList;->mParts:Ljava/util/Map;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lorg/cyanogenmod/internal/cmparts/PartsList;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    const-string/jumbo v4, "org.cyanogenmod.cmparts"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v5

    return-void

    :cond_0
    :try_start_2
    const-string/jumbo v4, "parts_catalog"

    const-string/jumbo v6, "xml"

    const-string/jumbo v7, "org.cyanogenmod.cmparts"

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    iget-object v4, p0, Lorg/cyanogenmod/internal/cmparts/PartsList;->mParts:Ljava/util/Map;

    invoke-direct {p0, v2, v3, v4}, Lorg/cyanogenmod/internal/cmparts/PartsList;->loadPartsFromResourceLocked(Landroid/content/res/Resources;ILjava/util/Map;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private loadPartsFromResourceLocked(Landroid/content/res/Resources;ILjava/util/Map;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/cyanogenmod/internal/cmparts/PartInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    :cond_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    :cond_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v12, "parts-catalog"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "XML document must start with <parts-catalog> tag; found "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v3

    :try_start_1
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Error parsing catalog"

    invoke-direct {v12, v13, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v12

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v12

    :cond_3
    :try_start_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    :cond_4
    :goto_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_e

    const/4 v12, 0x3

    if-ne v11, v12, :cond_5

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    if-le v12, v7, :cond_e

    :cond_5
    const/4 v12, 0x3

    if-eq v11, v12, :cond_4

    const/4 v12, 0x4

    if-eq v11, v12, :cond_4

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v12, "part"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    sget-object v12, Lcom/android/internal/R$styleable;->Preference:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v5, 0x0

    const/4 v12, 0x6

    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v10

    if-eqz v10, :cond_6

    iget v12, v10, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_6

    iget v12, v10, Landroid/util/TypedValue;->resourceId:I

    if-eqz v12, :cond_7

    iget v12, v10, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_6
    :goto_1
    if-nez v5, :cond_8

    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Attribute \'key\' is required"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    move-exception v2

    :try_start_3
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Error parsing catalog"

    invoke-direct {v12, v13, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    :try_start_4
    iget-object v12, v10, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_8
    new-instance v4, Lorg/cyanogenmod/internal/cmparts/PartInfo;

    invoke-direct {v4, v5}, Lorg/cyanogenmod/internal/cmparts/PartInfo;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x4

    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v10

    if-eqz v10, :cond_9

    iget v12, v10, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_9

    iget v12, v10, Landroid/util/TypedValue;->resourceId:I

    if-eqz v12, :cond_b

    iget v12, v10, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->setTitle(Ljava/lang/String;)V

    :cond_9
    :goto_2
    const/4 v12, 0x7

    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v10

    if-eqz v10, :cond_a

    iget v12, v10, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_a

    iget v12, v10, Landroid/util/TypedValue;->resourceId:I

    if-eqz v12, :cond_c

    iget v12, v10, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->setSummary(Ljava/lang/String;)V

    :cond_a
    :goto_3
    const/16 v12, 0xd

    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->setFragmentClass(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    invoke-virtual {v4, v12}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->setIconRes(I)V

    sget-object v12, Lcyanogenmod/platform/R$styleable;->cm_Searchable:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    invoke-virtual {v4, v12}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->setXmlRes(I)V

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p3

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    iget-object v12, v10, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->setTitle(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    iget-object v12, v10, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->setSummary(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_e
    if-eqz v8, :cond_f

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_f
    return-void
.end method


# virtual methods
.method public getPartInfo(Ljava/lang/String;)Lorg/cyanogenmod/internal/cmparts/PartInfo;
    .locals 2

    iget-object v1, p0, Lorg/cyanogenmod/internal/cmparts/PartsList;->mParts:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/cyanogenmod/internal/cmparts/PartsList;->mParts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/internal/cmparts/PartInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
