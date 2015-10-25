.class public Lcom/braintreepayments/api/models/PayPalAccountBuilder;
.super Ljava/lang/Object;
.source "PayPalAccountBuilder.java"

# interfaces
.implements Lcom/braintreepayments/api/models/PaymentMethod$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/braintreepayments/api/models/PaymentMethod$Builder",
        "<",
        "Lcom/braintreepayments/api/models/PayPalAccount;",
        ">;"
    }
.end annotation


# instance fields
.field private mAuthorizationCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authorizationCode"
    .end annotation
.end field

.field private mCorrelationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "correlationId"
    .end annotation
.end field

.field private mEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field private mIntegration:Ljava/lang/String;

.field private mPaymentMethodOptions:Lcom/braintreepayments/api/models/PaymentMethodOptions;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "options"
    .end annotation
.end field

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "custom"

    iput-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->mIntegration:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public authorizationCode(Ljava/lang/String;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;
    .locals 0
    .param p1, "authorizationCode"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->mAuthorizationCode:Ljava/lang/String;

    .line 43
    return-object p0
.end method

.method public build()Lcom/braintreepayments/api/models/PayPalAccount;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/braintreepayments/api/models/PayPalAccount;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/PayPalAccount;-><init>()V

    .line 80
    .local v0, "payPalAccount":Lcom/braintreepayments/api/models/PayPalAccount;
    iget-object v1, p0, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->mAuthorizationCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/PayPalAccount;->setConsentCode(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/PayPalAccount;->setCorrelationId(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->mPaymentMethodOptions:Lcom/braintreepayments/api/models/PaymentMethodOptions;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/PayPalAccount;->setOptions(Lcom/braintreepayments/api/models/PaymentMethodOptions;)V

    .line 83
    iget-object v1, p0, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/PayPalAccount;->setSource(Ljava/lang/String;)V

    .line 85
    return-object v0
.end method

.method public bridge synthetic build()Lcom/braintreepayments/api/models/PaymentMethod;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->build()Lcom/braintreepayments/api/models/PayPalAccount;

    move-result-object v0

    return-object v0
.end method

.method public correlationId(Ljava/lang/String;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;
    .locals 0
    .param p1, "correlationId"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->mCorrelationId:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public email(Ljava/lang/String;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->mEmail:Ljava/lang/String;

    .line 33
    return-object p0
.end method

.method public fromJson(Ljava/lang/String;)Lcom/braintreepayments/api/models/PayPalAccount;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p1}, Lcom/braintreepayments/api/models/PayPalAccount;->fromJson(Ljava/lang/String;)Lcom/braintreepayments/api/models/PayPalAccount;

    move-result-object v0

    .line 104
    .local v0, "payPalAccount":Lcom/braintreepayments/api/models/PayPalAccount;
    iget-object v1, p0, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/PayPalAccount;->setEmail(Ljava/lang/String;)V

    .line 106
    return-object v0
.end method

.method public bridge synthetic fromJson(Ljava/lang/String;)Lcom/braintreepayments/api/models/PaymentMethod;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->fromJson(Ljava/lang/String;)Lcom/braintreepayments/api/models/PayPalAccount;

    move-result-object v0

    return-object v0
.end method

.method public getApiPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "paypal_accounts"

    return-object v0
.end method

.method public getApiResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "paypalAccounts"

    return-object v0
.end method

.method public integration(Ljava/lang/String;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;
    .locals 0
    .param p1, "integration"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->mIntegration:Ljava/lang/String;

    .line 68
    return-object p0
.end method

.method public bridge synthetic integration(Ljava/lang/String;)Lcom/braintreepayments/api/models/PaymentMethod$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->integration(Ljava/lang/String;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;

    move-result-object v0

    return-object v0
.end method

.method public source(Ljava/lang/String;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->mSource:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public bridge synthetic source(Ljava/lang/String;)Lcom/braintreepayments/api/models/PaymentMethod$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->source(Ljava/lang/String;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toJson()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "paypalAccount"

    invoke-virtual {p0}, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->build()Lcom/braintreepayments/api/models/PayPalAccount;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "_meta"

    new-instance v2, Lcom/braintreepayments/api/models/Metadata;

    iget-object v3, p0, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->mIntegration:Ljava/lang/String;

    iget-object v4, p0, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->mSource:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/braintreepayments/api/models/Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->toJson()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Z)Lcom/braintreepayments/api/models/PayPalAccountBuilder;
    .locals 1
    .param p1, "validate"    # Z

    .prologue
    .line 60
    new-instance v0, Lcom/braintreepayments/api/models/PaymentMethodOptions;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/PaymentMethodOptions;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->mPaymentMethodOptions:Lcom/braintreepayments/api/models/PaymentMethodOptions;

    .line 61
    iget-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->mPaymentMethodOptions:Lcom/braintreepayments/api/models/PaymentMethodOptions;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/models/PaymentMethodOptions;->setValidate(Z)V

    .line 62
    return-object p0
.end method

.method public bridge synthetic validate(Z)Lcom/braintreepayments/api/models/PaymentMethod$Builder;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->validate(Z)Lcom/braintreepayments/api/models/PayPalAccountBuilder;

    move-result-object v0

    return-object v0
.end method
