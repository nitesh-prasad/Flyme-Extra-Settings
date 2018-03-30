.class public final enum Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum Introduction:Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final buttonText:I

.field public final numericHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const v5, 0x7f0c0494

    const/4 v15, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string/jumbo v1, "Introduction"

    const v3, 0x7f0c07ae

    const v4, 0x7f0c07b0

    invoke-direct/range {v0 .. v5}, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    new-instance v6, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string/jumbo v7, "NeedToConfirm"

    const v9, 0x7f0c07b1

    const v10, 0x7f0c07b3

    const v11, 0x7f0c049f

    invoke-direct/range {v6 .. v11}, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    new-instance v9, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string/jumbo v10, "ConfirmWrong"

    const v12, 0x7f0c07b4

    const v13, 0x7f0c07b5

    move v11, v15

    move v14, v5

    invoke-direct/range {v9 .. v14}, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v9, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v15

    sput-object v0, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    iput p4, p0, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    iput p5, p0, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    const-class v0, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    sget-object v0, Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/flymexx/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method
