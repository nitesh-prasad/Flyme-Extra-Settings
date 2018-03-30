.class public Lcom/android/flymexx/applications/ShortcutPreference;
.super Landroid/support/v7/preference/Preference;
.source "ShortcutPreference.java"


# instance fields
.field private final mPrefKey:Ljava/lang/String;

.field private final mTarget:Ljava/lang/Class;

.field private final mTitle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/flymexx/applications/ShortcutPreference;->mTarget:Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/flymexx/applications/ShortcutPreference;->mPrefKey:Ljava/lang/String;

    iput p5, p0, Lcom/android/flymexx/applications/ShortcutPreference;->mTitle:I

    invoke-virtual {p0, p4}, Lcom/android/flymexx/applications/ShortcutPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/flymexx/applications/ShortcutPreference;->mPrefKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/flymexx/applications/ShortcutPreference;->setKey(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public performClick()V
    .locals 7

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/support/v7/preference/Preference;->performClick()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, ":settings:fragment_args_key"

    iget-object v1, p0, Lcom/android/flymexx/applications/ShortcutPreference;->mPrefKey:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/flymexx/applications/ShortcutPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/applications/ShortcutPreference;->mTarget:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v5, p0, Lcom/android/flymexx/applications/ShortcutPreference;->mTitle:I

    const/4 v4, 0x0

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/flymexx/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    return-void
.end method
