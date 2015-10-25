.class public abstract Lcom/braintreepayments/api/AppSwitch;
.super Ljava/lang/Object;
.source "AppSwitch.java"


# static fields
.field public static final EXTRA_MERCHANT_ID:Ljava/lang/String; = "com.braintreepayments.api.MERCHANT_ID"

.field public static final EXTRA_OFFLINE:Ljava/lang/String; = "com.braintreepayments.api.OFFLINE"

.field public static final EXTRA_PAYMENT_METHOD_NONCE:Ljava/lang/String; = "com.braintreepayments.api.EXTRA_PAYMENT_METHOD_NONCE"

.field protected static sEnableSignatureVerification:Z


# instance fields
.field protected mConfiguration:Lcom/braintreepayments/api/models/Configuration;

.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/braintreepayments/api/AppSwitch;->sEnableSignatureVerification:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/braintreepayments/api/models/Configuration;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configuration"    # Lcom/braintreepayments/api/models/Configuration;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/braintreepayments/api/AppSwitch;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/braintreepayments/api/AppSwitch;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    .line 36
    return-void
.end method

.method private isSignatureValid()Z
    .locals 17

    .prologue
    .line 54
    sget-boolean v15, Lcom/braintreepayments/api/AppSwitch;->sEnableSignatureVerification:Z

    if-nez v15, :cond_0

    .line 55
    const/4 v5, 0x1

    .line 89
    :goto_0
    return v5

    .line 58
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/braintreepayments/api/AppSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 61
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/braintreepayments/api/AppSwitch;->getPackage()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x40

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    iget-object v12, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .local v12, "signatures":[Landroid/content/pm/Signature;
    move-object v1, v12

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v11, v1, v4

    .line 69
    .local v11, "signature":Landroid/content/pm/Signature;
    :try_start_1
    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v10

    .line 70
    .local v10, "rawCert":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 72
    .local v2, "certStream":Ljava/io/InputStream;
    const-string v15, "X509"

    invoke-static {v15}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v14

    check-cast v14, Ljava/security/cert/X509Certificate;

    .line 76
    .local v14, "x509Cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v15

    invoke-virtual {v15}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v13

    .line 77
    .local v13, "subject":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v15

    invoke-virtual {v15}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "issuer":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 80
    .local v9, "publicKeyHashCode":I
    invoke-virtual/range {p0 .. p0}, Lcom/braintreepayments/api/AppSwitch;->getCertificateSubject()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/braintreepayments/api/AppSwitch;->getCertificateIssuer()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/braintreepayments/api/AppSwitch;->getPublicKeyHashCode()I
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    if-ne v15, v9, :cond_1

    const/4 v5, 0x1

    .line 84
    .local v5, "isValidCert":Z
    :goto_2
    goto :goto_0

    .line 63
    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "certStream":Ljava/io/InputStream;
    .end local v4    # "i$":I
    .end local v5    # "isValidCert":Z
    .end local v6    # "issuer":Ljava/lang/String;
    .end local v7    # "len$":I
    .end local v9    # "publicKeyHashCode":I
    .end local v10    # "rawCert":[B
    .end local v11    # "signature":Landroid/content/pm/Signature;
    .end local v12    # "signatures":[Landroid/content/pm/Signature;
    .end local v13    # "subject":Ljava/lang/String;
    .end local v14    # "x509Cert":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v3

    .line 64
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x0

    goto :goto_0

    .line 80
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "arr$":[Landroid/content/pm/Signature;
    .restart local v2    # "certStream":Ljava/io/InputStream;
    .restart local v4    # "i$":I
    .restart local v6    # "issuer":Ljava/lang/String;
    .restart local v7    # "len$":I
    .restart local v9    # "publicKeyHashCode":I
    .restart local v10    # "rawCert":[B
    .restart local v11    # "signature":Landroid/content/pm/Signature;
    .restart local v12    # "signatures":[Landroid/content/pm/Signature;
    .restart local v13    # "subject":Ljava/lang/String;
    .restart local v14    # "x509Cert":Ljava/security/cert/X509Certificate;
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 85
    .end local v2    # "certStream":Ljava/io/InputStream;
    .end local v6    # "issuer":Ljava/lang/String;
    .end local v9    # "publicKeyHashCode":I
    .end local v10    # "rawCert":[B
    .end local v13    # "subject":Ljava/lang/String;
    .end local v14    # "x509Cert":Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v15

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 89
    .end local v11    # "signature":Landroid/content/pm/Signature;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract getAppSwitchActivity()Ljava/lang/String;
.end method

.method protected abstract getCertificateIssuer()Ljava/lang/String;
.end method

.method protected abstract getCertificateSubject()Ljava/lang/String;
.end method

.method protected getLaunchIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/braintreepayments/api/AppSwitch;->getPackage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/braintreepayments/api/AppSwitch;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/braintreepayments/api/AppSwitch;->getAppSwitchActivity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getPackage()Ljava/lang/String;
.end method

.method protected abstract getPublicKeyHashCode()I
.end method

.method protected abstract handleAppSwitchResponse(ILandroid/content/Intent;)Ljava/lang/String;
.end method

.method protected isAvailable()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 39
    iget-object v2, p0, Lcom/braintreepayments/api/AppSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 40
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/braintreepayments/api/AppSwitch;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 42
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/braintreepayments/api/AppSwitch;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/braintreepayments/api/AppSwitch;->isSignatureValid()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method protected launch(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/AppSwitchNotAvailableException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/braintreepayments/api/AppSwitch;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/braintreepayments/api/AppSwitch;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 104
    return-void

    .line 102
    :cond_0
    new-instance v0, Lcom/braintreepayments/api/exceptions/AppSwitchNotAvailableException;

    invoke-direct {v0}, Lcom/braintreepayments/api/exceptions/AppSwitchNotAvailableException;-><init>()V

    throw v0
.end method
