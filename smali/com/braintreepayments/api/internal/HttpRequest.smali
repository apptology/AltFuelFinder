.class public Lcom/braintreepayments/api/internal/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field private static final AUTHORIZATION_FINGERPRINT_KEY:Ljava/lang/String; = "authorizationFingerprint"

.field public static DEBUG:Z = false

.field private static final METHOD_GET:Ljava/lang/String; = "GET"

.field private static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final TAG:Ljava/lang/String; = "HttpRequest"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private mAuthorizationFingerprint:Ljava/lang/String;

.field private mBaseUrl:Ljava/lang/String;

.field private mConnectTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/braintreepayments/api/internal/HttpRequest;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "authorizationFingerprint"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/braintreepayments/api/internal/HttpRequest;->mConnectTimeout:I

    .line 63
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "authorizationFingerprint":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/braintreepayments/api/internal/HttpRequest;->mAuthorizationFingerprint:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private static getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/BraintreeSslException;
        }
    .end annotation

    .prologue
    .line 239
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 240
    .local v7, "keyStore":Ljava/security/KeyStore;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 242
    const-string v11, "X.509"

    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 243
    .local v4, "cf":Ljava/security/cert/CertificateFactory;
    invoke-static {}, Lcom/braintreepayments/api/internal/BraintreeGatewayCertificate;->getCertInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 245
    .local v2, "certStream":Ljava/io/InputStream;
    invoke-virtual {v4, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v3

    .line 246
    .local v3, "certificates":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    .line 247
    .local v1, "cert":Ljava/security/cert/Certificate;
    instance-of v11, v1, Ljava/security/cert/X509Certificate;

    if-eqz v11, :cond_0

    .line 248
    move-object v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v11

    invoke-interface {v11}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v9

    .line 249
    .local v9, "subject":Ljava/lang/String;
    invoke-virtual {v7, v9, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    .end local v2    # "certStream":Ljava/io/InputStream;
    .end local v3    # "certificates":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    .end local v4    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "subject":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 262
    .local v5, "e":Ljava/lang/Exception;
    new-instance v11, Lcom/braintreepayments/api/exceptions/BraintreeSslException;

    invoke-direct {v11, v5}, Lcom/braintreepayments/api/exceptions/BraintreeSslException;-><init>(Ljava/lang/Exception;)V

    throw v11

    .line 253
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "certStream":Ljava/io/InputStream;
    .restart local v3    # "certificates":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    .restart local v4    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v10

    .line 255
    .local v10, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v10, v7}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 257
    const-string v11, "TLS"

    invoke-static {v11}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v8

    .line 258
    .local v8, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v11, 0x0

    invoke-virtual {v10}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v8, v11, v12, v13}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 260
    invoke-virtual {v8}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    return-object v11
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "braintree/android/1.6.5"

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 227
    sget-boolean v0, Lcom/braintreepayments/api/internal/HttpRequest;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 230
    :cond_0
    return-void
.end method

.method private parseResponse(Ljava/net/HttpURLConnection;)Lcom/braintreepayments/api/internal/HttpResponse;
    .locals 4
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/ErrorWithResponse;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 189
    .local v1, "responseCode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/braintreepayments/api/internal/HttpRequest;->log(Ljava/lang/String;)V

    .line 191
    sparse-switch v1, :sswitch_data_0

    .line 213
    new-instance v2, Lcom/braintreepayments/api/exceptions/UnexpectedException;

    invoke-direct {v2}, Lcom/braintreepayments/api/exceptions/UnexpectedException;-><init>()V

    throw v2

    .line 193
    :sswitch_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/braintreepayments/api/internal/HttpRequest;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "responseBody":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received response body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/braintreepayments/api/internal/HttpRequest;->log(Ljava/lang/String;)V

    .line 196
    new-instance v2, Lcom/braintreepayments/api/internal/HttpResponse;

    invoke-direct {v2, v1, v0}, Lcom/braintreepayments/api/internal/HttpResponse;-><init>(ILjava/lang/String;)V

    return-object v2

    .line 198
    .end local v0    # "responseBody":Ljava/lang/String;
    :sswitch_1
    new-instance v2, Lcom/braintreepayments/api/exceptions/AuthenticationException;

    invoke-direct {v2}, Lcom/braintreepayments/api/exceptions/AuthenticationException;-><init>()V

    throw v2

    .line 200
    :sswitch_2
    new-instance v2, Lcom/braintreepayments/api/exceptions/AuthorizationException;

    invoke-direct {v2}, Lcom/braintreepayments/api/exceptions/AuthorizationException;-><init>()V

    throw v2

    .line 202
    :sswitch_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/braintreepayments/api/internal/HttpRequest;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .restart local v0    # "responseBody":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received error response body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/braintreepayments/api/internal/HttpRequest;->log(Ljava/lang/String;)V

    .line 205
    new-instance v2, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;

    invoke-direct {v2, v1, v0}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;-><init>(ILjava/lang/String;)V

    throw v2

    .line 207
    .end local v0    # "responseBody":Ljava/lang/String;
    :sswitch_4
    new-instance v2, Lcom/braintreepayments/api/exceptions/UpgradeRequiredException;

    invoke-direct {v2}, Lcom/braintreepayments/api/exceptions/UpgradeRequiredException;-><init>()V

    throw v2

    .line 209
    :sswitch_5
    new-instance v2, Lcom/braintreepayments/api/exceptions/ServerException;

    invoke-direct {v2}, Lcom/braintreepayments/api/exceptions/ServerException;-><init>()V

    throw v2

    .line 211
    :sswitch_6
    new-instance v2, Lcom/braintreepayments/api/exceptions/DownForMaintenanceException;

    invoke-direct {v2}, Lcom/braintreepayments/api/exceptions/DownForMaintenanceException;-><init>()V

    throw v2

    .line 191
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
        0x191 -> :sswitch_1
        0x193 -> :sswitch_2
        0x1a6 -> :sswitch_3
        0x1aa -> :sswitch_4
        0x1f4 -> :sswitch_5
        0x1f7 -> :sswitch_6
    .end sparse-switch
.end method

.method private readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 219
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 220
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 221
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 223
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/braintreepayments/api/internal/HttpResponse;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/ErrorWithResponse;,
            Lcom/braintreepayments/api/exceptions/BraintreeException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 95
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v3, "http"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 100
    .local v2, "uri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "authorizationFingerprint"

    iget-object v5, p0, Lcom/braintreepayments/api/internal/HttpRequest;->mAuthorizationFingerprint:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/braintreepayments/api/internal/HttpRequest;->init(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 105
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, v0}, Lcom/braintreepayments/api/internal/HttpRequest;->parseResponse(Ljava/net/HttpURLConnection;)Lcom/braintreepayments/api/internal/HttpResponse;
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/BraintreeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object v3

    .line 98
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/braintreepayments/api/internal/HttpRequest;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Lcom/braintreepayments/api/exceptions/BraintreeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .restart local v2    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 108
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Lcom/braintreepayments/api/exceptions/BraintreeException;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .end local v1    # "e":Lcom/braintreepayments/api/exceptions/BraintreeException;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v3

    .line 110
    :catch_1
    move-exception v1

    .line 111
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v3, Lcom/braintreepayments/api/exceptions/UnexpectedException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/braintreepayments/api/exceptions/UnexpectedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected init(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/braintreepayments/api/internal/HttpRequest;->log(Ljava/lang/String;)V

    .line 170
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 172
    .local v0, "connection":Ljava/net/HttpURLConnection;
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 173
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {}, Lcom/braintreepayments/api/internal/HttpRequest;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 176
    :cond_0
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/braintreepayments/api/internal/HttpRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "Accept-Language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget v1, p0, Lcom/braintreepayments/api/internal/HttpRequest;->mConnectTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 181
    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;)Lcom/braintreepayments/api/internal/HttpResponse;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/ErrorWithResponse;,
            Lcom/braintreepayments/api/exceptions/BraintreeException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "authorizationFingerprint"

    iget-object v6, p0, Lcom/braintreepayments/api/internal/HttpRequest;->mAuthorizationFingerprint:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "payload":Ljava/lang/String;
    const-string v4, "http"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/internal/HttpRequest;->init(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 145
    :goto_0
    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 146
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 148
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 149
    .local v2, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 151
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 153
    invoke-direct {p0, v0}, Lcom/braintreepayments/api/internal/HttpRequest;->parseResponse(Ljava/net/HttpURLConnection;)Lcom/braintreepayments/api/internal/HttpResponse;
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/BraintreeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 161
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object v4

    .line 142
    .end local v2    # "out":Ljava/io/DataOutputStream;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/braintreepayments/api/internal/HttpRequest;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/braintreepayments/api/internal/HttpRequest;->init(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Lcom/braintreepayments/api/exceptions/BraintreeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 154
    .end local v3    # "payload":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Lcom/braintreepayments/api/exceptions/BraintreeException;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    .end local v1    # "e":Lcom/braintreepayments/api/exceptions/BraintreeException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v4

    .line 156
    :catch_1
    move-exception v1

    .line 157
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Lcom/braintreepayments/api/exceptions/UnexpectedException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/braintreepayments/api/exceptions/UnexpectedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 158
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 159
    .local v1, "e":Lorg/json/JSONException;
    new-instance v4, Lcom/braintreepayments/api/exceptions/UnexpectedException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/braintreepayments/api/exceptions/UnexpectedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 71
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "baseUrl":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/braintreepayments/api/internal/HttpRequest;->mBaseUrl:Ljava/lang/String;

    .line 72
    return-void
.end method

.method protected setConnectTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/braintreepayments/api/internal/HttpRequest;->mConnectTimeout:I

    .line 76
    return-void
.end method
