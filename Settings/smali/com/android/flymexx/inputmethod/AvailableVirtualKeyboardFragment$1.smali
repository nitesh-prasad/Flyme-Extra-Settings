.class Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment$1;
.super Ljava/lang/Object;
.source "AvailableVirtualKeyboardFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;->updateInputMethodPreferenceViews()V
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
        "Lcom/android/flymexx/inputmethod/InputMethodPreference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;

.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;Ljava/text/Collator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment$1;->this$0:Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment;

    iput-object p2, p0, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment$1;->val$collator:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/flymexx/inputmethod/InputMethodPreference;Lcom/android/flymexx/inputmethod/InputMethodPreference;)I
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment$1;->val$collator:Ljava/text/Collator;

    invoke-virtual {p1, p2, v0}, Lcom/android/flymexx/inputmethod/InputMethodPreference;->compareTo(Lcom/android/flymexx/inputmethod/InputMethodPreference;Ljava/text/Collator;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/flymexx/inputmethod/InputMethodPreference;

    check-cast p2, Lcom/android/flymexx/inputmethod/InputMethodPreference;

    invoke-virtual {p0, p1, p2}, Lcom/android/flymexx/inputmethod/AvailableVirtualKeyboardFragment$1;->compare(Lcom/android/flymexx/inputmethod/InputMethodPreference;Lcom/android/flymexx/inputmethod/InputMethodPreference;)I

    move-result v0

    return v0
.end method
