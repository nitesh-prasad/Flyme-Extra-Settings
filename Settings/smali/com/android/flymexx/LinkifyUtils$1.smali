.class final Lcom/android/flymexx/LinkifyUtils$1;
.super Landroid/text/style/ClickableSpan;
.source "LinkifyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/flymexx/LinkifyUtils$OnClickListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/android/flymexx/LinkifyUtils$OnClickListener;


# direct methods
.method constructor <init>(Lcom/android/flymexx/LinkifyUtils$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/LinkifyUtils$1;->val$listener:Lcom/android/flymexx/LinkifyUtils$OnClickListener;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/LinkifyUtils$1;->val$listener:Lcom/android/flymexx/LinkifyUtils$OnClickListener;

    invoke-interface {v0}, Lcom/android/flymexx/LinkifyUtils$OnClickListener;->onClick()V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
