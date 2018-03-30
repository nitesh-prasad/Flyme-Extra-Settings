.class Lcom/android/flymexx/AppPicker$MyApplicationInfo;
.super Ljava/lang/Object;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/AppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyApplicationInfo"
.end annotation


# instance fields
.field info:Landroid/content/pm/ApplicationInfo;

.field label:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/flymexx/AppPicker;


# direct methods
.method constructor <init>(Lcom/android/flymexx/AppPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/AppPicker$MyApplicationInfo;->this$0:Lcom/android/flymexx/AppPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
