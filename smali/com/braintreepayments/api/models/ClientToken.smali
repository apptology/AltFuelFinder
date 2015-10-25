.class public Lcom/braintreepayments/api/models/ClientToken;
.super Ljava/lang/Object;
.source "ClientToken.java"


# static fields
.field private static final BASE_64_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mAuthorizationFingerprint:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authorizationFingerprint"
    .end annotation
.end field

.field private mConfigUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "configUrl"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{4}|[A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/braintreepayments/api/models/ClientToken;->BASE_64_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/braintreepayments/api/models/ClientToken;
    .locals 3
    .param p0, "clientToken"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v1, Lcom/braintreepayments/api/models/ClientToken;->BASE_64_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .end local p0    # "clientToken":Ljava/lang/String;
    .local v0, "clientToken":Ljava/lang/String;
    move-object p0, v0

    .line 32
    .end local v0    # "clientToken":Ljava/lang/String;
    .restart local p0    # "clientToken":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/braintreepayments/api/models/ClientToken;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/braintreepayments/api/models/ClientToken;

    return-object v1
.end method


# virtual methods
.method public getAuthorizationFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/braintreepayments/api/models/ClientToken;->mAuthorizationFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/braintreepayments/api/models/ClientToken;->mConfigUrl:Ljava/lang/String;

    return-object v0
.end method
