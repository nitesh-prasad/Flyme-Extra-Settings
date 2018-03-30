.class public Lorg/cyanogenmod/cmparts/utils/TelephonyUtils;
.super Ljava/lang/Object;
.source "TelephonyUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cyanogenmod/cmparts/utils/TelephonyUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/cmparts/utils/TelephonyUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkModeString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 7

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v2

    invoke-static {p0}, Lorg/cyanogenmod/cmparts/utils/TelephonyUtils;->show4GForLTE(Landroid/content/Context;)Z

    move-result v3

    invoke-static {p0, p2}, Lorg/cyanogenmod/cmparts/utils/TelephonyUtils;->isSupportTdscdma(Landroid/content/Context;I)Z

    move-result v4

    invoke-static {p0, p2}, Lorg/cyanogenmod/cmparts/utils/TelephonyUtils;->isLteOnCdma(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {p0, p2, v0}, Lorg/cyanogenmod/cmparts/utils/TelephonyUtils;->isGlobalCDMA(Landroid/content/Context;IZ)Z

    move-result v5

    invoke-static {p0}, Lorg/cyanogenmod/cmparts/utils/TelephonyUtils;->isWorldMode(Landroid/content/Context;)Z

    move-result v6

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lorg/cyanogenmod/cmparts/utils/TelephonyUtils;->getNetworkModeString(Landroid/content/Context;IIZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkModeString(Landroid/content/Context;IIZZZZ)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    sget-object v3, Lorg/cyanogenmod/cmparts/utils/TelephonyUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown phone mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v2, :cond_6

    invoke-static {p0}, Lorg/cyanogenmod/cmparts/utils/TelephonyUtils;->getPhoneResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string/jumbo v3, "string"

    const-string/jumbo v4, "com.android.phone"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :pswitch_0
    const-string/jumbo v2, "network_3G"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v2, "network_2G"

    goto :goto_0

    :pswitch_2
    if-eqz p3, :cond_0

    const-string/jumbo v2, "network_4G"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "network_lte"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v2, "network_1x"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v2, "network_tdscdma"

    goto :goto_0

    :pswitch_5
    if-eqz p4, :cond_1

    const-string/jumbo v2, "network_lte"

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    if-nez p5, :cond_2

    if-eqz p6, :cond_3

    :cond_2
    const-string/jumbo v2, "network_global"

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    const-string/jumbo v2, "network_4G"

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "network_lte"

    goto :goto_0

    :cond_5
    sget-object v3, Lorg/cyanogenmod/cmparts/utils/TelephonyUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "couldn\'t find resource id with name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static getPhoneResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 4

    :try_start_0
    const-string/jumbo v2, "com.android.phone"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    sget-object v2, Lorg/cyanogenmod/cmparts/utils/TelephonyUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "couldn\'t locate resources for com.android.phone!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method private static isGlobalCDMA(Landroid/content/Context;IZ)Z
    .locals 3

    const-string/jumbo v2, "carrier_config"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v1, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string/jumbo v2, "show_cdma_choices_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isLteOnCdma(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportTdscdma(Landroid/content/Context;I)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    invoke-static {p0}, Lorg/cyanogenmod/cmparts/utils/TelephonyUtils;->getPhoneResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string/jumbo v6, "config_support_tdscdma"

    const-string/jumbo v8, "bool"

    const-string/jumbo v9, "com.android.phone"

    invoke-virtual {v4, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    return v10

    :cond_0
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "config_support_tdscdma_roaming_on_networks"

    const-string/jumbo v8, "string-array"

    const-string/jumbo v9, "com.android.phone"

    invoke-virtual {v4, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    if-eqz v6, :cond_1

    if-nez v3, :cond_2

    :cond_1
    return v7

    :cond_2
    array-length v8, v2

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_4

    aget-object v1, v2, v6

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    return v10

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    return v7
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isWorldMode(Landroid/content/Context;)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Lorg/cyanogenmod/cmparts/utils/TelephonyUtils;->getPhoneResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v6, "config_world_mode"

    const-string/jumbo v7, "string"

    const-string/jumbo v8, "com.android.phone"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v6, v0

    if-ne v6, v9, :cond_0

    aget-object v6, v0, v10

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_0
    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    aget-object v6, v0, v9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    :goto_0
    return v5

    :cond_2
    if-eqz v4, :cond_1

    aget-object v6, v0, v9

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    sget-object v6, Lorg/cyanogenmod/cmparts/utils/TelephonyUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "couldn\'t find resource of config_world_mode"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static show4GForLTE(Landroid/content/Context;)Z
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    const-string/jumbo v3, "com.android.systemui"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "config_show4GForLTE"

    const-string/jumbo v5, "bool"

    const-string/jumbo v6, "com.android.systemui"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v1

    return v7
.end method
