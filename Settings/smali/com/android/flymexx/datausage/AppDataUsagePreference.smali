.class public Lcom/android/flymexx/datausage/AppDataUsagePreference;
.super Landroid/support/v7/preference/Preference;
.source "AppDataUsagePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/datausage/AppDataUsagePreference$UidDetailTask;
    }
.end annotation


# instance fields
.field private final mItem:Lcom/android/flymexxlib/AppItem;

.field private final mPercent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/flymexxlib/AppItem;ILcom/android/flymexxlib/net/UidDetailProvider;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/flymexx/datausage/AppDataUsagePreference;->mItem:Lcom/android/flymexxlib/AppItem;

    iput p3, p0, Lcom/android/flymexx/datausage/AppDataUsagePreference;->mPercent:I

    const v0, 0x7f040066

    invoke-virtual {p0, v0}, Lcom/android/flymexx/datausage/AppDataUsagePreference;->setLayoutResource(I)V

    const v0, 0x7f040190

    invoke-virtual {p0, v0}, Lcom/android/flymexx/datausage/AppDataUsagePreference;->setWidgetLayoutResource(I)V

    iget-boolean v0, p2, Lcom/android/flymexxlib/AppItem;->restricted:Z

    if-eqz v0, :cond_0

    iget-wide v0, p2, Lcom/android/flymexxlib/AppItem;->total:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const v0, 0x7f0c0abc

    invoke-virtual {p0, v0}, Lcom/android/flymexx/datausage/AppDataUsagePreference;->setSummary(I)V

    :goto_0
    invoke-static {p4, p2, p0}, Lcom/android/flymexx/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/flymexxlib/net/UidDetailProvider;Lcom/android/flymexxlib/AppItem;Lcom/android/flymexx/datausage/AppDataUsagePreference;)V

    return-void

    :cond_0
    iget-wide v0, p2, Lcom/android/flymexxlib/AppItem;->total:J

    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/datausage/AppDataUsagePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getItem()Lcom/android/flymexxlib/AppItem;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/AppDataUsagePreference;->mItem:Lcom/android/flymexxlib/AppItem;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x102000d

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/flymexx/datausage/AppDataUsagePreference;->mItem:Lcom/android/flymexxlib/AppItem;

    iget-boolean v1, v1, Lcom/android/flymexxlib/AppItem;->restricted:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/datausage/AppDataUsagePreference;->mItem:Lcom/android/flymexxlib/AppItem;

    iget-wide v2, v1, Lcom/android/flymexxlib/AppItem;->total:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    iget v1, p0, Lcom/android/flymexx/datausage/AppDataUsagePreference;->mPercent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
