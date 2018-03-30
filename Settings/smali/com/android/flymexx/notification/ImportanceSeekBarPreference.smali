.class public Lcom/android/flymexx/notification/ImportanceSeekBarPreference;
.super Lcom/android/flymexx/SeekBarPreference;
.source "ImportanceSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/notification/ImportanceSeekBarPreference$1;,
        Lcom/android/flymexx/notification/ImportanceSeekBarPreference$Callback;
    }
.end annotation


# instance fields
.field private mActiveSliderAlpha:F

.field private mActiveSliderTint:Landroid/content/res/ColorStateList;

.field private mAutoOn:Z

.field private mCallback:Lcom/android/flymexx/notification/ImportanceSeekBarPreference$Callback;

.field private mHandler:Landroid/os/Handler;

.field private mInactiveSliderAlpha:F

.field private mInactiveSliderTint:Landroid/content/res/ColorStateList;

.field private mMinProgress:I

.field private final mNotifyChanged:Ljava/lang/Runnable;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSummary:Ljava/lang/String;

.field private mSummaryTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -wrap0(Lcom/android/flymexx/notification/ImportanceSeekBarPreference;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->applyAuto(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/flymexx/notification/ImportanceSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->postNotifyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/flymexx/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mActiveSliderAlpha:F

    new-instance v1, Lcom/android/flymexx/notification/ImportanceSeekBarPreference$1;

    invoke-direct {v1, p0}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference$1;-><init>(Lcom/android/flymexx/notification/ImportanceSeekBarPreference;)V

    iput-object v1, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mNotifyChanged:Ljava/lang/Runnable;

    const v1, 0x7f0400d4

    invoke-virtual {p0, v1}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->setLayoutResource(I)V

    invoke-static {p1}, Lcom/android/flymexx/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    const v1, 0x7f0d0097

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x3

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mInactiveSliderAlpha:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private applyAuto(Landroid/widget/ImageView;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    iget-boolean v0, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->setImportance(I)V

    iget-object v0, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mCallback:Lcom/android/flymexx/notification/ImportanceSeekBarPreference$Callback;

    invoke-interface {v0, v2, v1}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference$Callback;->onImportanceChanged(IZ)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->applyAutoUi(Landroid/widget/ImageView;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mCallback:Lcom/android/flymexx/notification/ImportanceSeekBarPreference$Callback;

    const/16 v2, -0x3e8

    invoke-interface {v0, v2, v1}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference$Callback;->onImportanceChanged(IZ)V

    goto :goto_1
.end method

.method private applyAutoUi(Landroid/widget/ImageView;)V
    .locals 5

    iget-object v4, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-boolean v3, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-eqz v3, :cond_2

    iget v0, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mInactiveSliderAlpha:F

    :goto_1
    iget-boolean v3, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    :goto_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setAlpha(F)V

    iget-boolean v3, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->setImportance(I)V

    const/16 v3, -0x3e8

    invoke-direct {p0, v3}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->getImportanceSummary(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mSummaryTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mActiveSliderAlpha:F

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    goto :goto_2
.end method

.method private getImportanceSummary(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0c7b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0c75

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0c76

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0262

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0c77

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0c78

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0c79

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0c7a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method private postNotifyChanged()V
    .locals 0

    invoke-super {p0}, Lcom/android/flymexx/SeekBarPreference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method protected notifyChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/flymexx/SeekBarPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mSummaryTextView:Landroid/widget/TextView;

    const v1, 0x10203d7

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const v1, 0x7f1101b8

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->applyAutoUi(Landroid/widget/ImageView;)V

    new-instance v1, Lcom/android/flymexx/notification/ImportanceSeekBarPreference$2;

    invoke-direct {v1, p0, v0}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference$2;-><init>(Lcom/android/flymexx/notification/ImportanceSeekBarPreference;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/flymexx/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    iget v1, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mMinProgress:I

    if-ge p2, v1, :cond_0

    iget v1, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mMinProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget p2, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mMinProgress:I

    :cond_0
    invoke-static {p2}, Landroid/service/notification/NotificationListenerService$Ranking;->levelToImportance(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mSummaryTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->getImportanceSummary(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mSummaryTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mCallback:Lcom/android/flymexx/notification/ImportanceSeekBarPreference$Callback;

    invoke-interface {v1, v0, p3}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference$Callback;->onImportanceChanged(IZ)V

    return-void
.end method

.method public setAutoOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    invoke-virtual {p0}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->notifyChanged()V

    return-void
.end method

.method public setCallback(Lcom/android/flymexx/notification/ImportanceSeekBarPreference$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mCallback:Lcom/android/flymexx/notification/ImportanceSeekBarPreference$Callback;

    return-void
.end method

.method public setImportance(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->getImportanceSummary(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    invoke-static {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToLevel(I)I

    move-result v0

    invoke-super {p0, v0}, Lcom/android/flymexx/SeekBarPreference;->setProgress(I)V

    return-void
.end method

.method public setMinimumProgress(I)V
    .locals 0

    iput p1, p0, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->mMinProgress:I

    invoke-virtual {p0}, Lcom/android/flymexx/notification/ImportanceSeekBarPreference;->notifyChanged()V

    return-void
.end method
