.class public Lcom/android/flymexx/CryptKeeperConfirm;
.super Lcom/android/flymexx/InstrumentedFragment;
.source "CryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/CryptKeeperConfirm$1;,
        Lcom/android/flymexx/CryptKeeperConfirm$Blank;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/flymexx/InstrumentedFragment;-><init>()V

    new-instance v0, Lcom/android/flymexx/CryptKeeperConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/flymexx/CryptKeeperConfirm$1;-><init>(Lcom/android/flymexx/CryptKeeperConfirm;)V

    iput-object v0, p0, Lcom/android/flymexx/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f1100d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/flymexx/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/flymexx/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/flymexx/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x21

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/flymexx/CryptKeeperConfirm;->setHasOptionsMenu(Z)V

    const v0, 0x7f04004b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/flymexx/CryptKeeperConfirm;->establishFinalConfirmationState()V

    iget-object v0, p0, Lcom/android/flymexx/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method
