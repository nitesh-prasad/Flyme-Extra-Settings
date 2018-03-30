.class public Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;
.super Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;
.source "BluetoothTriggerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothTrigger"
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->mAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->setTitle(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;-><init>()V

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->mAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->setTitle(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->mAddress:Ljava/lang/String;

    return-object v0
.end method
