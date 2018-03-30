.class final enum Lcom/android/flymexx/TrustedCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/flymexx/TrustedCredentialsSettings$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/flymexx/TrustedCredentialsSettings$Tab;

.field private static final synthetic -com-android-settings-TrustedCredentialsSettings$TabSwitchesValues:[I

.field public static final enum SYSTEM:Lcom/android/flymexx/TrustedCredentialsSettings$Tab;

.field public static final enum USER:Lcom/android/flymexx/TrustedCredentialsSettings$Tab;


# instance fields
.field private final mContentView:I

.field private final mExpandableList:I

.field private final mLabel:I

.field private final mPersonalList:I

.field private final mProgress:I

.field private final mSwitch:Z

.field private final mTag:Ljava/lang/String;

.field private final mView:I

.field private final mWorkList:I


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->mContentView:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->mExpandableList:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/flymexx/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->mLabel:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/flymexx/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->mPersonalList:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/flymexx/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->mProgress:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/flymexx/TrustedCredentialsSettings$Tab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->mSwitch:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/flymexx/TrustedCredentialsSettings$Tab;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/flymexx/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->mView:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/flymexx/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->mWorkList:I

    return v0
.end method

.method private static synthetic -getcom-android-settings-TrustedCredentialsSettings$TabSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->-com-android-settings-TrustedCredentialsSettings$TabSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->-com-android-settings-TrustedCredentialsSettings$TabSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->values()[Lcom/android/flymexx/TrustedCredentialsSettings$Tab;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/flymexx/TrustedCredentialsSettings$Tab;

    invoke-virtual {v1}, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->USER:Lcom/android/flymexx/TrustedCredentialsSettings$Tab;

    invoke-virtual {v1}, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->-com-android-settings-TrustedCredentialsSettings$TabSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->deleted(Landroid/security/IKeyChainService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;

    const-string/jumbo v1, "SYSTEM"

    const-string/jumbo v3, "system"

    const/4 v2, 0x0

    const v4, 0x7f0c0b21

    const v5, 0x7f11027d

    const v6, 0x7f11027e

    const v7, 0x7f110280

    const v8, 0x7f110281

    const v9, 0x7f110282

    const v10, 0x7f11027f

    const/4 v11, 0x1

    invoke-direct/range {v0 .. v11}, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIIIZ)V

    sput-object v0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/flymexx/TrustedCredentialsSettings$Tab;

    new-instance v0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;

    const-string/jumbo v1, "USER"

    const-string/jumbo v3, "user"

    const/4 v2, 0x1

    const v4, 0x7f0c0b22

    const v5, 0x7f110283

    const v6, 0x7f110284

    const v7, 0x7f110286

    const v8, 0x7f110287

    const v9, 0x7f110288

    const v10, 0x7f110285

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIIIZ)V

    sput-object v0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->USER:Lcom/android/flymexx/TrustedCredentialsSettings$Tab;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/flymexx/TrustedCredentialsSettings$Tab;

    sget-object v1, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/flymexx/TrustedCredentialsSettings$Tab;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->USER:Lcom/android/flymexx/TrustedCredentialsSettings$Tab;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/flymexx/TrustedCredentialsSettings$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIIIIZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    iput p4, p0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->mLabel:I

    iput p5, p0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->mView:I

    iput p6, p0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->mProgress:I

    iput p7, p0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->mPersonalList:I

    iput p8, p0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->mWorkList:I

    iput p9, p0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->mExpandableList:I

    iput p10, p0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->mContentView:I

    iput-boolean p11, p0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->mSwitch:Z

    return-void
.end method

.method private deleted(Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->-getcom-android-settings-TrustedCredentialsSettings$TabSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-interface {p1, p2}, Landroid/security/IKeyChainService;->containsCaAlias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/IKeyChainService;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/ParcelableString;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->-getcom-android-settings-TrustedCredentialsSettings$TabSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getSystemCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/flymexx/TrustedCredentialsSettings$Tab;
    .locals 1

    const-class v0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method public static values()[Lcom/android/flymexx/TrustedCredentialsSettings$Tab;
    .locals 1

    sget-object v0, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/flymexx/TrustedCredentialsSettings$Tab;

    return-object v0
.end method
