.class public Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;
.super Lcom/android/flymexx/SettingsPreferenceFragment;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/flymexx/accessibility/ListDialogPreference$OnValueChangedListener;


# instance fields
.field private mBackgroundColor:Lcom/android/flymexx/accessibility/ColorPreference;

.field private mBackgroundOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mCustom:Landroid/support/v7/preference/PreferenceCategory;

.field private mEdgeColor:Lcom/android/flymexx/accessibility/ColorPreference;

.field private mEdgeType:Lcom/android/flymexx/accessibility/EdgeTypePreference;

.field private mFontSize:Landroid/support/v7/preference/ListPreference;

.field private mForegroundColor:Lcom/android/flymexx/accessibility/ColorPreference;

.field private mForegroundOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

.field private mLocale:Lcom/android/flymexx/accessibility/LocalePreference;

.field private mPreset:Lcom/android/flymexx/accessibility/PresetPreference;

.field private mPreviewText:Lcom/android/internal/widget/SubtitleView;

.field private mPreviewViewport:Landroid/view/View;

.field private mPreviewWindow:Landroid/view/View;

.field private mShowingCustom:Z

.field private mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

.field private mToggleSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

.field private mTypeface:Landroid/support/v7/preference/ListPreference;

.field private mWindowColor:Lcom/android/flymexx/accessibility/ColorPreference;

.field private mWindowOpacity:Lcom/android/flymexx/accessibility/ColorPreference;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;)Lcom/android/flymexx/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V
    .locals 10

    const v9, 0x7f0c0921

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/SubtitleView;->setStyle(I)V

    invoke-virtual {p1}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x9

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x41800000    # 16.0f

    div-float v6, v7, v8

    const v7, 0x3d5a511a    # 0.0533f

    mul-float/2addr v7, v6

    mul-float/2addr v7, v2

    invoke-virtual {p1, v7}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v0, v3, v9}, Lcom/android/flymexxlib/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b00e3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    mul-float v7, v5, v2

    invoke-virtual {p1, v7}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v9}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_1
.end method

.method private initializeAllPreferences()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string/jumbo v9, "captioning_locale"

    invoke-virtual {p0, v9}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/flymexx/accessibility/LocalePreference;

    iput-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/flymexx/accessibility/LocalePreference;

    const-string/jumbo v9, "captioning_font_size"

    invoke-virtual {p0, v9}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/ListPreference;

    iput-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0063

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    const v9, 0x7f0a0062

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "captioning_preset"

    invoke-virtual {p0, v9}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/flymexx/accessibility/PresetPreference;

    iput-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/flymexx/accessibility/PresetPreference;

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/flymexx/accessibility/PresetPreference;

    invoke-virtual {v9, v7}, Lcom/android/flymexx/accessibility/PresetPreference;->setValues([I)V

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/flymexx/accessibility/PresetPreference;

    invoke-virtual {v9, v6}, Lcom/android/flymexx/accessibility/PresetPreference;->setTitles([Ljava/lang/CharSequence;)V

    const-string/jumbo v9, "custom"

    invoke-virtual {p0, v9}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    iput-boolean v12, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    const v9, 0x7f0a005f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    const v9, 0x7f0a005e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_foreground_color"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/flymexx/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/flymexx/accessibility/ColorPreference;

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-virtual {v9, v2}, Lcom/android/flymexx/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/android/flymexx/accessibility/ColorPreference;->setValues([I)V

    const v9, 0x7f0a0061

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    const v9, 0x7f0a0060

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_foreground_opacity"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/flymexx/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/flymexx/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/flymexx/accessibility/ColorPreference;->setValues([I)V

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_edge_color"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/flymexx/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/flymexx/accessibility/ColorPreference;

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-virtual {v9, v2}, Lcom/android/flymexx/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/android/flymexx/accessibility/ColorPreference;->setValues([I)V

    array-length v9, v3

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [I

    array-length v9, v2

    add-int/lit8 v9, v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    array-length v9, v3

    invoke-static {v3, v11, v1, v12, v9}, Ljava/lang/System;->arraycopy([II[III)V

    array-length v9, v2

    invoke-static {v2, v11, v0, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v11, v1, v11

    const v9, 0x7f0c0925

    invoke-virtual {p0, v9}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v11

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_background_color"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/flymexx/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/flymexx/accessibility/ColorPreference;

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-virtual {v9, v0}, Lcom/android/flymexx/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-virtual {v9, v1}, Lcom/android/flymexx/accessibility/ColorPreference;->setValues([I)V

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_background_opacity"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/flymexx/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/flymexx/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/flymexx/accessibility/ColorPreference;->setValues([I)V

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_window_color"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/flymexx/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/flymexx/accessibility/ColorPreference;

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-virtual {v9, v0}, Lcom/android/flymexx/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-virtual {v9, v1}, Lcom/android/flymexx/accessibility/ColorPreference;->setValues([I)V

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_window_opacity"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/flymexx/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/flymexx/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/flymexx/accessibility/ColorPreference;->setValues([I)V

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_edge_type"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/flymexx/accessibility/EdgeTypePreference;

    iput-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/flymexx/accessibility/EdgeTypePreference;

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_typeface"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/ListPreference;

    iput-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/ListPreference;

    return-void
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->onInstallSwitchBarToggleSwitch()V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/SwitchBar;->show()V

    return-void
.end method

.method private installUpdateListeners()V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/flymexx/accessibility/PresetPreference;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/accessibility/PresetPreference;->setOnValueChangedListener(Lcom/android/flymexx/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/flymexx/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/flymexx/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/flymexx/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/flymexx/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/flymexx/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/flymexx/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/flymexx/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/flymexx/accessibility/EdgeTypePreference;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/accessibility/EdgeTypePreference;->setOnValueChangedListener(Lcom/android/flymexx/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/flymexx/accessibility/LocalePreference;

    invoke-virtual {v0, p0}, Lcom/android/flymexx/accessibility/LocalePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private mergeColorOpacity(Lcom/android/flymexx/accessibility/ColorPreference;Lcom/android/flymexx/accessibility/ColorPreference;)I
    .locals 5

    invoke-virtual {p1}, Lcom/android/flymexx/accessibility/ColorPreference;->getValue()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/flymexx/accessibility/ColorPreference;->getValue()I

    move-result v1

    invoke-static {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const v4, 0xffff00

    or-int v2, v4, v3

    :goto_0
    return v2

    :cond_0
    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    goto :goto_0

    :cond_1
    const v3, 0xffffff

    and-int/2addr v3, v0

    const/high16 v4, -0x1000000

    and-int/2addr v4, v1

    or-int v2, v3, v4

    goto :goto_0
.end method

.method private parseColorOpacity(Lcom/android/flymexx/accessibility/ColorPreference;Lcom/android/flymexx/accessibility/ColorPreference;I)V
    .locals 4

    const/high16 v3, -0x1000000

    invoke-static {p3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v2

    if-nez v2, :cond_0

    const v0, 0xffffff

    and-int/lit16 v2, p3, 0xff

    shl-int/lit8 v1, v2, 0x18

    :goto_0
    const v2, 0xffffff

    or-int/2addr v2, v1

    invoke-virtual {p2, v2}, Lcom/android/flymexx/accessibility/ColorPreference;->setValue(I)V

    invoke-virtual {p1, v0}, Lcom/android/flymexx/accessibility/ColorPreference;->setValue(I)V

    return-void

    :cond_0
    ushr-int/lit8 v2, p3, 0x18

    if-nez v2, :cond_1

    const/4 v0, 0x0

    and-int/lit16 v2, p3, 0xff

    shl-int/lit8 v1, v2, 0x18

    goto :goto_0

    :cond_1
    or-int v0, p3, v3

    and-int v1, p3, v3

    goto :goto_0
.end method

.method private refreshPreviewText()V
    .locals 10

    const v9, 0x7f0c0920

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    if-eqz v4, :cond_1

    iget-object v7, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v6

    iget-object v7, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v8, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    invoke-static {v7, v4, v8, v6}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V

    iget-object v7, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v0, v2, v9}, Lcom/android/flymexxlib/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v7, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    iget v8, v5, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v4, v9}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_0

    :cond_3
    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget-object v7, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    iget v8, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method private refreshShowingCustom()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/flymexx/accessibility/PresetPreference;

    invoke-virtual {v3}, Lcom/android/flymexx/accessibility/PresetPreference;->getValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-boolean v2, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iput-boolean v1, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    goto :goto_1
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/flymexx/widget/SwitchBar;->hide()V

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/flymexx/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method private updateAllPreferences()V
    .locals 11

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v5

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/flymexx/accessibility/PresetPreference;

    invoke-virtual {v9, v5}, Lcom/android/flymexx/accessibility/PresetPreference;->setValue(I)V

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v3

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/flymexx/accessibility/EdgeTypePreference;

    iget v10, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {v9, v10}, Lcom/android/flymexx/accessibility/EdgeTypePreference;->setValue(I)V

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/flymexx/accessibility/ColorPreference;

    iget v10, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {v9, v10}, Lcom/android/flymexx/accessibility/ColorPreference;->setValue(I)V

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v9

    if-eqz v9, :cond_2

    iget v4, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    :goto_0
    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/flymexx/accessibility/ColorPreference;

    iget-object v10, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-direct {p0, v9, v10, v4}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/flymexx/accessibility/ColorPreference;Lcom/android/flymexx/accessibility/ColorPreference;I)V

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v9

    if-eqz v9, :cond_3

    iget v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    :goto_1
    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/flymexx/accessibility/ColorPreference;

    iget-object v10, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-direct {p0, v9, v10, v1}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/flymexx/accessibility/ColorPreference;Lcom/android/flymexx/accessibility/ColorPreference;I)V

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v9

    if-eqz v9, :cond_4

    iget v8, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    :goto_2
    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/flymexx/accessibility/ColorPreference;

    iget-object v10, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-direct {p0, v9, v10, v8}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/flymexx/accessibility/ColorPreference;Lcom/android/flymexx/accessibility/ColorPreference;I)V

    iget-object v7, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/ListPreference;

    if-nez v7, :cond_0

    const-string/jumbo v7, ""

    :cond_0
    invoke-virtual {v9, v7}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/flymexx/accessibility/LocalePreference;

    if-nez v6, :cond_1

    const-string/jumbo v6, ""

    :cond_1
    invoke-virtual {v9, v6}, Lcom/android/flymexx/accessibility/LocalePreference;->setValue(Ljava/lang/String;)V

    return-void

    :cond_2
    const v4, 0xffffff

    goto :goto_0

    :cond_3
    const v1, 0xffffff

    goto :goto_1

    :cond_4
    const v8, 0xffffff

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/flymexx/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/flymexx/SettingsActivity;->getSwitchBar()Lcom/android/flymexx/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/flymexx/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v2, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/flymexx/widget/SwitchBar;->getSwitch()Lcom/android/flymexx/widget/ToggleSwitch;

    move-result-object v2

    iput-object v2, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    invoke-direct {p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->installSwitchBarToggleSwitch()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "captioning"

    invoke-virtual {p0, v0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->initializeAllPreferences()V

    invoke-direct {p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->updateAllPreferences()V

    invoke-direct {p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    invoke-direct {p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->installUpdateListeners()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, -0x1

    const v2, 0x7f040038

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/flymexx/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f1100a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-object v1
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/flymexx/SettingsPreferenceFragment;->onDestroyView()V

    invoke-direct {p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->removeSwitchBarToggleSwitch()V

    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/flymexx/widget/ToggleSwitch;

    new-instance v1, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment$2;

    invoke-direct {v1, p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment$2;-><init>(Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/flymexx/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/flymexx/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/ListPreference;

    if-ne v1, p1, :cond_1

    const-string/jumbo v1, "accessibility_captioning_typeface"

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    const/4 v1, 0x1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    if-ne v1, p1, :cond_2

    const-string/jumbo v1, "accessibility_captioning_font_scale"

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/flymexx/accessibility/LocalePreference;

    if-ne v1, p1, :cond_0

    const-string/jumbo v1, "accessibility_captioning_locale"

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onValueChanged(Lcom/android/flymexx/accessibility/ListDialogPreference;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/flymexx/accessibility/ColorPreference;

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

    if-ne v2, p1, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/flymexx/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/flymexx/accessibility/ColorPreference;Lcom/android/flymexx/accessibility/ColorPreference;)I

    move-result v1

    const-string/jumbo v2, "accessibility_captioning_foreground_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/flymexx/accessibility/ColorPreference;

    if-eq v2, p1, :cond_3

    iget-object v2, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

    if-ne v2, p1, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/flymexx/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/flymexx/accessibility/ColorPreference;Lcom/android/flymexx/accessibility/ColorPreference;)I

    move-result v1

    const-string/jumbo v2, "accessibility_captioning_background_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/flymexx/accessibility/ColorPreference;

    if-eq v2, p1, :cond_5

    iget-object v2, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

    if-ne v2, p1, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/flymexx/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/flymexx/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/flymexx/accessibility/ColorPreference;Lcom/android/flymexx/accessibility/ColorPreference;)I

    move-result v1

    const-string/jumbo v2, "accessibility_captioning_window_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/flymexx/accessibility/ColorPreference;

    if-ne v2, p1, :cond_7

    const-string/jumbo v2, "accessibility_captioning_edge_color"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/flymexx/accessibility/PresetPreference;

    if-ne v2, p1, :cond_8

    const-string/jumbo v2, "accessibility_captioning_preset"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/flymexx/accessibility/EdgeTypePreference;

    if-ne v2, p1, :cond_1

    const-string/jumbo v2, "accessibility_captioning_edge_type"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/flymexx/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    const v1, 0x7f1100a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SubtitleView;

    iput-object v1, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    iget-object v2, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    const v1, 0x7f1100a4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    const v1, 0x7f1100a3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    iget-object v1, p0, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    new-instance v2, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment$1;

    invoke-direct {v2, p0}, Lcom/android/flymexx/accessibility/CaptionPropertiesFragment$1;-><init>(Lcom/android/flymexx/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method
