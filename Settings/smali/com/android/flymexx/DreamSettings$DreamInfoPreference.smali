.class Lcom/android/flymexx/DreamSettings$DreamInfoPreference;
.super Landroid/support/v7/preference/Preference;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DreamInfoPreference"
.end annotation


# instance fields
.field private final mInfo:Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;

.field final synthetic this$0:Lcom/android/flymexx/DreamSettings;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/DreamSettings$DreamInfoPreference;)Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/flymexx/DreamSettings;Landroid/content/Context;Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/flymexx/DreamSettings;

    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;

    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;

    iget-object v0, v0, Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;

    iget-object v0, v0, Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v4, 0x1020019

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;

    iget-boolean v4, v4, Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-instance v4, Lcom/android/flymexx/DreamSettings$DreamInfoPreference$1;

    invoke-direct {v4, p0, p1}, Lcom/android/flymexx/DreamSettings$DreamInfoPreference$1;-><init>(Lcom/android/flymexx/DreamSettings$DreamInfoPreference;Landroid/support/v7/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;

    iget-object v4, v4, Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    const v4, 0x7f1100bc

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v3, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x102001a

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;

    iget-boolean v4, v4, Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v4, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;

    iget-boolean v4, v4, Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;

    iget-boolean v4, v4, Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    new-instance v4, Lcom/android/flymexx/DreamSettings$DreamInfoPreference$2;

    invoke-direct {v4, p0}, Lcom/android/flymexx/DreamSettings$DreamInfoPreference$2;-><init>(Lcom/android/flymexx/DreamSettings$DreamInfoPreference;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2

    :cond_3
    const v4, 0x3ecccccd    # 0.4f

    goto :goto_3
.end method

.method public performClick()V
    .locals 4

    iget-object v2, p0, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;

    iget-boolean v2, v2, Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/flymexx/DreamSettings;

    invoke-virtual {v2}, Lcom/android/flymexx/DreamSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/flymexx/DreamSettings;

    invoke-virtual {v2}, Lcom/android/flymexx/DreamSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;

    iget-object v2, v1, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v1}, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->notifyChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;->isActive:Z

    iget-object v2, p0, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/flymexx/DreamSettings;

    invoke-static {v2}, Lcom/android/flymexx/DreamSettings;->-get0(Lcom/android/flymexx/DreamSettings;)Lcom/android/flymexxlib/dream/DreamBackend;

    move-result-object v2

    iget-object v3, p0, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;

    iget-object v3, v3, Lcom/android/flymexxlib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/android/flymexxlib/dream/DreamBackend;->setActiveDream(Landroid/content/ComponentName;)V

    invoke-virtual {p0}, Lcom/android/flymexx/DreamSettings$DreamInfoPreference;->notifyChanged()V

    return-void
.end method
