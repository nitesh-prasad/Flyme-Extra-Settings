.class public final enum Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceConfirmed:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceTooShort:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum FirstChoiceValid:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum HelpScreen:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum Introduction:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# instance fields
.field final footerMessage:I

.field final headerMessage:I

.field final leftMode:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field final patternEnabled:Z

.field final rightMode:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string/jumbo v1, "Introduction"

    sget-object v4, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v2, 0x0

    const v3, 0x7f0c07cc

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string/jumbo v1, "HelpScreen"

    sget-object v4, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v2, 0x1

    const v3, 0x7f0c07e1

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string/jumbo v1, "ChoiceTooShort"

    sget-object v4, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v2, 0x2

    const v3, 0x7f0c07cf

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string/jumbo v1, "FirstChoiceValid"

    sget-object v4, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v2, 0x3

    const v3, 0x7f0c07d0

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string/jumbo v1, "NeedToConfirm"

    sget-object v4, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v2, 0x4

    const v3, 0x7f0c07d1

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string/jumbo v1, "ConfirmWrong"

    sget-object v4, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v2, 0x5

    const v3, 0x7f0c07c8

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string/jumbo v1, "ChoiceConfirmed"

    sget-object v4, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v2, 0x6

    const v3, 0x7f0c07d2

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    iput-object p4, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iput-object p5, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iput p6, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    iput-boolean p7, p0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    const-class v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    sget-object v0, Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/flymexx/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method
