.class public interface abstract Lorg/cyanogenmod/cmparts/search/Searchable$SearchIndexProvider;
.super Ljava/lang/Object;
.source "Searchable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/cmparts/search/Searchable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchIndexProvider"
.end annotation


# virtual methods
.method public abstract getNonIndexableKeys(Landroid/content/Context;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRawDataToIndex(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/cyanogenmod/cmparts/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation
.end method
