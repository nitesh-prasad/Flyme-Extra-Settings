.class final Lcom/android/flymexx/inputmethod/InputMethodAndLanguageSettings$1;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProviderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSummaryProvider(Landroid/app/Activity;Lcom/android/flymexx/dashboard/SummaryLoader;)Lcom/android/flymexx/dashboard/SummaryLoader$SummaryProvider;
    .locals 1

    new-instance v0, Lcom/android/flymexx/inputmethod/InputMethodAndLanguageSettings$SummaryProvider;

    invoke-direct {v0, p1, p2}, Lcom/android/flymexx/inputmethod/InputMethodAndLanguageSettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/flymexx/dashboard/SummaryLoader;)V

    return-object v0
.end method
