.class public final Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$AllFilter;,
        Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$AudioFilter;,
        Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;,
        Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;,
        Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;,
        Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$NapFilter;,
        Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$PanuFilter;,
        Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$TransferFilter;,
        Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;
    }
.end annotation


# static fields
.field public static final ALL_FILTER:Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;

.field public static final BONDED_DEVICE_FILTER:Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;

.field private static final FILTERS:[Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;

.field public static final UNBONDED_DEVICE_FILTER:Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$AllFilter;

    invoke-direct {v0, v3}, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$AllFilter;)V

    sput-object v0, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;

    new-instance v0, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;

    invoke-direct {v0, v3}, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;)V

    sput-object v0, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;

    new-instance v0, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;

    invoke-direct {v0, v3}, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;)V

    sput-object v0, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;

    sget-object v1, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$AudioFilter;

    invoke-direct {v1, v3}, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$AudioFilter;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$AudioFilter;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$TransferFilter;

    invoke-direct {v1, v3}, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$TransferFilter;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$TransferFilter;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$PanuFilter;

    invoke-direct {v1, v3}, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$PanuFilter;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$PanuFilter;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$NapFilter;

    invoke-direct {v1, v3}, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$NapFilter;-><init>(Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$NapFilter;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFilter(I)Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;
    .locals 3

    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;

    aget-object v0, v0, p0

    return-object v0

    :cond_0
    const-string/jumbo v0, "BluetoothDeviceFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid filter type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for device picker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/flymexxlib/bluetooth/BluetoothDeviceFilter$Filter;

    return-object v0
.end method
