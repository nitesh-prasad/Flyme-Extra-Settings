.class Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationPreference;
.super Lcom/android/flymexx/CopyablePreference;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/notification/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoricalNotificationPreference"
.end annotation


# instance fields
.field private final mInfo:Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/flymexx/CopyablePreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0400ae

    invoke-virtual {p0, v0}, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationPreference;->setLayoutResource(I)V

    iput-object p2, p0, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;

    return-void
.end method


# virtual methods
.method public getCopyableText()Ljava/lang/CharSequence;
    .locals 4

    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, " ["

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;

    iget-wide v2, v2, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]\n"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;->extra:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/flymexx/CopyablePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v1, p0, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    const v1, 0x7f11003b

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v2, v2, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    const v1, 0x7f110189

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v2, v2, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v1, 0x7f11018a

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DateTimeView;

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;

    iget-wide v2, v2, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-virtual {v1, v2, v3}, Landroid/widget/DateTimeView;->setTime(J)V

    const v1, 0x7f11003c

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v2, v2, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f11018b

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v2, v2, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f11018c

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;->extra:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationPreference$1;

    invoke-direct {v2, p0, v0}, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationPreference$1;-><init>(Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationPreference;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;

    iget-boolean v1, v1, Lcom/android/flymexx/notification/NotificationStation$HistoricalNotificationInfo;->active:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method public performClick()V
    .locals 0

    return-void
.end method
