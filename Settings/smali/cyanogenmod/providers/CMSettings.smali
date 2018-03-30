.class public final Lcyanogenmod/providers/CMSettings;
.super Ljava/lang/Object;
.source "CMSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/providers/CMSettings$1;,
        Lcyanogenmod/providers/CMSettings$2;,
        Lcyanogenmod/providers/CMSettings$3;,
        Lcyanogenmod/providers/CMSettings$DelimitedListValidator;,
        Lcyanogenmod/providers/CMSettings$DiscreteValueValidator;,
        Lcyanogenmod/providers/CMSettings$Global;,
        Lcyanogenmod/providers/CMSettings$InclusiveFloatRangeValidator;,
        Lcyanogenmod/providers/CMSettings$InclusiveIntegerRangeValidator;,
        Lcyanogenmod/providers/CMSettings$NameValueCache;,
        Lcyanogenmod/providers/CMSettings$Secure;,
        Lcyanogenmod/providers/CMSettings$System;,
        Lcyanogenmod/providers/CMSettings$Validator;
    }
.end annotation


# static fields
.field private static final sAlwaysTrueValidator:Lcyanogenmod/providers/CMSettings$Validator;

.field private static final sBooleanValidator:Lcyanogenmod/providers/CMSettings$Validator;

.field private static final sColorValidator:Lcyanogenmod/providers/CMSettings$Validator;

.field private static final sNonNegativeIntegerValidator:Lcyanogenmod/providers/CMSettings$Validator;

.field private static final sUriValidator:Lcyanogenmod/providers/CMSettings$Validator;


# direct methods
.method static synthetic -get0()Lcyanogenmod/providers/CMSettings$Validator;
    .locals 1

    sget-object v0, Lcyanogenmod/providers/CMSettings;->sAlwaysTrueValidator:Lcyanogenmod/providers/CMSettings$Validator;

    return-object v0
.end method

.method static synthetic -get1()Lcyanogenmod/providers/CMSettings$Validator;
    .locals 1

    sget-object v0, Lcyanogenmod/providers/CMSettings;->sBooleanValidator:Lcyanogenmod/providers/CMSettings$Validator;

    return-object v0
.end method

.method static synthetic -get2()Lcyanogenmod/providers/CMSettings$Validator;
    .locals 1

    sget-object v0, Lcyanogenmod/providers/CMSettings;->sColorValidator:Lcyanogenmod/providers/CMSettings$Validator;

    return-object v0
.end method

.method static synthetic -get3()Lcyanogenmod/providers/CMSettings$Validator;
    .locals 1

    sget-object v0, Lcyanogenmod/providers/CMSettings;->sNonNegativeIntegerValidator:Lcyanogenmod/providers/CMSettings$Validator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcyanogenmod/providers/CMSettings$DiscreteValueValidator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "1"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcyanogenmod/providers/CMSettings$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcyanogenmod/providers/CMSettings;->sBooleanValidator:Lcyanogenmod/providers/CMSettings$Validator;

    new-instance v0, Lcyanogenmod/providers/CMSettings$1;

    invoke-direct {v0}, Lcyanogenmod/providers/CMSettings$1;-><init>()V

    sput-object v0, Lcyanogenmod/providers/CMSettings;->sNonNegativeIntegerValidator:Lcyanogenmod/providers/CMSettings$Validator;

    new-instance v0, Lcyanogenmod/providers/CMSettings$2;

    invoke-direct {v0}, Lcyanogenmod/providers/CMSettings$2;-><init>()V

    sput-object v0, Lcyanogenmod/providers/CMSettings;->sUriValidator:Lcyanogenmod/providers/CMSettings$Validator;

    new-instance v0, Lcyanogenmod/providers/CMSettings$InclusiveIntegerRangeValidator;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$InclusiveIntegerRangeValidator;-><init>(II)V

    sput-object v0, Lcyanogenmod/providers/CMSettings;->sColorValidator:Lcyanogenmod/providers/CMSettings$Validator;

    new-instance v0, Lcyanogenmod/providers/CMSettings$3;

    invoke-direct {v0}, Lcyanogenmod/providers/CMSettings$3;-><init>()V

    sput-object v0, Lcyanogenmod/providers/CMSettings;->sAlwaysTrueValidator:Lcyanogenmod/providers/CMSettings$Validator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
