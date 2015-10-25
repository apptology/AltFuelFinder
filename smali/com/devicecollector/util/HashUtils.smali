.class public Lcom/devicecollector/util/HashUtils;
.super Ljava/lang/Object;
.source "HashUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToSha256Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "rawString"    # Ljava/lang/String;

    .prologue
    .line 22
    :try_start_0
    const-string v4, "SHA256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 23
    .local v2, "md":Ljava/security/MessageDigest;
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 24
    .local v0, "array":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 25
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 26
    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 32
    .end local v0    # "array":[B
    .end local v1    # "i":I
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    return-object v4

    .line 30
    :catch_0
    move-exception v4

    .line 32
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 29
    :catch_1
    move-exception v4

    goto :goto_2
.end method
