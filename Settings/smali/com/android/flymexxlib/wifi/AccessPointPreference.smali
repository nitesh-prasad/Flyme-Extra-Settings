.class public Lcom/android/flymexxlib/wifi/AccessPointPreference;
.super Landroid/support/v7/preference/Preference;
.source "AccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexxlib/wifi/AccessPointPreference$1;,
        Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;
    }
.end annotation


# static fields
.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field private static wifi_signal_attributes:[I


# instance fields
.field private mAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private final mBadgeCache:Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;

.field private final mBadgePadding:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mDefaultIconResId:I

.field private mForSavedNetworks:Z

.field private mLevel:I

.field private final mNotifyChanged:Ljava/lang/Runnable;

.field private mTitleView:Landroid/widget/TextView;

.field private final mWifiSld:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    sget v1, Lcom/android/flymexxlib/R$attr;->state_encrypted:I

    aput v1, v0, v2

    sput-object v0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->STATE_SECURED:[I

    new-array v0, v2, [I

    sput-object v0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->STATE_NONE:[I

    new-array v0, v3, [I

    sget v1, Lcom/android/flymexxlib/R$attr;->wifi_signal:I

    aput v1, v0, v2

    sput-object v0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lcom/android/flymexxlib/R$string;->accessibility_wifi_one_bar:I

    aput v1, v0, v2

    sget v1, Lcom/android/flymexxlib/R$string;->accessibility_wifi_two_bars:I

    aput v1, v0, v3

    sget v1, Lcom/android/flymexxlib/R$string;->accessibility_wifi_three_bars:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/flymexxlib/R$string;->accessibility_wifi_signal_full:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    new-instance v0, Lcom/android/flymexxlib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/flymexxlib/wifi/AccessPointPreference$1;-><init>(Lcom/android/flymexxlib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    iput v1, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mBadgePadding:I

    iput-object v2, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/flymexxlib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;IZ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    new-instance v0, Lcom/android/flymexxlib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/flymexxlib/wifi/AccessPointPreference$1;-><init>(Lcom/android/flymexxlib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;

    iput-object p1, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    iput-boolean p5, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    iget-object v0, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v0, p0}, Lcom/android/flymexxlib/wifi/AccessPoint;->setTag(Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mLevel:I

    iput p4, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mDefaultIconResId:I

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/flymexxlib/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/flymexxlib/R$dimen;->wifi_preference_badge_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mBadgePadding:I

    return-void
.end method

.method public constructor <init>(Lcom/android/flymexxlib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    new-instance v0, Lcom/android/flymexxlib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/flymexxlib/wifi/AccessPointPreference$1;-><init>(Lcom/android/flymexxlib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;

    iput-object p1, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    iput-boolean p4, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    iget-object v0, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v0, p0}, Lcom/android/flymexxlib/wifi/AccessPoint;->setTag(Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/flymexxlib/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/flymexxlib/R$dimen;->wifi_preference_badge_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mBadgePadding:I

    invoke-virtual {p0}, Lcom/android/flymexxlib/wifi/AccessPointPreference;->refresh()V

    return-void
.end method

.method private postNotifyChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private safeSetDefaultIcon()V
    .locals 1

    iget v0, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mDefaultIconResId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mDefaultIconResId:I

    invoke-virtual {p0, v0}, Lcom/android/flymexxlib/wifi/AccessPointPreference;->setIcon(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/flymexxlib/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getAccessPoint()Lcom/android/flymexxlib/wifi/AccessPoint;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    return-object v0
.end method

.method protected notifyChanged()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/flymexxlib/wifi/AccessPointPreference;->postNotifyChanged()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v1, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/flymexxlib/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mBadgePadding:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_2
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLevelChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexxlib/wifi/AccessPointPreference;->postNotifyChanged()V

    return-void
.end method

.method public refresh()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/flymexxlib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/flymexxlib/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/flymexxlib/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/flymexxlib/wifi/AccessPoint;->getLevel()I

    move-result v1

    iget v2, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mLevel:I

    if-eq v1, v2, :cond_0

    iput v1, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mLevel:I

    iget v2, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {p0, v2, v0}, Lcom/android/flymexxlib/wifi/AccessPointPreference;->updateIcon(ILandroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/flymexxlib/wifi/AccessPointPreference;->notifyChanged()V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/flymexxlib/wifi/AccessPointPreference;->updateBadge(Landroid/content/Context;)V

    iget-boolean v2, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/flymexxlib/wifi/AccessPoint;->getSavedNetworkSummary()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/flymexxlib/wifi/AccessPointPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/flymexxlib/wifi/AccessPointPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/flymexxlib/wifi/AccessPointPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    new-array v2, v7, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    const-string/jumbo v3, ","

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/android/flymexxlib/wifi/AccessPointPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    :cond_1
    if-ltz v1, :cond_2

    sget-object v2, Lcom/android/flymexxlib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    new-array v2, v7, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    const-string/jumbo v3, ","

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/android/flymexxlib/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/flymexxlib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/flymexxlib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/flymexxlib/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/flymexxlib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected updateBadge(Landroid/content/Context;)V
    .locals 3

    iget-object v1, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/flymexxlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v1, v2}, Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;->-wrap0(Lcom/android/flymexxlib/wifi/AccessPointPreference$UserBadgeCache;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method protected updateIcon(ILandroid/content/Context;)V
    .locals 3

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/android/flymexxlib/wifi/AccessPointPreference;->safeSetDefaultIcon()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/flymexxlib/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/flymexxlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/flymexxlib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/flymexxlib/wifi/AccessPointPreference;->STATE_SECURED:[I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    iget-object v1, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/flymexxlib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/flymexxlib/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    sget-object v1, Lcom/android/flymexxlib/wifi/AccessPointPreference;->STATE_NONE:[I

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/flymexxlib/wifi/AccessPointPreference;->safeSetDefaultIcon()V

    goto :goto_0
.end method
