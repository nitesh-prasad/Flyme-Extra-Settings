.class public Lcom/android/flymexx/overlay/FeatureFactoryImpl;
.super Lcom/android/flymexx/overlay/FeatureFactory;
.source "FeatureFactoryImpl.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private mSuggestionFeatureProvider:Lcom/android/flymexx/dashboard/SuggestionFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/overlay/FeatureFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/flymexx/fuelgauge/PowerUsageFeatureProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestionFeatureProvider()Lcom/android/flymexx/dashboard/SuggestionFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/flymexx/dashboard/SuggestionFeatureProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/flymexx/dashboard/SuggestionFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/flymexx/dashboard/SuggestionFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/flymexx/dashboard/SuggestionFeatureProvider;

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/flymexx/dashboard/SuggestionFeatureProvider;

    return-object v0
.end method

.method public getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/flymexx/overlay/SupportFeatureProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurveyFeatureProvider(Landroid/content/Context;)Lcom/android/flymexx/overlay/SurveyFeatureProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
