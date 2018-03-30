.class Lcom/android/flymexx/datausage/CellDataPreference$1;
.super Lcom/android/flymexx/datausage/CellDataPreference$DataStateListener;
.source "CellDataPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/datausage/CellDataPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/datausage/CellDataPreference;


# direct methods
.method constructor <init>(Lcom/android/flymexx/datausage/CellDataPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/datausage/CellDataPreference$1;->this$0:Lcom/android/flymexx/datausage/CellDataPreference;

    invoke-direct {p0}, Lcom/android/flymexx/datausage/CellDataPreference$DataStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/flymexx/datausage/CellDataPreference$1;->this$0:Lcom/android/flymexx/datausage/CellDataPreference;

    invoke-static {v0}, Lcom/android/flymexx/datausage/CellDataPreference;->-wrap0(Lcom/android/flymexx/datausage/CellDataPreference;)V

    return-void
.end method
