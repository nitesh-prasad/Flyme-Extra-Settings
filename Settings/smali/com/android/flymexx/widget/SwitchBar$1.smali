.class Lcom/android/flymexx/widget/SwitchBar$1;
.super Ljava/lang/Object;
.source "SwitchBar.java"

# interfaces
.implements Lcom/android/flymexx/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/widget/SwitchBar;


# direct methods
.method constructor <init>(Lcom/android/flymexx/widget/SwitchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/widget/SwitchBar$1;->this$0:Lcom/android/flymexx/widget/SwitchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/widget/SwitchBar$1;->this$0:Lcom/android/flymexx/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/flymexx/widget/SwitchBar;->setTextViewLabel(Z)V

    return-void
.end method
