.class public Lorg/cyanogenmod/cmparts/widget/SwitchBar;
.super Landroid/widget/LinearLayout;
.source "SwitchBar.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/cmparts/widget/SwitchBar$OnSwitchChangeListener;,
        Lorg/cyanogenmod/cmparts/widget/SwitchBar$SavedState;
    }
.end annotation


# static fields
.field private static MARGIN_ATTRIBUTES:[I


# instance fields
.field private mLabel:Ljava/lang/String;

.field private mStateOffLabel:I

.field private mStateOnLabel:I

.field private mSummary:Ljava/lang/String;

.field private final mSummarySpan:Landroid/text/style/TextAppearanceSpan;

.field private mSwitch:Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;

.field private mSwitchChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cyanogenmod/cmparts/widget/SwitchBar$OnSwitchChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x7f010126

    const v1, 0x7f010127

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->MARGIN_ATTRIBUTES:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    const v8, 0x7f080186

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v4, 0x7f080185

    iput v4, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mStateOnLabel:I

    iput v8, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mStateOffLabel:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030068

    invoke-virtual {v4, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget-object v4, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->MARGIN_ATTRIBUTES:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const v4, 0x7f0c00d9

    invoke-virtual {p0, v4}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mLabel:Ljava/lang/String;

    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    iget-object v5, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0191

    invoke-direct {v4, v5, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSummarySpan:Landroid/text/style/TextAppearanceSpan;

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->updateText()V

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const v4, 0x7f0c00da

    invoke-virtual {p0, v4}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;

    iput-object v4, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSwitch:Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSwitch:Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;

    invoke-virtual {v4, v7}, Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;->setSaveEnabled(Z)V

    iget-object v4, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSwitch:Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;

    invoke-virtual {v4}, Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    new-instance v4, Lorg/cyanogenmod/cmparts/widget/SwitchBar$1;

    invoke-direct {v4, p0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar$1;-><init>(Lorg/cyanogenmod/cmparts/widget/SwitchBar;)V

    invoke-virtual {p0, v4}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->addOnSwitchChangeListener(Lorg/cyanogenmod/cmparts/widget/SwitchBar$OnSwitchChangeListener;)V

    invoke-virtual {p0, p0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->setVisibility(I)V

    return-void
.end method

.method private updateText()V
    .locals 5

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSummary:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSummarySpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public addOnSwitchChangeListener(Lorg/cyanogenmod/cmparts/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add twice the same OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public hide()V
    .locals 2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->setVisibility(I)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSwitch:Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-virtual {p0, p2}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->propagateChecked(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSwitch:Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;

    invoke-virtual {v1}, Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lorg/cyanogenmod/cmparts/widget/SwitchBar$SavedState;

    invoke-virtual {v0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSwitch:Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;

    iget-boolean v2, v0, Lorg/cyanogenmod/cmparts/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {v1, v2}, Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;->setCheckedInternal(Z)V

    iget v1, v0, Lorg/cyanogenmod/cmparts/widget/SwitchBar$SavedState;->resOnLabel:I

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->setOnStateOnLabel(I)V

    iget v1, v0, Lorg/cyanogenmod/cmparts/widget/SwitchBar$SavedState;->resOffLabel:I

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->setOnStateOffLabel(I)V

    iget-boolean v1, v0, Lorg/cyanogenmod/cmparts/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->setTextViewLabel(Z)V

    iget-boolean v1, v0, Lorg/cyanogenmod/cmparts/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->setVisibility(I)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSwitch:Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;

    iget-boolean v1, v0, Lorg/cyanogenmod/cmparts/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v1, :cond_1

    move-object v1, p0

    :goto_1
    invoke-virtual {v2, v1}, Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->requestLayout()V

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

    new-instance v0, Lorg/cyanogenmod/cmparts/widget/SwitchBar$SavedState;

    invoke-direct {v0, v1}, Lorg/cyanogenmod/cmparts/widget/SwitchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSwitch:Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;

    invoke-virtual {v2}, Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lorg/cyanogenmod/cmparts/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->isShowing()Z

    move-result v2

    iput-boolean v2, v0, Lorg/cyanogenmod/cmparts/widget/SwitchBar$SavedState;->visible:Z

    iget v2, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mStateOnLabel:I

    iput v2, v0, Lorg/cyanogenmod/cmparts/widget/SwitchBar$SavedState;->resOnLabel:I

    iget v2, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mStateOffLabel:I

    iput v2, v0, Lorg/cyanogenmod/cmparts/widget/SwitchBar$SavedState;->resOffLabel:I

    return-object v0
.end method

.method public propagateChecked(Z)V
    .locals 4

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cyanogenmod/cmparts/widget/SwitchBar$OnSwitchChangeListener;

    iget-object v3, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSwitch:Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;

    invoke-interface {v2, v3, p1}, Lorg/cyanogenmod/cmparts/widget/SwitchBar$OnSwitchChangeListener;->onSwitchChanged(Landroid/widget/Switch;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeOnSwitchChangeListener(Lorg/cyanogenmod/cmparts/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 2

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot remove OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->setTextViewLabel(Z)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSwitch:Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;->setChecked(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSwitch:Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;->setEnabled(Z)V

    return-void
.end method

.method public setOnStateOffLabel(I)V
    .locals 0

    iput p1, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mStateOffLabel:I

    return-void
.end method

.method public setOnStateOnLabel(I)V
    .locals 0

    iput p1, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mStateOnLabel:I

    return-void
.end method

.method public setTextViewLabel(Z)V
    .locals 2

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_0

    const v0, 0x7f080185

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-direct {p0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->updateText()V

    return-void

    :cond_0
    const v0, 0x7f080186

    goto :goto_0
.end method

.method public show()V
    .locals 1

    invoke-virtual {p0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->setVisibility(I)V

    iget-object v0, p0, Lorg/cyanogenmod/cmparts/widget/SwitchBar;->mSwitch:Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;

    invoke-virtual {v0, p0}, Lorg/cyanogenmod/cmparts/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method
