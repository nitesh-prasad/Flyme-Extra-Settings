.class public Lcom/android/flymexx/widget/SwitchBar;
.super Landroid/widget/LinearLayout;
.source "SwitchBar.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;,
        Lcom/android/flymexx/widget/SwitchBar$SavedState;
    }
.end annotation


# static fields
.field private static XML_ATTRIBUTES:[I


# instance fields
.field private mDisabledByAdmin:Z

.field private mEnforcedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

.field private mLabel:Ljava/lang/String;

.field private mLoggingIntialized:Z

.field private mMetricsTag:Ljava/lang/String;

.field private mRestrictedIcon:Landroid/view/View;

.field private mSummary:Ljava/lang/String;

.field private final mSummarySpan:Landroid/text/style/TextAppearanceSpan;

.field private mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

.field private mSwitchChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0x7f01015c

    const v1, 0x7f01015d

    const v2, 0x7f01015e

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/flymexx/widget/SwitchBar;->XML_ATTRIBUTES:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/flymexx/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/flymexx/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/flymexx/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/flymexx/widget/SwitchBar;->mEnforcedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04016f

    invoke-virtual {v5, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget-object v5, Lcom/android/flymexx/widget/SwitchBar;->XML_ATTRIBUTES:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const v5, 0x7f11026d

    invoke-virtual {p0, v5}, Lcom/android/flymexx/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/flymexx/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/flymexx/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    invoke-virtual {p0}, Lcom/android/flymexx/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0ce4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/flymexx/widget/SwitchBar;->mLabel:Ljava/lang/String;

    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    iget-object v6, p0, Lcom/android/flymexx/widget/SwitchBar;->mContext:Landroid/content/Context;

    const v7, 0x7f1001e7

    invoke-direct {v5, v6, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/flymexx/widget/SwitchBar;->mSummarySpan:Landroid/text/style/TextAppearanceSpan;

    invoke-direct {p0}, Lcom/android/flymexx/widget/SwitchBar;->updateText()V

    iget-object v5, p0, Lcom/android/flymexx/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const v5, 0x7f11026e

    invoke-virtual {p0, v5}, Lcom/android/flymexx/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/flymexx/widget/ToggleSwitch;

    iput-object v5, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    iget-object v5, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-virtual {v5, v8}, Lcom/android/flymexx/widget/ToggleSwitch;->setSaveEnabled(Z)V

    iget-object v5, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-virtual {v5, v9}, Lcom/android/flymexx/widget/ToggleSwitch;->setImportantForAccessibility(I)V

    iget-object v5, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-virtual {v5}, Lcom/android/flymexx/widget/ToggleSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0, v2}, Lcom/android/flymexx/widget/SwitchBar;->setBackgroundColor(I)V

    iget-object v5, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-virtual {v5, v2}, Lcom/android/flymexx/widget/ToggleSwitch;->setBackgroundColor(I)V

    new-instance v5, Lcom/android/flymexx/widget/SwitchBar$1;

    invoke-direct {v5, p0}, Lcom/android/flymexx/widget/SwitchBar$1;-><init>(Lcom/android/flymexx/widget/SwitchBar;)V

    invoke-virtual {p0, v5}, Lcom/android/flymexx/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;)V

    const v5, 0x7f110210

    invoke-virtual {p0, v5}, Lcom/android/flymexx/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/flymexx/widget/SwitchBar;->mRestrictedIcon:Landroid/view/View;

    invoke-virtual {p0, p0}, Lcom/android/flymexx/widget/SwitchBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/android/flymexx/widget/SwitchBar;->setVisibility(I)V

    return-void
.end method

.method private updateText()V
    .locals 5

    iget-object v2, p0, Lcom/android/flymexx/widget/SwitchBar;->mSummary:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/flymexx/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/android/flymexx/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/flymexx/widget/SwitchBar;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/android/flymexx/widget/SwitchBar;->mSummarySpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, Lcom/android/flymexx/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public addOnSwitchChangeListener(Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add twice the same OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSwitch()Lcom/android/flymexx/widget/ToggleSwitch;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    return-object v0
.end method

.method public hide()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/flymexx/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/flymexx/widget/SwitchBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/flymexx/widget/SwitchBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mLoggingIntialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/flymexx/widget/SwitchBar;->mMetricsTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/switch_bar|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    iput-boolean v3, p0, Lcom/android/flymexx/widget/SwitchBar;->mLoggingIntialized:Z

    invoke-virtual {p0, p2}, Lcom/android/flymexx/widget/SwitchBar;->propagateChecked(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/flymexx/widget/SwitchBar;->mDisabledByAdmin:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/flymexx/widget/SwitchBar;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/flymexx/widget/SwitchBar;->mMetricsTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/switch_bar|restricted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/flymexx/widget/SwitchBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/flymexx/widget/SwitchBar;->mEnforcedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v1, v2}, Lcom/android/flymexxlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-virtual {v1}, Lcom/android/flymexx/widget/ToggleSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/flymexx/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/android/flymexx/widget/SwitchBar$SavedState;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/SwitchBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    iget-boolean v2, v0, Lcom/android/flymexx/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {v1, v2}, Lcom/android/flymexx/widget/ToggleSwitch;->setCheckedInternal(Z)V

    iget-boolean v1, v0, Lcom/android/flymexx/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/android/flymexx/widget/SwitchBar;->setTextViewLabel(Z)V

    iget-boolean v1, v0, Lcom/android/flymexx/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/flymexx/widget/SwitchBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    iget-boolean v1, v0, Lcom/android/flymexx/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v1, :cond_1

    move-object v1, p0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/flymexx/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/flymexx/widget/SwitchBar;->requestLayout()V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/android/flymexx/widget/SwitchBar$SavedState;

    invoke-direct {v0, v1}, Lcom/android/flymexx/widget/SwitchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-virtual {v2}, Lcom/android/flymexx/widget/ToggleSwitch;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/flymexx/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {p0}, Lcom/android/flymexx/widget/SwitchBar;->isShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/flymexx/widget/SwitchBar$SavedState;->visible:Z

    return-object v0
.end method

.method public propagateChecked(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;

    iget-object v3, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-interface {v2, v3, p1}, Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;->onSwitchChanged(Landroid/widget/Switch;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeOnSwitchChangeListener(Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot remove OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/flymexx/widget/SwitchBar;->setTextViewLabel(Z)V

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/widget/ToggleSwitch;->setChecked(Z)V

    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/flymexx/widget/SwitchBar;->setTextViewLabel(Z)V

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/widget/ToggleSwitch;->setCheckedInternal(Z)V

    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/flymexx/widget/SwitchBar;->mEnforcedAdmin:Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz p1, :cond_0

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/android/flymexx/widget/SwitchBar;->mDisabledByAdmin:Z

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ToggleSwitch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-virtual {v0, v3}, Lcom/android/flymexx/widget/ToggleSwitch;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mRestrictedIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/flymexx/widget/SwitchBar;->mDisabledByAdmin:Z

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ToggleSwitch;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mRestrictedIcon:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/android/flymexx/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/flymexxlib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/flymexx/widget/ToggleSwitch;->setEnabled(Z)V

    return-void
.end method

.method public setMetricsTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/widget/SwitchBar;->mMetricsTag:Ljava/lang/String;

    return-void
.end method

.method public setTextViewLabel(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/flymexx/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_0

    const v0, 0x7f0c0ce3

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/flymexx/widget/SwitchBar;->updateText()V

    return-void

    :cond_0
    const v0, 0x7f0c0ce4

    goto :goto_0
.end method

.method public show()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/flymexx/widget/SwitchBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar;->mSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method
