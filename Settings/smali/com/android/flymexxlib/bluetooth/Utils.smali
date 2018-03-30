.class public Lcom/android/flymexxlib/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexxlib/bluetooth/Utils$ErrorListener;
    }
.end annotation


# static fields
.field private static sErrorListener:Lcom/android/flymexxlib/bluetooth/Utils$ErrorListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectionStateSummary(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    sget v0, Lcom/android/flymexxlib/R$string;->bluetooth_connected:I

    return v0

    :pswitch_1
    sget v0, Lcom/android/flymexxlib/R$string;->bluetooth_connecting:I

    return v0

    :pswitch_2
    sget v0, Lcom/android/flymexxlib/R$string;->bluetooth_disconnected:I

    return v0

    :pswitch_3
    sget v0, Lcom/android/flymexxlib/R$string;->bluetooth_disconnecting:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static setErrorListener(Lcom/android/flymexxlib/bluetooth/Utils$ErrorListener;)V
    .locals 0

    sput-object p0, Lcom/android/flymexxlib/bluetooth/Utils;->sErrorListener:Lcom/android/flymexxlib/bluetooth/Utils$ErrorListener;

    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/android/flymexxlib/bluetooth/Utils;->sErrorListener:Lcom/android/flymexxlib/bluetooth/Utils$ErrorListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/flymexxlib/bluetooth/Utils;->sErrorListener:Lcom/android/flymexxlib/bluetooth/Utils$ErrorListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/flymexxlib/bluetooth/Utils$ErrorListener;->onShowError(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
