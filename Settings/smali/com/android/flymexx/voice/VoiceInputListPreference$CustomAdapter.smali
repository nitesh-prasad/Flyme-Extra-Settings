.class Lcom/android/flymexx/voice/VoiceInputListPreference$CustomAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VoiceInputListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/voice/VoiceInputListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/voice/VoiceInputListPreference;


# direct methods
.method public constructor <init>(Lcom/android/flymexx/voice/VoiceInputListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Lcom/android/flymexx/voice/VoiceInputListPreference$CustomAdapter;->this$0:Lcom/android/flymexx/voice/VoiceInputListPreference;

    const v0, 0x10900e1

    const v1, 0x1020014

    invoke-direct {p0, p2, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/flymexx/voice/VoiceInputListPreference$CustomAdapter;->isEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/voice/VoiceInputListPreference$CustomAdapter;->this$0:Lcom/android/flymexx/voice/VoiceInputListPreference;

    invoke-static {v0}, Lcom/android/flymexx/voice/VoiceInputListPreference;->-get0(Lcom/android/flymexx/voice/VoiceInputListPreference;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
