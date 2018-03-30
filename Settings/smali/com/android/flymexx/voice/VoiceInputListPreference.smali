.class public Lcom/android/flymexx/voice/VoiceInputListPreference;
.super Lcom/android/flymexx/AppListPreferenceWithSettings;
.source "VoiceInputListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/flymexx/voice/VoiceInputListPreference$CustomAdapter;
    }
.end annotation


# instance fields
.field private mAssistRestrict:Landroid/content/ComponentName;

.field private final mAvailableIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHelper:Lcom/android/flymexx/voice/VoiceInputHelper;


# direct methods
.method static synthetic -get0(Lcom/android/flymexx/voice/VoiceInputListPreference;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/AppListPreferenceWithSettings;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    const v0, 0x7f0c0d48

    invoke-virtual {p0, v0}, Lcom/android/flymexx/voice/VoiceInputListPreference;->setDialogTitle(I)V

    return-void
.end method


# virtual methods
.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 3

    new-instance v0, Lcom/android/flymexx/voice/VoiceInputListPreference$CustomAdapter;

    invoke-virtual {p0}, Lcom/android/flymexx/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/flymexx/voice/VoiceInputListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/flymexx/voice/VoiceInputListPreference$CustomAdapter;-><init>(Lcom/android/flymexx/voice/VoiceInputListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public getCurrentService()Landroid/content/ComponentName;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mHelper:Lcom/android/flymexx/voice/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/flymexx/voice/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mHelper:Lcom/android/flymexx/voice/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/flymexx/voice/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mHelper:Lcom/android/flymexx/voice/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/flymexx/voice/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mHelper:Lcom/android/flymexx/voice/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/flymexx/voice/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    return-object v0

    :cond_1
    return-object v1
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mHelper:Lcom/android/flymexx/voice/VoiceInputHelper;

    iget-object v3, v3, Lcom/android/flymexx/voice/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mHelper:Lcom/android/flymexx/voice/VoiceInputHelper;

    iget-object v3, v3, Lcom/android/flymexx/voice/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/flymexx/voice/VoiceInputHelper$InteractionInfo;

    iget-object v3, v1, Lcom/android/flymexx/voice/VoiceInputHelper$InteractionInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/flymexx/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "voice_interaction_service"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/flymexx/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "voice_recognition_service"

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v1, Lcom/android/flymexx/voice/VoiceInputHelper$InteractionInfo;->service:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/flymexx/voice/VoiceInputHelper$InteractionInfo;->serviceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v7}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/flymexx/voice/VoiceInputListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/flymexx/voice/VoiceInputListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/android/flymexx/voice/VoiceInputHelper$InteractionInfo;->settings:Landroid/content/ComponentName;

    invoke-virtual {p0, v3}, Lcom/android/flymexx/voice/VoiceInputListPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    return v8

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mHelper:Lcom/android/flymexx/voice/VoiceInputHelper;

    iget-object v3, v3, Lcom/android/flymexx/voice/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mHelper:Lcom/android/flymexx/voice/VoiceInputHelper;

    iget-object v3, v3, Lcom/android/flymexx/voice/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/flymexx/voice/VoiceInputHelper$RecognizerInfo;

    iget-object v3, v2, Lcom/android/flymexx/voice/VoiceInputHelper$RecognizerInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/flymexx/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "voice_interaction_service"

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/flymexx/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "voice_recognition_service"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/flymexx/voice/VoiceInputListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/flymexx/voice/VoiceInputListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/android/flymexx/voice/VoiceInputHelper$RecognizerInfo;->settings:Landroid/content/ComponentName;

    invoke-virtual {p0, v3}, Lcom/android/flymexx/voice/VoiceInputListPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    return v8

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/flymexx/voice/VoiceInputListPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    return v8
.end method

.method public refreshVoiceInputs()V
    .locals 11

    const/4 v10, 0x0

    new-instance v8, Lcom/android/flymexx/voice/VoiceInputHelper;

    invoke-virtual {p0}, Lcom/android/flymexx/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/flymexx/voice/VoiceInputHelper;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mHelper:Lcom/android/flymexx/voice/VoiceInputHelper;

    iget-object v8, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mHelper:Lcom/android/flymexx/voice/VoiceInputHelper;

    invoke-virtual {v8}, Lcom/android/flymexx/voice/VoiceInputHelper;->buildUi()V

    iget-object v8, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mAssistRestrict:Landroid/content/ComponentName;

    if-nez v8, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    iget-object v8, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_1
    iget-object v8, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mHelper:Lcom/android/flymexx/voice/VoiceInputHelper;

    iget-object v8, v8, Lcom/android/flymexx/voice/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    iget-object v8, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mHelper:Lcom/android/flymexx/voice/VoiceInputHelper;

    iget-object v8, v8, Lcom/android/flymexx/voice/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/flymexx/voice/VoiceInputHelper$InteractionInfo;

    iget-object v8, v4, Lcom/android/flymexx/voice/VoiceInputHelper$InteractionInfo;->appLabel:Ljava/lang/CharSequence;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, v4, Lcom/android/flymexx/voice/VoiceInputHelper$InteractionInfo;->key:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, v4, Lcom/android/flymexx/voice/VoiceInputHelper$InteractionInfo;->key:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mAssistRestrict:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v3, 0x0

    :goto_3
    iget-object v8, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mHelper:Lcom/android/flymexx/voice/VoiceInputHelper;

    iget-object v8, v8, Lcom/android/flymexx/voice/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_5

    iget-object v8, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mHelper:Lcom/android/flymexx/voice/VoiceInputHelper;

    iget-object v8, v8, Lcom/android/flymexx/voice/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/flymexx/voice/VoiceInputHelper$RecognizerInfo;

    iget-object v8, v5, Lcom/android/flymexx/voice/VoiceInputHelper$RecognizerInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, v5, Lcom/android/flymexx/voice/VoiceInputHelper$RecognizerInfo;->key:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_3

    iget-object v8, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    add-int v9, v6, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-interface {v2, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v8}, Lcom/android/flymexx/voice/VoiceInputListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v8}, Lcom/android/flymexx/voice/VoiceInputListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mHelper:Lcom/android/flymexx/voice/VoiceInputHelper;

    iget-object v8, v8, Lcom/android/flymexx/voice/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mHelper:Lcom/android/flymexx/voice/VoiceInputHelper;

    iget-object v8, v8, Lcom/android/flymexx/voice/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/flymexx/voice/VoiceInputListPreference;->setValue(Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_6
    iget-object v8, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mHelper:Lcom/android/flymexx/voice/VoiceInputHelper;

    iget-object v8, v8, Lcom/android/flymexx/voice/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mHelper:Lcom/android/flymexx/voice/VoiceInputHelper;

    iget-object v8, v8, Lcom/android/flymexx/voice/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/flymexx/voice/VoiceInputListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v10}, Lcom/android/flymexx/voice/VoiceInputListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public setAssistRestrict(Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/voice/VoiceInputListPreference;->mAssistRestrict:Landroid/content/ComponentName;

    return-void
.end method

.method public setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
