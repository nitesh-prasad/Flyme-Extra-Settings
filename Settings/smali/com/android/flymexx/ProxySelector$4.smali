.class Lcom/android/flymexx/ProxySelector$4;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/ProxySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/ProxySelector;


# direct methods
.method constructor <init>(Lcom/android/flymexx/ProxySelector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/ProxySelector$4;->this$0:Lcom/android/flymexx/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    :cond_0
    return-void
.end method
