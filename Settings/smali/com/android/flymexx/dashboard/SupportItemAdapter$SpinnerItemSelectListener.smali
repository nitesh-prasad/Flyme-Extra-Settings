.class final Lcom/android/flymexx/dashboard/SupportItemAdapter$SpinnerItemSelectListener;
.super Ljava/lang/Object;
.source "SupportItemAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/dashboard/SupportItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpinnerItemSelectListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;


# direct methods
.method private constructor <init>(Lcom/android/flymexx/dashboard/SupportItemAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$SpinnerItemSelectListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexx/dashboard/SupportItemAdapter;Lcom/android/flymexx/dashboard/SupportItemAdapter$SpinnerItemSelectListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/flymexx/dashboard/SupportItemAdapter$SpinnerItemSelectListener;-><init>(Lcom/android/flymexx/dashboard/SupportItemAdapter;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$SpinnerItemSelectListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v2}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-get4(Lcom/android/flymexx/dashboard/SupportItemAdapter;)Lcom/android/flymexx/overlay/SupportFeatureProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/flymexx/overlay/SupportFeatureProvider;->getPhoneSupportCountryCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$SpinnerItemSelectListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v2}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-get3(Lcom/android/flymexx/dashboard/SupportItemAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$SpinnerItemSelectListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v2, v1}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-set0(Lcom/android/flymexx/dashboard/SupportItemAdapter;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/flymexx/dashboard/SupportItemAdapter$SpinnerItemSelectListener;->this$0:Lcom/android/flymexx/dashboard/SupportItemAdapter;

    invoke-static {v2}, Lcom/android/flymexx/dashboard/SupportItemAdapter;->-wrap0(Lcom/android/flymexx/dashboard/SupportItemAdapter;)V

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
