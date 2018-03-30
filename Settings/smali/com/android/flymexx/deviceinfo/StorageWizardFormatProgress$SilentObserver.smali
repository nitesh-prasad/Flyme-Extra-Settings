.class Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SilentObserver;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentObserver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SilentObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/deviceinfo/StorageWizardFormatProgress$SilentObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(IIJ)V
    .locals 0

    return-void
.end method
