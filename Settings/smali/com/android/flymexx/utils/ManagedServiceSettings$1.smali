.class Lcom/android/flymexx/utils/ManagedServiceSettings$1;
.super Ljava/lang/Object;
.source "ManagedServiceSettings.java"

# interfaces
.implements Lcom/android/flymexx/utils/ServiceListing$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/flymexx/utils/ManagedServiceSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/flymexx/utils/ManagedServiceSettings;


# direct methods
.method constructor <init>(Lcom/android/flymexx/utils/ManagedServiceSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/utils/ManagedServiceSettings$1;->this$0:Lcom/android/flymexx/utils/ManagedServiceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServicesReloaded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/flymexx/utils/ManagedServiceSettings$1;->this$0:Lcom/android/flymexx/utils/ManagedServiceSettings;

    invoke-static {v0, p1}, Lcom/android/flymexx/utils/ManagedServiceSettings;->-wrap0(Lcom/android/flymexx/utils/ManagedServiceSettings;Ljava/util/List;)V

    return-void
.end method
