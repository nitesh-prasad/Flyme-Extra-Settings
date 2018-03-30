.class Lorg/cyanogenmod/cmparts/profiles/NamePreference$1;
.super Ljava/lang/Object;
.source "NamePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/cmparts/profiles/NamePreference;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/cmparts/profiles/NamePreference;

.field final synthetic val$entry:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/cmparts/profiles/NamePreference;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/cmparts/profiles/NamePreference$1;->this$0:Lorg/cyanogenmod/cmparts/profiles/NamePreference;

    iput-object p2, p0, Lorg/cyanogenmod/cmparts/profiles/NamePreference$1;->val$entry:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/NamePreference$1;->val$entry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/NamePreference$1;->this$0:Lorg/cyanogenmod/cmparts/profiles/NamePreference;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->-set0(Lorg/cyanogenmod/cmparts/profiles/NamePreference;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/NamePreference$1;->this$0:Lorg/cyanogenmod/cmparts/profiles/NamePreference;

    invoke-static {v1}, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->-get0(Lorg/cyanogenmod/cmparts/profiles/NamePreference;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/cyanogenmod/cmparts/profiles/NamePreference$1;->this$0:Lorg/cyanogenmod/cmparts/profiles/NamePreference;

    invoke-virtual {v1, p0}, Lorg/cyanogenmod/cmparts/profiles/NamePreference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method
