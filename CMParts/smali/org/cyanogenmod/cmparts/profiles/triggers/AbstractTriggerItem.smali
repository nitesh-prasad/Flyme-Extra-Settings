.class public Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;
.super Ljava/lang/Object;
.source "AbstractTriggerItem.java"


# instance fields
.field private mIcon:I

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTriggerState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;->mTriggerState:I

    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;->mIcon:I

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(I)V
    .locals 0

    iput p1, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;->mIcon:I

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;->mSummary:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTriggerState(I)V
    .locals 0

    iput p1, p0, Lorg/cyanogenmod/cmparts/profiles/triggers/AbstractTriggerItem;->mTriggerState:I

    return-void
.end method
