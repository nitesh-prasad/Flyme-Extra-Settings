.class public Lcom/android/flymexx/datausage/TemplatePreferenceCategory;
.super Lcom/android/flymexx/DividedCategory;
.source "TemplatePreferenceCategory.java"

# interfaces
.implements Lcom/android/flymexx/datausage/TemplatePreference;


# instance fields
.field private mSubId:I

.field private mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/DividedCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public addPreference(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/flymexx/datausage/TemplatePreference;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "TemplatePreferenceCategories can only hold TemplatePreferences"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/flymexx/DividedCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public pushTemplates(Lcom/android/flymexx/datausage/TemplatePreference$NetworkServices;)V
    .locals 7

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/flymexx/datausage/TemplatePreferenceCategory;->mTemplate:Landroid/net/NetworkTemplate;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "null mTemplate for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/TemplatePreferenceCategory;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget v4, p0, Lcom/android/flymexx/datausage/TemplatePreferenceCategory;->mSubId:I

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/flymexx/datausage/TemplatePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iget v4, p0, Lcom/android/flymexx/datausage/TemplatePreferenceCategory;->mSubId:I

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/flymexx/datausage/TemplatePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/flymexx/datausage/TemplatePreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/flymexx/datausage/TemplatePreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/flymexx/datausage/TemplatePreference;

    iget-object v5, p0, Lcom/android/flymexx/datausage/TemplatePreferenceCategory;->mTemplate:Landroid/net/NetworkTemplate;

    iget v6, p0, Lcom/android/flymexx/datausage/TemplatePreferenceCategory;->mSubId:I

    invoke-interface {v4, v5, v6, p1}, Lcom/android/flymexx/datausage/TemplatePreference;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/flymexx/datausage/TemplatePreference$NetworkServices;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/flymexx/datausage/TemplatePreference$NetworkServices;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/datausage/TemplatePreferenceCategory;->mTemplate:Landroid/net/NetworkTemplate;

    iput p2, p0, Lcom/android/flymexx/datausage/TemplatePreferenceCategory;->mSubId:I

    return-void
.end method
