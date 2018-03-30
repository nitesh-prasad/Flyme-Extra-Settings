.class Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BluetoothTriggerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothTriggerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;->this$0:Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;

    invoke-static {p1}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;->-get0(Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment;)Ljava/util/List;

    move-result-object v0

    const v1, 0x7f03001a

    const v2, 0x7f0c002e

    invoke-direct {p0, p2, v1, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f03001a

    const/4 v7, 0x0

    invoke-virtual {v2, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0c002e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0c0055

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v6, 0x7f0c002d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;

    invoke-virtual {v5}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->getSummary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Lorg/cyanogenmod/cmparts/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->getIcon()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v3
.end method
