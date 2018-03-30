.class Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/flymexx/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCertHolder:Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

.field final synthetic this$0:Lcom/android/flymexx/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/flymexx/TrustedCredentialsSettings;Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;->this$0:Lcom/android/flymexx/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

    invoke-static {p1, p0}, Lcom/android/flymexx/TrustedCredentialsSettings;->-set0(Lcom/android/flymexx/TrustedCredentialsSettings;Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;)Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/flymexx/TrustedCredentialsSettings;Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;-><init>(Lcom/android/flymexx/TrustedCredentialsSettings;Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7

    :try_start_0
    iget-object v4, p0, Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;->this$0:Lcom/android/flymexx/TrustedCredentialsSettings;

    invoke-static {v4}, Lcom/android/flymexx/TrustedCredentialsSettings;->-get2(Lcom/android/flymexx/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

    iget v5, v5, Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

    invoke-static {v4}, Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;->-get2(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

    invoke-static {v4}, Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;->-get6(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/security/IKeyChainService;->installCaCertificate([B)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

    invoke-static {v4}, Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;->-get1(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v1

    const-string/jumbo v4, "TrustedCredentialsSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error while toggling alias "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

    invoke-static {v6}, Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;->-get1(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

    invoke-static {v0}, Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;->-get5(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)Lcom/android/flymexx/TrustedCredentialsSettings$Tab;

    move-result-object v0

    invoke-static {v0}, Lcom/android/flymexx/TrustedCredentialsSettings$Tab;->-get5(Lcom/android/flymexx/TrustedCredentialsSettings$Tab;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

    iget-object v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

    invoke-static {v0}, Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;->-get2(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;->-set0(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;Z)Z

    :goto_1
    iget-object v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

    invoke-static {v0}, Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;->-get0(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->notifyDataSetChanged()V

    :goto_2
    iget-object v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;->this$0:Lcom/android/flymexx/TrustedCredentialsSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/flymexx/TrustedCredentialsSettings;->-set0(Lcom/android/flymexx/TrustedCredentialsSettings;Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;)Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

    invoke-static {v0}, Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;->-get0(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

    invoke-virtual {v0, v1}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->remove(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;

    invoke-static {v0}, Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;->-get0(Lcom/android/flymexx/TrustedCredentialsSettings$CertHolder;)Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/flymexx/TrustedCredentialsSettings$GroupAdapter;->load()V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/flymexx/TrustedCredentialsSettings$AliasOperation;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
