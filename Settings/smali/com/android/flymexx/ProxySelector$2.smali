.class Lcom/android/flymexx/ProxySelector$2;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/flymexx/ProxySelector$2;->this$0:Lcom/android/flymexx/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/flymexx/ProxySelector$2;->this$0:Lcom/android/flymexx/ProxySelector;

    iget-object v0, v0, Lcom/android/flymexx/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/flymexx/ProxySelector$2;->this$0:Lcom/android/flymexx/ProxySelector;

    iget-object v0, v0, Lcom/android/flymexx/ProxySelector;->mPortField:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/flymexx/ProxySelector$2;->this$0:Lcom/android/flymexx/ProxySelector;

    iget-object v0, v0, Lcom/android/flymexx/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
