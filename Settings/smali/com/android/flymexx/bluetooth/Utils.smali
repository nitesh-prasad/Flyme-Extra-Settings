.class public final Lcom/android/flymexx/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/bluetooth/Utils$1;,
        Lcom/android/flymexx/bluetooth/Utils$2;
    }
.end annotation


# static fields
.field private static final mErrorListener:Lcom/android/flymexxlib/bluetooth/Utils$ErrorListener;

.field private static final mOnInitCallback:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;


# direct methods
.method static synthetic -get0()Lcom/android/flymexxlib/bluetooth/Utils$ErrorListener;
    .locals 1

    sget-object v0, Lcom/android/flymexx/bluetooth/Utils;->mErrorListener:Lcom/android/flymexxlib/bluetooth/Utils$ErrorListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/flymexx/bluetooth/Utils$1;

    invoke-direct {v0}, Lcom/android/flymexx/bluetooth/Utils$1;-><init>()V

    sput-object v0, Lcom/android/flymexx/bluetooth/Utils;->mErrorListener:Lcom/android/flymexxlib/bluetooth/Utils$ErrorListener;

    new-instance v0, Lcom/android/flymexx/bluetooth/Utils$2;

    invoke-direct {v0}, Lcom/android/flymexx/bluetooth/Utils$2;-><init>()V

    sput-object v0, Lcom/android/flymexx/bluetooth/Utils;->mOnInitCallback:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalBtManager(Landroid/content/Context;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;
    .locals 1

    sget-object v0, Lcom/android/flymexx/bluetooth/Utils;->mOnInitCallback:Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    invoke-static {p0, v0}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method static showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 4

    const/4 v3, 0x0

    const v2, 0x104000a

    if-nez p1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, p2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/android/flymexx/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/flymexxlib/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c04bb

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static updateSearchIndex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    new-instance v0, Lcom/android/flymexx/search/SearchIndexableRaw;

    invoke-direct {v0, p0}, Lcom/android/flymexx/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lcom/android/flymexx/search/SearchIndexableRaw;->className:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/flymexx/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object p3, v0, Lcom/android/flymexx/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    iput p4, v0, Lcom/android/flymexx/search/SearchIndexableRaw;->iconResId:I

    iput-boolean p5, v0, Lcom/android/flymexx/search/SearchIndexableRaw;->enabled:Z

    invoke-static {p0}, Lcom/android/flymexx/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/flymexx/search/Index;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/flymexx/search/Index;->updateFromSearchIndexableData(Landroid/provider/SearchIndexableData;)V

    return-void
.end method
