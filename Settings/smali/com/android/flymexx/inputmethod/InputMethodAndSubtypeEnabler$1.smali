.class Lcom/android/flymexx/inputmethod/InputMethodAndSubtypeEnabler$1;
.super Ljava/lang/Object;
.source "InputMethodAndSubtypeEnabler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/inputmethod/InputMethodAndSubtypeEnabler;->addInputMethodSubtypePreferences(Landroid/view/inputmethod/InputMethodInfo;Landroid/support/v7/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/support/v7/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/inputmethod/InputMethodAndSubtypeEnabler;


# direct methods
.method constructor <init>(Lcom/android/flymexx/inputmethod/InputMethodAndSubtypeEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/inputmethod/InputMethodAndSubtypeEnabler$1;->this$0:Lcom/android/flymexx/inputmethod/InputMethodAndSubtypeEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;)I
    .locals 1

    instance-of v0, p1, Lcom/android/flymexx/inputmethod/InputMethodSubtypePreference;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/flymexx/inputmethod/InputMethodSubtypePreference;

    iget-object v0, p0, Lcom/android/flymexx/inputmethod/InputMethodAndSubtypeEnabler$1;->this$0:Lcom/android/flymexx/inputmethod/InputMethodAndSubtypeEnabler;

    invoke-static {v0}, Lcom/android/flymexx/inputmethod/InputMethodAndSubtypeEnabler;->-get0(Lcom/android/flymexx/inputmethod/InputMethodAndSubtypeEnabler;)Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/flymexx/inputmethod/InputMethodSubtypePreference;->compareTo(Landroid/support/v7/preference/Preference;Ljava/text/Collator;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/support/v7/preference/Preference;

    check-cast p2, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1, p2}, Lcom/android/flymexx/inputmethod/InputMethodAndSubtypeEnabler$1;->compare(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;)I

    move-result v0

    return v0
.end method
