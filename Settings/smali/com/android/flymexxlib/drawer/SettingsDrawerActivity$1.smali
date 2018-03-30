.class Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$1;
.super Ljava/lang/Object;
.source "SettingsDrawerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;


# direct methods
.method constructor <init>(Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$1;->this$0:Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$1;->this$0:Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;

    iget-object v1, p0, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity$1;->this$0:Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;

    invoke-static {v1}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->-get0(Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;)Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/flymexxlib/drawer/SettingsDrawerAdapter;->getTile(I)Lcom/android/flymexxlib/drawer/Tile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/flymexxlib/drawer/SettingsDrawerActivity;->onTileClicked(Lcom/android/flymexxlib/drawer/Tile;)V

    return-void
.end method
